-module(p02).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P02 (*) Find the last but one box of a list.
%% > p02:run([a, b, c, d]).
%% [c, d]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run([_ ,_ | []] = L) -> L;
run([_ | T]) -> run(T);
run(_) -> {error, badarg}.
