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

---
#### array_concat(_destination_array, _source_array)
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
#### array_every(_array, _function)
Runs a function for each item in an array and returns true if every item passes

`Example`
```
list_of_names = ["Xor", "Juju", "Yoyo", "OperaGX"];

if (array_every(list_of_names, function(_val) { return (string_length(_val) <= 4) })) {
  show_debug_message("There's a lot of short names in the GameMaker community");
}
```
This will show a debug message if every string in the list is 4 or less characters

---
#### array_fill(_array, _start_index, _end_index, _value)
Fill each index of an array between start and end index (non-inclusive) with a value

`Example`
```
list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

array_fill(list, 3, 8, -1);
```
This will replace all values between index 3 and 8 with -1

`list` array will equal `[0, 1, 2, -1, -1, -1, -1, -1, 8, 9]`

---

#### array_filter(_array, _function)
Get a new array of values that fit the given filter function

`Example`
```
list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

new_list = array_filter(list, function(_val) { return _val > 3 });
```
This will take a list and filter out the values greater than 3
`new_list` will equal `[4, 5, 6, 7, 8, 9]`

---
