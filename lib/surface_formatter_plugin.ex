defmodule SurfaceFormatterPlugin do
  @moduledoc """
  A surface formatter mix format plugin.
  """

  @behaviour Mix.Tasks.Format

  @impl true
  def features(_opts) do
    [sigils: [:F], extensions: [".sface"]]
  end

  @impl true
  def format(contents, opts) do
    Surface.Formatter.format_string!(contents, opts)
  end
end
