-module(p20).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/2]).

%% -------------------------------------------------------------------
%% @doc
%% P20 (*) Remove the K'th element from a list.
%% > p20:run([a, b, c, d], 2).
%% [a,c,d]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list(), N :: integer()) -> Result :: lists:list() | {error, badarg}.

run(L, N) when is_integer(N)  -> reverse(p20_h(L, 1, N, []), []);
run(_, _)                     -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p20
%% @end
%% -------------------------------------------------------------------
-spec p20_h(L :: lists:list(), I :: integer(), N :: integer(), Acc :: lists:list()) -> Result :: lists:list().

p20_h([], _, _,Acc)     -> Acc;
p20_h([H|T], 0, N, Acc) -> p20_h(T, 0, N, [H|Acc]);
p20_h([_|T], N, N, Acc) -> p20_h(T, 0, N, Acc);
p20_h([H|T], I, N, Acc) -> p20_h(T, I + 1, N, [H|Acc]).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p20 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
