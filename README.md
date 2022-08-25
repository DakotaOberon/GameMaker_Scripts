<h1 align="center"><img src="https://raw.githubusercontent.com/DakotaOberon/GameMaker_Scripts/main/Title.png" alt="Game Maker Scripts"></h1>

<p align="center">A collection of useful scripts for GameMaker</p>

---
*This repository primarily contains scripts I created while developing different GameMaker projects and thought they may be useful to more developers.*

*If there is a script in here that you believe has a proper source, such as the 'approach' script, please let me know so I can add proper credit.*

---
# How To Add Scripts to Existing Project
Either copy-paste the code directly into your project

or **Drag the .yymps file into your IDE**

---
# Script Descriptions
## Arrays
#### Array concat
Adds all items from the source array into the destination array

`Example`
```
primary_list = ["Xor", "Juju", "Yoyo"];
new_list = ["OperaGX"];

array_concat(primary_list, new_list);
```
This will add the string "OperaGX" to the end of the primary_list array
`["Xor", "Juju", "Yoyo", "OperaGX"]`

---
#### Array every
Runs a function for each item in an array and returns true if every item passes

`Example`
```
list_of_names = ["Xor", "Juju", "Yoyo", "OperaGX"];

if (array_every(list_of_names, function(_val) { return (string_length(_val) <= 4) })) {
  show_debug_message("There's a lot of short names in the GameMaker community");
}
```
This will show a debug message if every string in the list is 4 or less characters
