import pytest
from pact import Consumer, Provider, Like, Format
import json
from consumer import list_items, checkout_item, release_item

PACT_DIR = "./pacts"

@pytest.fixture(scope="session")
def pact():
    """
    Sets up a Pact Consumer instance with a local mock service.
    """
    consumer = Consumer("PythonComplexConsumer")
    provider = Provider("PythonComplexProvider")

    pact = consumer.has_pact_with(
        provider,
        pact_dir=PACT_DIR,
        # version="2.0.0"  # or "3.0.0" depending on your Pact spec version
    )

    # Start the mock server
    pact.start_service()
    yield pact
    pact.stop_service()

def test_list_items(pact):
    """
    Interaction 1: GET /items
    """
    (pact
     .given("There are some items in the provider")
     .upon_receiving("a request to list items")
     .with_request("GET", "/items")
     .will_respond_with(
         200,
         body=[
             {   # Each item in the list is an object with an 'id' and 'name'
                 "id": Like("item-1234"),
                 "name": Like("Widget A")
             }
         ]
     ))

    with pact:
        items = list_items(pact.uri)
        assert len(items) == 1
        item = items[0]
        assert "id" in item
        assert "name" in item

def test_checkout_item(pact):
    """
    Interaction 2: POST /items/<id>/checkout
    Pass 'serviceRunId' in the JSON body, returns { "checkoutId": "<someId>" }
    """
    item_id = "item-1234"     # Hard-coded for the test. 
    service_run_id = "run-9999"
    
    # Use a path that includes the item_id. The consumer expects a 200 with a checkoutId
    (pact
     .given(f"Item {item_id} is available to checkout")
     .upon_receiving(f"a request to checkout item {item_id}")
     .with_request(
         "POST",
         f"/items/{item_id}/checkout",
         body={"serviceRunId": service_run_id}
     )
     .will_respond_with(
         200,
         body={
             "checkoutId": Like("checkout-5678")
         }
     ))

    with pact:
        result = checkout_item(pact.uri, item_id, service_run_id)
        assert "checkoutId" in result

def test_release_item(pact):
    """
    Interaction 3: POST /items/<id>/release/<checkoutId>
    Returns some final JSON, e.g. { "status": "released" }
    """
    item_id = "item-1234"
    checkout_id = "checkout-5678"

    (pact
     .given(f"Item {item_id} is currently checked out with id {checkout_id}")
     .upon_receiving("a request to release an item with a given checkout ID")
     .with_request(
         "POST",
         f"/items/{item_id}/release/{checkout_id}",
     )
     .will_respond_with(
         200,
         body={
             "status": "released"
         }
     ))

    with pact:
        release_item(pact.uri, item_id, checkout_id)