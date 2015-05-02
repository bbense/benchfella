Mix.start()
Mix.shell(Mix.Shell.Process)

defmodule Mix.Tasks.BenchfellaTest do
  use ExUnit.Case, async: false

  def run(args) do
    Mix.Tasks.Bench.run(args)
  end
  
  # Benchfella fails in Benchfella.start with more than one run per mix invocation.
  test ":bench runs" do
   assert [BasicBench] == run(["bench/basic_bench.exs","-o","test/snapshot"])
  end

end
