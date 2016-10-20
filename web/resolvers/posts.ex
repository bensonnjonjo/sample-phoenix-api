defmodule SamplePhoenix.Resolver.Post do
  @fakedb  [
     %{title: "test", body: "test body"},
     %{title: "test 2", body: "test body 2"},
     %{title: "test 3", body: "test body 3"}
  ]

  def all(_args, _info) do
    {:ok, @fakedb}
  end 
  
end
