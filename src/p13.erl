-module(p13).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P13 (*) Run-length encoding of a list (direct solution).
%%    Implement the so-called run-length encoding data compression method directly.
%%    I.e. don't explicitly create the sublists containing the duplicates, as in problem P09, but only count them.
%%    As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.
%% > p13:run([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).
%% [a,a,a,a,b,c,c,a,a,d,e,e,e,e]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> reverse(p13_h(L, []), []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p13
%% @end
%% -------------------------------------------------------------------
-spec p13_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p13_h([], Acc)            -> Acc;
p13_h([{1, H} | T], Acc)  -> p13_h(T, [H | Acc]);
p13_h([{N, H} | T], Acc)  -> p13_h([{N - 1, H} | T], [H | Acc]);
p13_h(_, _)               -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P13 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
