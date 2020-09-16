defmodule HoloApiWeb.Router do
  use HoloApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: HoloApiWeb.Schema

    forward "/", Absinthe.Plug, schema: HoloApiWeb.Schema
  end
end
