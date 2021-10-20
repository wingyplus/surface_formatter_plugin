defmodule SurfaceFormatterPlugin do
  @moduledoc """
  A surface formatter for mix format plugin.

  ## Usage

  Add `SurfaceFormatterPlugin` to the `:plugins` in `.formatter.exs`:

  ```
  [
    plugins: [SurfaceFormatterPlugin]
    # ...
  ]
  ```

  And then when you run `mix format`, it'll format surface both `~F` and
  `.sface` file automatically.
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
