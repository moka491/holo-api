defmodule HoloApiWeb.Schema.MemberType do
  use Absinthe.Schema.Notation

  object :member do
    field :name, :string
    field :nicknames, list_of(:string)
    field :age, :string
    field :height, :integer
    field :gender, :string
    field :debut_date, :string
    field :zodiac, :string
    field :emoji, :string
    field :company, :company
    field :groups, list_of(:group)
    field :livestreams, list_of(:livestream)
    field :media_channels, list_of(:media_channel)
    field :social_channels, list_of(:social_channel)
  end
end
