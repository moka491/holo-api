defmodule HoloApiWeb.Schema.Member.Types do
  use Absinthe.Schema.Notation
  import Absinthe.Resolution.Helpers, only: [dataloader: 1]

  @desc """
  A member is a single virtual youtuber personality.
  """
  object :member do
    @desc """
    The unique ID of the vtuber entry.
    """
    field :id, :id

    @desc """
    The international name of the vtuber.
    """
    field :name, :string

    @desc """
    The japanese name of the vtuber.
    """
    field :name_jp, :string

    @desc """
    The nicknames associated with the vtuber.
    """
    field :nicknames, list_of(:string), resolve: dataloader(HoloApi.Repo)

    @desc """
    The age declaration of the vtuber.
    """
    field :age, :string

    @desc """
    The height of the vtuber character, in cm.
    """
    field :height, :integer

    @desc """
    The gender of the vtuber.
    """
    field :gender, :string

    @desc """
    The date and time at which the vtuber has debuted first.
    """
    field :debut_date, :datetime

    @desc """
    The zodiac sign of the vtuber.
    """
    field :zodiac, :string

    @desc """
    The emoji sign commonly associated with the vtuber, if available.
    """
    field :emoji, :string

    @desc """
    The agency which the vtuber works for, if done so.
    """
    field :agency, :agency, resolve: dataloader(HoloApi.Repo)

    @desc """
    The groups under which the vtuber is commonly categorized.
    """
    field :groups, list_of(:group), resolve: dataloader(HoloApi.Repo)

    @desc """
    The livestreams that the vtuber has done.
    """
    field :livestreams, list_of(:livestream), resolve: dataloader(HoloApi.Repo)

    @desc """
    The media channels that the vtuber operates on.
    """
    field :media_channels, list_of(:media_channel), resolve: dataloader(HoloApi.Repo)

    @desc """
    The social channels that the vtuber operates on.
    """
    field :social_channels, list_of(:social_channel), resolve: dataloader(HoloApi.Repo)
  end
end
