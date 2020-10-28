defmodule HoloApi.DataModel.SocialPlatform do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Repo
  alias HoloApi.DataModel.SocialPlatform
  alias HoloApi.DataModel.SocialChannel

  schema "social_platforms" do
    field :name, :string
    field :website_url, :string

    has_many :social_channels, SocialChannel

    timestamps()
  end

  def changeset(social_platform, params \\ %{}) do
    social_platform
    |> cast(params, [
      :name,
      :website_url
    ])
    |> validate_required([:name, :website_url])
    |> unique_constraint(:name)
  end

  def list_all() do
    Repo.all(SocialPlatform)
  end

  def get_by_id(id) do
    Repo.get(SocialPlatform, id)
  end
end
