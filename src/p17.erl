-module(p17).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/2]).

%% -------------------------------------------------------------------
%% @doc
%% P17 (*) Split a list into two parts; the length of the first part is given
%%    Do not use any predefined predicates.
%% > p17:run([a, b, c, d, e, f, g, h, i, k], 3).
%% [[a,b,c],[d,e,f,g,h,i,k]]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list(), N :: integer()) -> Result :: lists:list() | {error, badarg}.

run(L, N) when is_integer(N)  -> p17_h(L, N, [[]]);
run(_, _)                     -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p17
%% @end
%% -------------------------------------------------------------------
-spec p17_h(L :: lists:list(), N :: integer(), Acc :: lists:list()) -> Result :: lists:list().

p17_h([], _, Acc)             -> Acc;
p17_h(L, 0, [AH | AT])        -> p17_h([], 0, [reverse(AH, []) | reverse([L | AT], [])]);
p17_h([H | T], N, [AH | AT])  -> p17_h(T, N - 1, [[H | AH] | AT]).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P17 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
