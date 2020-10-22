defmodule HoloApiWeb.Schema.Livestream.Queries do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.LivestreamResolver

  object :livestream_queries do
    @desc "Get all livestreams"
    field :livestreams, list_of(:livestream) do
      resolve(&LivestreamResolver.list_livestreams/3)
    end

    @desc "Get a single livestream by ID"
    field :livestream, :livestream do
      arg(:id, non_null(:id))
      resolve(&LivestreamResolver.find_livestream/3)
    end
  end
end
