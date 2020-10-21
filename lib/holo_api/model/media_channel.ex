defmodule HoloApi.Model.MediaChannel do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.Model.MediaChannel
  alias HoloApi.Model.Member
  alias HoloApi.Model.MediaPlatform

  schema "media_channels" do
    field :name, :string
    field :channel_id, :string
    field :channel_url, :string
    field :thumbnail_url, :string

    belongs_to :member, Member
    belongs_to :media_platform, MediaPlatform

    timestamps()
  end

  def list_all() do
    Repo.all(MediaChannel)
  end

  def get_by_id(id) do
    Repo.get(MediaChannel, id)
  end
end
