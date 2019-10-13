-module(p16).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/2]).

%% -------------------------------------------------------------------
%% @doc
%% P16 (*) Drop every N'th element from a list.
%% > p16:run([a, b, c, d, e, f, g, h, i, k], 3).
%% [a,b,d,e,g,h,k]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list(), N :: integer()) -> Result :: lists:list() | {error, badarg}.

run(L, N) when is_integer(N)  -> reverse(p16_h(L, N, N, []), []);
run(_, _)                     -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p16
%% @end
%% -------------------------------------------------------------------
-spec p16_h(L :: lists:list(), N :: integer(), SN :: integer(), Acc :: lists:list()) -> Result :: lists:list().

p16_h([], _, _, Acc)        -> Acc;
p16_h([_ | T], 1, N, Acc)   -> p16_h(T, N, N, Acc);
p16_h([H | T], N, SN, Acc)  -> p16_h(T, N - 1, SN, [H | Acc]).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P16 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
