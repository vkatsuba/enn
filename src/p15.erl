-module(p15).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/2]).

%% -------------------------------------------------------------------
%% @doc
%% P15 (*) Replicate the elements of a list a given number of times.
%% > p15:run([a, b, c, d, e], 3).
%% [a,a,a,b,b,b,c,c,c,d,d,d,e,e,e]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list(), N :: integer()) -> Result :: lists:list() | {error, badarg}.

run(L, N) when is_integer(N)  -> reverse(p15_h(L, N, N, []), []);
run(_, _)                     -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p15
%% @end
%% -------------------------------------------------------------------
-spec p15_h(L :: lists:list(), N :: integer(), SN :: integer(), Acc :: lists:list()) -> Result :: lists:list().

p15_h([], _, _, Acc)            -> Acc;
p15_h([_ | T], 0, N, Acc)       -> p15_h(T, N, N, Acc);
p15_h([H | _ ] = L, N, SN, Acc) -> p15_h(L, N - 1, SN, [H | Acc]).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P15 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
