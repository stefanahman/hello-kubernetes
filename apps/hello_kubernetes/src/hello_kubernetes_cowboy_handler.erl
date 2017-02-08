-module(hello_kubernetes_cowboy_handler).

-export([init/2]).

init(Req, Opts) ->
    Req2 = cowboy_req:reply(200,
        [{<<"content-type">>, <<"text/plain">>}],
         <<"Hello Kubernetes!">>,
        Req),
    {ok, Req2, Opts}.
