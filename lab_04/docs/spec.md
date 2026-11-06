# Order Summary Screen Mini-Spec
**Inputs**: `orderTotal` variable, Item Name, Quantity.
**Output**: A screen displaying the checkout breakdown.
**Rules**: Total must display specifically as "RM 25.00". Must include a Back button.
**Out of scope**: Live cart editing or payment gateway processing.
**Check**: Widget tests must pass and specifically verify the "RM 25.00" text.