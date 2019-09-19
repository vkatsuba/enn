-module(p11).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P11 (*) Modified run-length encoding.
%%    Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
%% > p11:run([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%% [{4, a}, b, {2, c}, {2, a}, d, {4, e}]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> reverse(p11_h(L, []), []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P11
%% @end
%% -------------------------------------------------------------------
-spec p11_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p11_h([], Acc)                -> Acc;
p11_h([H | T], [{N, H} | AT]) -> p11_h(T, [{N + 1, H}| AT]);
p11_h([H, H | T], Acc)        -> p11_h(T, [{2, H} | Acc]);
p11_h([H| T], Acc)            -> p11_h(T, [H | Acc]);
p11_h(_, _)                   -> {error, badarg}.

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
