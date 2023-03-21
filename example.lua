You can no longer use QBCore:Server:AddItem
You must create YOUR OWN event for EACH RESOURCE that you wish to add and remove items from

The easiest way to do this is:
Go to the server.lua OR main.lua (in the server folder)
Create an Event Like So:
RegisterNetEvent('EventNameHere', function(itemVar, amountVar)
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  -- Use our variable we just created (Player)
  -- We use itemVariable and amountVariable as place holders, but they can be whatever you like
  Player.Functions.AddItem(itemVar, amountVar)
  -- This is the line of code to add items ^
  -- We are accepting any and all items that are passed
end

Then Go to ALL instances of "QBCore:Server:AddItem: INSIDE THE RESOURCE YOU'VE CREATED THE EVENT and

Replace:
"QBCore:Server:AddItem"

With:
"EventNameHere" -- The Event Name You Created.
-- You DO NOT need to change anything else, ONLY THE NAME.

Example:
TriggerServerEvent("QBCore:Server:AddItem", "lockpick", 3)
-- Here Is An EXAMPLE Of What It Will Look Like
TriggerServerEvent("EventNameHere", "lockpick", 3)

This is the very very basic bare bones method. 
