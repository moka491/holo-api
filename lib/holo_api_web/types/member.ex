defmodule HoloApiWeb.Schema.MemberType do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.MemberResolver

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

  object :member_queries do
    @desc "Get all members"
    field :members, list_of(:member) do
      resolve(&MemberResolver.list_members/3)
    end

    @desc "Get a single member by ID"
    field :member, :member do
      arg :id, non_null(:id)
      resolve(&MemberResolver.find_member/3)
    end
  end
end
