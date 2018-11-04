~w(rel plugins *.exs)
|> Path.join()
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
    default_release: :default,
    default_environment: :grisp

environment :grisp do
  set include_erts: true
  set include_src: false
  set cookie: :"GRiSP"
  #set vm_args: "rel/vm.args"
end

release :grisp_wifi_connect do
  set version: current_version(:grisp_wifi_connect)
end
