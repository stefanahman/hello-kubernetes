-module(hello_kubernetes_cowboy).

-export([start/0]).

start() ->
  Routes = [ {'_', [
                  {"/hello", hello_kubernetes_cowboy_handler, []}
                  ]}],
  Dispatch = cowboy_router:compile(Routes),

  NumAcceptors = 10,
  TransOpts = [ {ip, {0,0,0,0}}, {port, 8080} ],
  ProtoOpts = [{env, [{dispatch, Dispatch}]}],

  {ok, _} = cowboy:start_http(hello_kubernetes_listener,
                              NumAcceptors,
                              TransOpts,
                              ProtoOpts).
