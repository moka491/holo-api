defmodule HoloApi.Model.SocialPlatform do
  use Ecto.Schema

  alias HoloApi.Model.SocialChannel

  schema "social_platforms" do
    field :name, :string
    field :website_url, :string

    has_many :social_channels, SocialChannel

    timestamps()
  end
end
