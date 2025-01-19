# provider.py
from fastapi import FastAPI, Body

app = FastAPI()

ITEMS = [
    # {"id": "item-5678", "name": "Widget B"},
    {"id": "item-1234", "name": "Widget A"},
]

@app.get("/items")
def list_items():
    return [i for i in ITEMS]

@app.post("/items/{item_id}/checkout")
def checkout_item(item_id: str, data: str = Body(...)):
    # data might be { "serviceRunId": "run-9999" }
    # pretend we do some logic to set "checked_out" to True
    return {"checkoutId": "checkout-5678"}
    # return {"error": "Item not found"}, 404

@app.post("/items/{item_id}/release/{checkout_id}")
def release_item(item_id: str, checkout_id: str):
    # pretend we verify item is checked_out, release it, etc.
    for i in ITEMS:
        if i["id"] == item_id:
            return {
                "status": "released"
            }
    return {"error": "Item not found"}, 404