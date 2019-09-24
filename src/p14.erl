-module(p14).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P14 (*) Duplicate the elements of a list.
%% > p14:run([a, b, c, d, e]).
%% [a,a,b,b,c,c,d,d,e,e]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> reverse(p14_h(L, []), []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p14
%% @end
%% -------------------------------------------------------------------
-spec p14_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p14_h([], Acc)      -> Acc;
p14_h([H | T], Acc) -> p14_h(T, [H, H | Acc]);
p14_h(_, _)         -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P14 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
