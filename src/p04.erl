-module(p04).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P04 (*) Find the number of elements of a list.
%% > p04:run([a, b, c, d, e]).
%% 5
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: integer() | {error, badarg}.

run(L) -> p04_h(L, 0).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P04
%% @end
%% -------------------------------------------------------------------
-spec p04_h(L :: lists:list(), N :: integer()) -> Result :: integer() | {error, badarg}.

p04_h([], N)      -> N;
p04_h([_ | T], N) -> p04_h(T, N + 1);
p04_h(_, _)       -> {error, badarg}.
