-module(p08).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P08 (**) Eliminate consecutive duplicates of list elements.
%% > p08:run([a, a, a, b, b, b, b, c, d, d, d, d, e, e, e]).
%% [a, b, c, d, e]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> reverse(p08_h(L, []), []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P08
%% @end
%% -------------------------------------------------------------------
-spec p08_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p08_h([], Acc)                -> Acc;
p08_h([H | [H | _] = T], Acc) -> p08_h(T, Acc);
p08_h([H | T], Acc)           -> p08_h(T, [H | Acc]);
p08_h(_, _)                   -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P08 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
