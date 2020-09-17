defmodule HoloApiWeb.Schema.MediaChannelType do
  use Absinthe.Schema.Notation

  object :media_channel do
    field :name, :string
    field :channel_url, :string
    field :member, :member
    field :media_platform, :media_platform
  end

  object :media_channel_queries do
    @desc "Get all media channels, optionally filtered"
    field :media_channels, list_of(:media_channel) do
    end

    @desc "Get a single media channel by ID"
    field :media_channel, :media_channel do
    end
  end
end
