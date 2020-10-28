defmodule HoloApi.DataModel.MediaChannel do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Repo
  alias HoloApi.DataModel.MediaChannel
  alias HoloApi.DataModel.Member
  alias HoloApi.DataModel.MediaPlatform

  schema "media_channels" do
    field :name, :string
    field :channel_id, :string
    field :channel_url, :string
    field :thumbnail_url, :string

    belongs_to :member, Member
    belongs_to :media_platform, MediaPlatform

    timestamps()
  end

  def changeset(media_channel, params \\ %{}) do
    media_channel
    |> cast(params, [
      :name,
      :channel_id,
      :channel_url,
      :thumbnail_url,
      :member_id,
      :media_platform_id
    ])
    |> validate_required([:name, :channel_id, :channel_url, :member_id, :media_platform_id])
    |> unique_constraint(:channel_id)
    |> assoc_constraint(:member)
    |> assoc_constraint(:media_platform)
  end

  def list_all() do
    Repo.all(MediaChannel)
  end

  def get_by_id(id) do
    Repo.get(MediaChannel, id)
  end
end
