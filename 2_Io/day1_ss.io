// Style Guide: http://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide
// Example problems: https://gist.github.com/jezen/7972975

// strongly typed; 1 + "one" throws an error 
// 0 true
// "" true
// nil false
Car := Object clone
Car proto slotNames // get prototypes slotNames
// := assign new slot
// : re-assign existing slot
// ::= assigns new slot and creates setter eg:
Car seats ::= 4
Car setSeats(5) // sets seats slot to 5, and returns Car

Car drive := method("Vroooom" print)
Car callByString := method(name, perform(name))

Car callByString("drive")