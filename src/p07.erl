-module(p07).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P07 (**) Flatten a nested list structure.
%% > p07:run([[[a]], b, c, [d, [[e]]]]).
%% [a, b, c, d, e]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: true | false | {error, badarg}.

run([_ | _] = L)  -> reverse(p07_h(L, []), []);
run(_)            -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P07
%% @end
%% -------------------------------------------------------------------
-spec p07_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p07_h([], Acc) -> Acc;
p07_h([[_ | _] = H | T], Acc) -> p07_h(T, p07_h(H, Acc));
p07_h([[] | T], Acc) -> p07_h(T, Acc);
p07_h([H | T], Acc) -> p07_h(T, [H | Acc]);
p07_h(_, _) -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P07 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
