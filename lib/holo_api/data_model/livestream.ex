defmodule HoloApi.DataModel.Livestream do
  use Ecto.Schema
  import Ecto.Changeset

  alias HoloApi.Repo
  alias HoloApi.DataModel.Livestream
  alias HoloApi.DataModel.Member
  alias HoloApi.DataModel.MediaChannel

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

  def changeset(livestream, params \\ %{}) do
    livestream
    |> cast(params, [
      :title,
      :stream_url,
      :thumbnail_url,
      :status,
      :start_date,
      :end_date,
      :member_id,
      :media_channel_id
    ])
    |> validate_required([:title, :stream_url, :start_date, :member_id, :media_channel_id])
    |> unique_constraint(:stream_url)
    |> assoc_constraint(:member)
    |> assoc_constraint(:media_channel)
  end

  def list_all() do
    Repo.all(Livestream)
  end

  def get_by_id(id) do
    Repo.get(Livestream, id)
  end
end
