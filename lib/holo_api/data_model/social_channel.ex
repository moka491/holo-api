defmodule HoloApi.DataModel.SocialChannel do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Repo
  alias HoloApi.DataModel.SocialChannel
  alias HoloApi.DataModel.Member
  alias HoloApi.DataModel.SocialPlatform

  schema "social_channels" do
    field :name, :string
    field :channel_id, :string
    field :channel_url, :string
    field :thumbnail_url, :string

    belongs_to :member, Member
    belongs_to :social_platform, SocialPlatform

    timestamps()
  end

  def changeset(social_channel, params \\ %{}) do
    social_channel
    |> cast(params, [
      :name,
      :channel_id,
      :channel_url,
      :thumbnail_url,
      :member_id,
      :social_platform_id
    ])
    |> validate_required([:name, :channel_id, :channel_url, :member_id, :social_platform_id])
    |> unique_constraint(:channel_id)
    |> assoc_constraint(:member)
    |> assoc_constraint(:social_platform)
  end

  def list_all() do
    Repo.all(SocialChannel)
  end

  def get_by_id(id) do
    Repo.get(SocialChannel, id)
  end
end
