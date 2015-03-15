Basic Concurrency Primitives (Asynchronous)
===

spawn a process with spawn
send a message to a process (or named server) with !
receive a message with receive

able to do synchronous style by passing process id of sender akin to a remote procedure call

Linked Processes
===

Can link processes together so as to monitor a process. If a process dies, it send an EXIT signal to its linked twin. The monitoring process must set register the process as one that traps exits. The monitor can then respawn the dead process.

Open Telecom Platform
===
open source application server to run and monitor erlang applications

Strengths
===

Dynamic and Reliable - built for reliability; linking processing to monitor and respawn
Lightweight processes, encapsulation, immutability - avoid conflicting with one another. Truly OO message passing
OTP - 20 years of huge enterprise-standard libraries. fault-tolerance, scalability, transactional integrity, hot-swapping of code all built in
Let it crash - not worried why individual processes crash, because can have another process restart them

Weaknesses
===
syntax - obscure prolog syntax: elixir?
integration - talks about it not being JVM (erjang, possible solution)
