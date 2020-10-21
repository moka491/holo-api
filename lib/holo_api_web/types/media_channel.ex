defmodule HoloApiWeb.Schema.MediaChannelType do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.MediaChannelResolver

  object :media_channel do
    field :name, :string
    field :channel_id, :string
    field :channel_url, :string
    field :thumbnail_url, :string

    field :member, :member
    field :media_platform, :media_platform
  end

  object :media_channel_queries do
    @desc "Get all media channels"
    field :media_channels, list_of(:media_channel) do
      resolve(&MediaChannelResolver.list_media_channels/3)
    end

    @desc "Get a single media channel by ID"
    field :media_channel, :media_channel do
      arg :id, non_null(:id)
      resolve(&MediaChannelResolver.find_media_channel/3)
    end
  end
end
