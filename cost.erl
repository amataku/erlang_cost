-module(cost).
-export([main/1]).

main(Arg) ->
  factorial(Arg).

factorial(0) ->
  1;
  
factorial(N) ->
  N * factorial(N - 1).
