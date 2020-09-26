defmodule HoloApi.Model.Member do
  use Ecto.Schema

  alias HoloApi.Model.Agency
  alias HoloApi.Model.MemberNickname
  alias HoloApi.Model.Group
  alias HoloApi.Model.Livestream
  alias HoloApi.Model.SocialChannel
  alias HoloApi.Model.MediaChannel

  schema "members" do
    field :name, :string
    field :name_jp, :string

    field :debut_date, :utc_datetime
    field :age, :string
    field :height, :integer
    field :gender, :string
    field :zodiac, :string
    field :emoji, :string

    has_many :nicknames, MemberNickname
    belongs_to :agency, Agency
    many_to_many :groups, Group, join_through: "group_members"

    has_many :livestreams, Livestream
    has_many :social_channels, SocialChannel
    has_many :media_channels, MediaChannel

    timestamps()
  end
end
