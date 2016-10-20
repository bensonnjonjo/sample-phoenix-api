defmodule SamplePhoenix.Router do
  use Phoenix.Router

  pipeline :graphql do
    plug SamplePhoenix.Context
  end

  scope "/api" do
    pipe_through :graphql

    forward "/", Absinthe.Plug, schema: SamplePhoenix.Schema
  end
end
