-module(p06).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P06 (*) Find out whether a list is a palindrome.
%% > p06:run([a, b, c, b, a]).
%% true
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: true | false | {error, badarg}.

run([_ | _] = L)  -> L =:= p06_h(L, []);
run(_)            -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P06 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec p06_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p06_h([], Acc)      -> Acc;
p06_h([H | T], Acc) -> p06_h(T, [H | Acc]);
p06_h(_, _)         -> {error, badarg}.
