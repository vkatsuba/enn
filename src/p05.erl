-module(p05).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P05 (*) Reverse a list.
%% > p05:run([a, b, c, d, e]).
%% [e, d, c, b, a]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> p05_h(L, []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P05
%% @end
%% -------------------------------------------------------------------
-spec p05_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p05_h([], Acc)      -> Acc;
p05_h([H | T], Acc) -> p05_h(T, [H | Acc]);
p05_h(_, _)         -> {error, badarg}.
