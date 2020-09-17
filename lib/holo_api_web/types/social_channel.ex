defmodule HoloApiWeb.Schema.SocialChannelType do
  use Absinthe.Schema.Notation

  object :social_channel do
    field :name, :string
    field :channel_url, :string
    field :member, :member
    field :social_platform, :social_platform
  end

  object :social_channel_queries do
    @desc "Get all media channels, optionally filtered"
    field :social_channels, list_of(:social_channel) do
    end

    @desc "Get a single media channel by ID"
    field :social_channel, :social_channel do
    end
  end
end
