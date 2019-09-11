-module(p01).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P01 (*) Find the last box of a list.
%% > p01:run([a, b, c, d]).
%% d
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: any() | {error, badarg}.

run([H | []]) -> H;
run([_ | T])  -> run(T);
run(_)        -> {error, badarg}.
