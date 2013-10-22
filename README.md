cowboy_fun
==========

Adds ability to use funs in cowboy middleware

Usage
-----

```erlang
%% my_app.erl
{ok, _} = cowboy:start_http(http, 100, [{port, 8080}], [
  {env, [...]},
  {middlewares, [
    {cowboy_fun, my_middleware:init(<<"Cameron">>)}
  ]}
]).
```

```erlang
-module(my_middlware).

-export([init/1]).

init(Name) ->
  fun(Req, Env) ->
    %% This will be executed for every request
    io:format("~p says hi~n", [Name]),
    {ok, Req, Env}
  end
```
