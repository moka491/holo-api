defmodule HoloApiWeb.Schema.MemberType do
  use Absinthe.Schema.Notation

  object :member do
    field :name, :string_i18n
    field :nicknames, list_of(:string)
    field :age, :string
    field :height, :integer
    field :gender, :string
    field :debut_date, :datetime
    field :zodiac, :string
    field :emoji, :string
    field :company, :company
    field :groups, list_of(:group)
    field :livestreams, list_of(:livestream)
    field :media_channels, list_of(:media_channel)
    field :social_channels, list_of(:social_channel)
  end

  object :member_queries do
    @desc "Get all members, optionally filtered"
    field :members, list_of(:member) do
    end

    @desc "Get a single member by ID"
    field :member, :member do
    end
  end
end
