-module(p10).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P10 (*) Run-length encoding of a list.
%%    Use the result of problem P09 to implement the so-called run-length encoding data compression method.
%%    Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
%% > p10:run([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%% [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> reverse(p10_h(L, []), []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P10
%% @end
%% -------------------------------------------------------------------
-spec p10_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p10_h([], Acc)                          -> Acc;
p10_h([H | [H | _] = T], [{N, H} | AT]) -> p10_h(T, [{N + 1, H} | AT]);
p10_h([H | T], [{N, H} | AT])           -> p10_h(T, [{N + 1, H} | AT]);
p10_h([H | T], Acc)                     -> p10_h(T, [{1, H} | Acc]);
p10_h(_, _)                             -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P10 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
