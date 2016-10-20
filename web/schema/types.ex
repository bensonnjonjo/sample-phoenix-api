defmodule SamplePhoenix.Schema.Types do
  use Absinthe.Schema.Notation

  @desc "A post in the sample application"
  object :post do
    field :title, :string
    field :body, :string
  end
end

