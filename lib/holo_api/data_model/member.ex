defmodule HoloApi.DataModel.Member do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Repo
  alias HoloApi.DataModel.Member
  alias HoloApi.DataModel.Agency
  alias HoloApi.DataModel.Group
  alias HoloApi.DataModel.Livestream
  alias HoloApi.DataModel.SocialChannel
  alias HoloApi.DataModel.MediaChannel

  schema "members" do
    field :name, :string
    field :name_jp, :string

    field :debut_date, :date
    field :birthday, :date
    field :age, :string
    field :height, :integer
    field :gender, :string
    field :zodiac, :string
    field :emoji, :string

    field :nicknames, {:array, :string}

    belongs_to :agency, Agency

    many_to_many :groups, Group, join_through: "group_members"

    has_many :livestreams, Livestream
    has_many :media_channels, MediaChannel
    has_many :social_channels, SocialChannel

    timestamps()
  end

  def changeset(member, params \\ %{}) do
    member
    |> cast(params, [
      :name,
      :name_jp,
      :debut_date,
      :birthday,
      :age,
      :gender,
      :zodiac,
      :emoji,
      :nicknames,
      :agency_id
    ])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end

  def list_all() do
    Repo.all(Member)
  end

  def get_by_id(id) do
    Repo.get(Member, id)
  end
end
