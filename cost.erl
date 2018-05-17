-module(cost).
-export([main/2]).

%% メイン関数
main(A,S) ->
  Top=power(A,S),
  Second=factorial(S),
  Fhalf=Top / Second,
  Shalf=sigma(A,S),
  Fhalf / Shalf.

%% 分母の計算
sigma(A,0) ->
  0;

sigma(A,S) ->
  T=power(A,S),
  F=factorial(S),
  (T / F) + sigma(A,S - 1).

%% 階乗計算
factorial(0) ->
  1;

factorial(N) ->
  N * factorial(N - 1).

%% 累乗計算
power(N,M) ->
  math:pow(N,M).
