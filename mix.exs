defmodule GrispWifiConnect.MixProject do
  use Mix.Project

  def project do
    [
      app: :grisp_wifi_connect,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      grisp: [
        otp: [verson: "21.0"],
        deploy: [
          destination: "/media/theuns/GRISP"
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:grisp, :iex, :logger],
      mod: {GrispWifiConnect.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:grisp, "~> 1.1"},
      {:mix_grisp, "~> 0.1.0", only: :dev},
      {:epmd, git: "https://github.com/erlang/epmd.git", ref: "4d1a59", app: false}
    ]
  end
end
