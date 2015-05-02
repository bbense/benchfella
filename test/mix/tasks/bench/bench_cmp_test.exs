Mix.start()
Mix.shell(Mix.Shell.Process)

defmodule Mix.Tasks.Benchfella.CMP.Test do
  use ExUnit.Case, async: false
  import ExUnit.CaptureIO

  def run(args) do
    Mix.Tasks.Bench.Cmp.run(args)
  end

 
  test ":bench.cmp runs" do
    results = capture_io( fn -> run(["test/snapshot/snapshot.1", "test/snapshot/snapshot.2"]) end )
    IO.write results
  end

end
