defmodule SamplePhoenix.Schema do
  use Absinthe.Schema

  import_types SamplePhoenix.Schema.Types

  query do
    field :posts, list_of(:post) do
      resolve &SamplePhoenix.Resolver.Post.all/2
    end
  end
end
