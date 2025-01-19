import requests

def list_items(base_url: str):
    """Calls GET /items and returns the JSON response, e.g. [{"id": "123", "name": "Some item"}, ...]"""
    resp = requests.get(f"{base_url}/items")
    resp.raise_for_status()
    return resp.json()

def checkout_item(base_url: str, item_id: str, service_run_id: str):
    """Calls POST /items/<item_id>/checkout with a JSON body containing the service_run_id.
       Returns a JSON dict with e.g. {"checkoutId": "<some id>"}"""
    resp = requests.post(f"{base_url}/items/{item_id}/checkout", json={"serviceRunId": service_run_id})
    resp.raise_for_status()
    return resp.json()

def release_item(base_url: str, item_id: str, checkout_id: str):
    """Calls POST /items/<item_id>/release/<checkout_id>, returns some final JSON."""
    resp = requests.post(f"{base_url}/items/{item_id}/release/{checkout_id}")
    resp.raise_for_status()
    return resp.json()