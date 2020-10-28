defmodule HoloApi.DataModel.MediaPlatform do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Repo
  alias HoloApi.DataModel.MediaPlatform
  alias HoloApi.DataModel.MediaChannel

  schema "media_platforms" do
    field :name, :string
    field :website_url, :string

    has_many :media_channels, MediaChannel

    timestamps()
  end

  def changeset(media_platform, params \\ %{}) do
    media_platform
    |> cast(params, [
      :name,
      :website_url
    ])
    |> validate_required([:name, :website_url])
    |> unique_constraint(:name)
  end

  def list_all() do
    Repo.all(MediaPlatform)
  end

  def get_by_id(id) do
    Repo.get(MediaPlatform, id)
  end
end
