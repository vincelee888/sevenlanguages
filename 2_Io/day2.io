// Day 2
// ===

// Conditionals and Loops
// ---

loop("forever and ever..." println) // infinite loop

index := 1
while(index <= 11, i println, i = i + 1); "This one goes up to 11" println // semicolon concatenates 2 distinct messages

for(index, 1, 11, index println); "This one also goes up to 11" println 
for(index, 1, 11, 2, index println); "Odds up to 11" println // optional increment argument. can tag on extra arguments, but be wary of optional arguments

if(true, "It is true", "It is false") // It is true
if(false) then("It is true") else("falsey") // nil
if(false) then("truthy" println) else("falsey" println) // falsey

// Operators
// ---

OperatorTable // view standard operators. left number is precedence 0 is highest

OperatorTable addOperator("xor", 11) // (name, precedence) true if only one operand is true
true xor := method(bool, if(bool, false, true))
false xor := method(bool, if(bool, true, false))

// messages
// ---

// almost everything is a message
// message reflection - can query any characteristic of a message and act appropriately
// 3 components - sender, target, arguments
// call method gives access to meta information about any message
postOffice := Object clone
postOffice packageSender := method(call sender)

// most languages pass arguments as values on stacks. Io passes the message itself and its context, then the receiver evaluates the message.

unless := method(
	call(sender doMessage(call message argAt(0))) ifFalse( 				
		call sender doMessage(call message argAt(1))) ifTrue( 			
		call sender doMessage(call message argAt(2)))
)

unless(1 == 2, write("One is not two"), write("one is two")) // one is not two

// doMessage lower level Ruby eval - whereas eval evaluates a string to Ruby
// doMessage executes an arbitrary message. Interprets but delays binding and execution
// regular OO languages evaluate computes all arguments and puts them on the stack,
// Io takes message and its context(sender, target and arguments) and puts it together 
// on the stack. It evaluates each part as it goes.

// reflection
// ---

Obhect ancestors // method that shows all the slots on an object, then calls ancestors on its prototype, walking its way up the chain