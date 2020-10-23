defmodule HoloApiWeb.Schema.Livestream.Types do
  use Absinthe.Schema.Notation

  @desc """
  A livestream is a live event that is, will be, or has been streamed by a virtual youtuber.
  """
  object :livestream do
    @desc """
    The title of the livestream.
    """
    field :title, :string

    @desc """
    The URL under which the livestream can be accessed.
    """
    field :stream_url, :string

    @desc """
    The URL of the thumbnail image of the livestream, if available.
    """
    field :thumbnail_url, :string

    @desc """
    The status of the livestream, specifying if it is still ongoing, in the past, or in the future.
    """
    field :status, :string

    @desc """
    The date and time of when the livestream has been or will be started.
    """
    field :start_date, :datetime

    @desc """
    The date and time of when the livestream has been or will be ended, if available.
    If not given, this usually indicates that the stream has not yet been started nor ended.
    """
    field :end_date, :datetime

    @desc """
    The virtual youtuber which hosts the livestream.
    """
    field :member, :member

    @desc """
    The media channel at which the livestream is hosted.
    """
    field :media_channel, :media_channel
  end
end
