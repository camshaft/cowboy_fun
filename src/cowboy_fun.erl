-module(cowboy_fun).

-export([execute/3]).

execute(Req, Env, {?MODULE, Fun}) ->
  Fun(Req, Env).

