defmodule HoloApi.DataModel.MediaChannel do
  use Ecto.Schema

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

  def list_all() do
    Repo.all(MediaChannel)
  end

  def get_by_id(id) do
    Repo.get(MediaChannel, id)
  end
end
