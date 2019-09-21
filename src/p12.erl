-module(p12).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P12 (*) Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.
%% > p12:run([{4, a}, b, {2, c}, {2, a}, d, {4, e}]).
%% [a,a,a,a,b,c,c,a,a,d,e,e,e,e]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> reverse(p12_h(L, []), []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p12
%% @end
%% -------------------------------------------------------------------
-spec p12_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p12_h([], Acc)            -> Acc;
p12_h([{1, H} | T], Acc)  -> p12_h(T, [H | Acc]);
p12_h([{N, H} | T], Acc)  -> p12_h([{N - 1, H} | T], [H | Acc]);
p12_h([H | T], Acc)       -> p12_h(T, [H | Acc]);
p12_h(_, _)               -> {error, badarg}.

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
