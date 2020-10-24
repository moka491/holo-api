defmodule HoloApiWeb.Schema.SocialPlatform.Types do
  use Absinthe.Schema.Notation
  import Absinthe.Resolution.Helpers, only: [dataloader: 1]

  @desc """
  A social platform is a social networking platform on which virtual youtubers have a social presence.
  """
  object :social_platform do
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
    The virtual youtuber profile pages which are hosted on the platform.
    """
    field :social_channels, list_of(:social_channel), resolve: dataloader(HoloApi.Repo)
  end
end
