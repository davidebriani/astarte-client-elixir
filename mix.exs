defmodule Astarte.Client.MixProject do
  use Mix.Project

  def project do
    [
      app: :astarte_client,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Astarte.Client.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:finch, "~> 0.9"},
      {:jason, "~> 1.0"},
      {:joken, "~> 2.4"},
      {:x509, "~> 0.8"},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end
end
