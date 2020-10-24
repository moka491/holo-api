defmodule HoloApi.DataModel.SocialPlatform do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.DataModel.SocialPlatform
  alias HoloApi.DataModel.SocialChannel

  schema "social_platforms" do
    field :name, :string
    field :website_url, :string

    has_many :social_channels, SocialChannel

    timestamps()
  end

  def list_all() do
    Repo.all(SocialPlatform)
  end

  def get_by_id(id) do
    Repo.get(SocialPlatform, id)
  end
end
