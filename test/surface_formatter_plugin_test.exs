defmodule SurfaceFormatterPluginTest do
  use ExUnit.Case

  test "format/2 - format ~F" do
    in_tmp(fn ->
      File.write!(".formatter.exs", """
      [
        inputs: ["a.ex"],
        plugins: [SurfaceFormatterPlugin],
      ]
      """)

      File.write!("a.ex", """
      defmodule A do
        use Surface.Component

        def render(assigns) do
          ~F"<div>\n  </div>"
        end
      end
      """)

      Mix.Tasks.Format.run([])

      assert File.read!("a.ex") == """
             defmodule A do
               use Surface.Component

               def render(assigns) do
                 ~F"<div>\n</div>\n"
               end
             end
             """
    end)
  end

  test "format/2 - format .sface file extension" do
    in_tmp(fn ->
      File.write!(".formatter.exs", """
      [
        inputs: ["a.sface"],
        plugins: [SurfaceFormatterPlugin],
      ]
      """)

      File.write!("a.sface", """
      <div>
        </div>
      """)

      Mix.Tasks.Format.run([])

      assert File.read!("a.sface") == """
             <div>
             </div>
             """
    end)
  end

  defp in_tmp(fun) do
    dir = "./test_tmp"
    File.rm_rf!(dir)
    File.mkdir!(dir)
    File.cd!(dir, fun)
    File.rm_rf!(dir)
  end
end
