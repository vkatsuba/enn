-module(p03).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/2]).

%% -------------------------------------------------------------------
%% @doc
%% P03 (*) Find the K'th element of a list.
%% > p03:run([a, b, c, d, e], 3).
%% c
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list(), N :: integer()) -> Result :: any() | {error, badarg}.

run([H | _], 1) -> H;
run([_ | T], N) -> run(T, N - 1);
run(_, _)       -> {error, badarg}.
