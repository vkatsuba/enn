-module(p18).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/3]).


%% -------------------------------------------------------------------
%% @doc
%% P18 (*) Extract a slice from a list
%%    Given two indices, I and K, the slice is the list containing the elements between the I'th and K'th element of the original list (both limits included).
%%    Start counting the elements with 1.
%% > p18:run([a, b, c, d, e, f, g, h, i, k], 3, 7).
%% [c,d,e,f,g]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list(), Start :: integer(), End :: integer()) -> Result :: lists:list() | {error, badarg}.

run(L, S, E) when 0 =< S, 0 =< S -> reverse(p18_h(L, S, E, []), []);
run(_, _, _)                     -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of p18
%% @end
%% -------------------------------------------------------------------
-spec p18_h(L :: lists:list(), Start :: integer(), End :: integer(), Acc :: lists:list()) -> Result :: lists:list().

p18_h([], 0, _, _)      -> [];
p18_h(_, 0, 0, Acc)     -> Acc;
p18_h([H|T], 0, E, Acc) -> p18_h(T, 0, E - 1, [H | Acc]);
p18_h([H|T], 1, E, Acc) -> p18_h(T, 0, E - 1, [H | Acc]);
p18_h([_|T], S, E, Acc) -> p18_h(T, S - 1, E - 1, Acc).

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
