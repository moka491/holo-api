defmodule HoloApiWeb.Schema.MediaChannel.Types do
  use Absinthe.Schema.Notation
  import Absinthe.Resolution.Helpers, only: [dataloader: 1]

  @desc """
  A media channel defines a channel or profile on a media platform.
  """
  object :media_channel do
    @desc """
    The unique ID of the channel entry.
    """
    field :id, :id

    @desc """
    The name of the channel.
    """
    field :name, :string

    @desc """
    The ID or hash that identifies the channel on the media platform.
    This can usually be found in the URL, as well.
    """
    field :channel_id, :string

    @desc """
    The URL under which the channel can be accessed.
    """
    field :channel_url, :string

    @desc """
    The URL of the thumbnail image of the channel, if available.
    """
    field :thumbnail_url, :string

    @desc """
    The virtual youtuber which operates on this channel.
    """
    field :member, :member, resolve: dataloader(HoloApi.Repo)

    @desc """
    The media platform on which this channel is hosted.
    """
    field :media_platform, :media_platform, resolve: dataloader(HoloApi.Repo)
  end
end
