defmodule HoloApiWeb.Schema.LivestreamType do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.LivestreamResolver

  object :livestream do
    field :title, :string
    field :stream_url, :string
    field :thumbnail_url, :string
    field :status, :string
    field :start_date, :datetime
    field :end_date, :datetime

    field :member, :member
    field :media_channel, :media_channel
  end

  object :livestream_queries do
    @desc "Get all livestreams"
    field :livestreams, list_of(:livestream) do
      resolve(&LivestreamResolver.list_livestreams/3)
    end

    @desc "Get a single livestream by ID"
    field :livestream, :livestream do
      arg :id, non_null(:id)
      resolve(&LivestreamResolver.find_livestream/3)
    end
  end
end
