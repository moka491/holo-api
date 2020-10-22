defmodule HoloApiWeb.Schema.Member.Types do
  use Absinthe.Schema.Notation

  object :member do
    field :name, :string
    field :name_jp, :string
    field :nicknames, list_of(:string)

    field :age, :string
    field :height, :integer
    field :gender, :string
    field :debut_date, :datetime
    field :zodiac, :string
    field :emoji, :string
    field :agency, :agency

    field :groups, list_of(:group)
    field :livestreams, list_of(:livestream)
    field :media_channels, list_of(:media_channel)
    field :social_channels, list_of(:social_channel)
  end
end
