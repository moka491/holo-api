defmodule HoloApiWeb.Schema.MediaPlatform.Types do
  use Absinthe.Schema.Notation

  @desc """
  A media platform is a website or service that hosts livestreams of virtual youtubers.
  """
  object :media_platform do
    @desc """
    The unique ID of the platform entry.
    """
    field :id, :id

    @desc """
    The name of the platform.
    """
    field :name, :string

    @desc """
    The official website of the platform.
    """
    field :website_url, :string

    @desc """
    The virtual youtuber channels which are hosted on the platform.
    """
    field :media_channels, list_of(:media_channel)
  end
end
