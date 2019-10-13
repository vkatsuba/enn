-module(p19).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/2]).

%% -------------------------------------------------------------------
%% @doc
%% P19 (*) Rotate a list N places to the left.
%% > p19:run([a, b, c, d, e, f, g, h], 3).
%% [d, e, f, g, h, a, b, c]
%% > p19:run([a, b, c, d, e, f, g, h], -2).
%% [g, h, a, b, c, d, e, f]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list(), N :: integer()) -> Result :: lists:list() | {error, badarg}.

run(L, N) when is_integer(N), 0 =< N  -> reverse(p19_h(L, N, [], l), []);
run(L, N) when is_integer(N), 0 >= N  -> reverse(p19_h(reverse(L, []), N, [], r), []);
run(_, _)                             -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p19
%% @end
%% -------------------------------------------------------------------
-spec p19_h(L :: lists:list(), N :: integer(), Acc :: lists:list(), Side :: atom()) -> Result :: lists:list().

p19_h([], _, _, _)        -> [];
p19_h(L, 0, Acc, l)       -> Acc ++ reverse(L, []);
p19_h(L, 0, Acc, r)       -> L ++ reverse(Acc, []);
p19_h([H | T], N, Acc, l) -> p19_h(T, N - 1, [H | Acc], l);
p19_h([H | T], N, Acc, r) -> p19_h(T, N + 1, [H | Acc], r).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P19 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
