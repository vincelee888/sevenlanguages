-module(wooboo).
-export([getOutput/1]).

getOutput(success) -> "Success".
getOutput({Error, Message}) -> Error ++ " " ++ Message.