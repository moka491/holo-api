defmodule HoloApi.Model.MediaPlatform do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.Model.MediaPlatform
  alias HoloApi.Model.MediaChannel

  schema "media_platforms" do
    field :name, :string
    field :website_url, :string

    has_many :media_channels, MediaChannel

    timestamps()
  end

  def list_all() do
    Repo.all(MediaPlatform)
  end

  def get_by_id(id) do
    Repo.get(MediaPlatform, id)
  end
end
