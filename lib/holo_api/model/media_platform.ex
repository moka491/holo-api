defmodule HoloApi.Model.MediaPlatform do
  use Ecto.Schema

  alias HoloApi.Model.MediaChannel

  schema "media_platforms" do
    field :name, :string
    field :website_url, :string

    has_many :media_channels, MediaChannel

    timestamps()
  end
end
