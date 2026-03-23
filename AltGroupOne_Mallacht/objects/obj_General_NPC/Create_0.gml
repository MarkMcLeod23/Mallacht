/// @description Sets all the macros and skins for the NPC.
// You can write your code in this editor
#region Macros for skins
#macro npc_Flat 0 //This is a non-animated skin for when the NPC is still
#macro npc_Down 1 //This and all the below ones are animated for when they move.
#macro npc_Up 2
#macro npc_Left 3
#macro npc_Right 4
#endregion
#region Setting Skins
sprite[npc_Flat] = flat_Sprite
sprite[npc_Down] = down_Sprite
sprite[npc_Up] = up_Sprite
sprite[npc_Left] = left_Sprite
sprite[npc_Right] = right_Sprite
#endregion
#region Inventory
inventory = []
#endregion