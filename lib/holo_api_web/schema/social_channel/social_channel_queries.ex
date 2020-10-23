defmodule HoloApiWeb.Schema.SocialChannel.Queries do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.SocialChannelResolver

  object :social_channel_queries do
    @desc """
    Get a list of all social channels
    """
    field :social_channels, list_of(:social_channel) do
      resolve(&SocialChannelResolver.list_social_channels/3)
    end

    @desc """
    Get a single social channel by ID
    """
    field :social_channel, :social_channel do
      arg(:id, non_null(:id))
      resolve(&SocialChannelResolver.find_social_channel/3)
    end
  end
end
