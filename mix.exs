defmodule SurfaceFormatterPlugin.MixProject do
  use Mix.Project

  @source_url "https://github.com/wingyplus/surface_formatter_plugin"

  def project do
    [
      app: :surface_formatter_plugin,
      version: "0.1.0",
      elixir: "~> 1.13-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "SurfaceFormatterPlugin",
      description: "Surface formatter plugin for mix format",
      source_url: @source_url,
      homepage_url: @source_url,
      docs: [
        main: "SurfaceFormatterPlugin",
        extras: ["README.md"]
      ],
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:surface_formatter, "~> 0.5"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "surface_formatter_plugin",
      files: ~w(lib .formatter.exs mix.exs README* LICENSE* CHANGELOG*),
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
