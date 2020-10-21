defmodule HoloApi.Model.SocialChannel do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.Model.SocialChannel
  alias HoloApi.Model.Member
  alias HoloApi.Model.SocialPlatform

  schema "social_channels" do
    field :name, :string
    field :channel_id, :string
    field :channel_url, :string
    field :thumbnail_url, :string

    belongs_to :member, Member
    belongs_to :social_platform, SocialPlatform

    timestamps()
  end

  def list_all() do
    Repo.all(SocialChannel)
  end

  def get_by_id(id) do
    Repo.get(SocialChannel, id)
  end
end
