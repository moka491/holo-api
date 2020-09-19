defmodule HoloApi.Model.Member do
  use Ecto.Schema

  alias HoloApi.Model.Company
  alias HoloApi.Model.MemberNickname
  alias HoloApi.Model.Group
  alias HoloApi.Model.Livestream
  alias HoloApi.Model.SocialChannel
  alias HoloApi.Model.MediaChannel

  schema "members" do
    field :name_jp, :string
    field :name_en, :string
    field :debut_date, :utc_datetime
    field :age, :string
    field :height, :integer
    field :gender, :string
    field :zodiac, :string
    field :emoji, :string

    has_many :nicknames, MemberNickname
    belongs_to :company, Company
    many_to_many :groups, Group, join_through: "group_members"

    has_many :livestreams, Livestream
    has_many :social_channels, SocialChannel
    has_many :media_channels, MediaChannel

    timestamps()
  end
end
