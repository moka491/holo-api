defmodule HoloApiWeb.Schema.MediaChannel.Queries do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.MediaChannelResolver

  object :media_channel_queries do
    @desc """
    Get a list of all media channels
    """
    field :media_channels, list_of(:media_channel) do
      resolve(&MediaChannelResolver.list_media_channels/3)
    end

    @desc """
    Get a single media channel by ID
    """
    field :media_channel, :media_channel do
      arg(:id, non_null(:id))
      resolve(&MediaChannelResolver.find_media_channel/3)
    end
  end
end
