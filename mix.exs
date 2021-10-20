defmodule SurfaceFormatterPlugin.MixProject do
  use Mix.Project

  def project do
    [
      app: :surface_formatter_plugin,
      version: "0.1.0",
      elixir: "~> 1.13-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "SurfaceFormatterPlugin",
      source_url: "https://github.com/wingyplus/surface_formatter_plugin",
      homepage_url: "https://github.com/wingyplus/surface_formatter_plugin",
      docs: [
        main: "SurfaceFormatterPlugin",
        extras: ["README.md"]
      ]
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
end
