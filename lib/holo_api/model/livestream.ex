defmodule HoloApi.Model.Livestream do
  use Ecto.Schema

  alias HoloApi.Repo
  alias HoloApi.Model.Livestream
  alias HoloApi.Model.Member
  alias HoloApi.Model.MediaChannel

  schema "livestreams" do
    field :title, :string
    field :stream_url, :string
    field :thumbnail_url, :string
    field :status, :string
    field :start_date, :utc_datetime
    field :end_date, :utc_datetime

    belongs_to :member, Member
    belongs_to :media_channel, MediaChannel

    timestamps()
  end

  def list_all() do
    Repo.all(Livestream)
  end

  def get_by_id(id) do
    Repo.get(Livestream, id)
  end
end
