defmodule Request.MixProject do
  use Mix.Project

  def project do
    [
      app: :request,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Request, []}
    ]
  end

  defp deps do
    [
      {:poison, "~> 5.0"},
      {:httpoison, "~> 1.8"}
    ]
  end
end
