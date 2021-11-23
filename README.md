# SurfaceFormatterPlugin

**ARCHIVED**: `surface_formatter` now support formatter plugin in version 0.7.0. See [here](https://github.com/surface-ui/surface_formatter/commit/4d6d2eb09d27ff82d87cae5dc3b4167a188aaa7e) for more details.

A surface formatter plugin for `mix format`

## NOTE

This plugin rely on [formatter plugin](https://github.com/elixir-lang/elixir/pull/11246) feature which will be release on incoming 1.13. If you want to use it, you need to compile the
Elixir compiler itself before using it.

## Installation

The package can be installed by adding `surface_formatter_plugin`
to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:surface_formatter_plugin, "~> 0.1.0"}
  ]
end
```
