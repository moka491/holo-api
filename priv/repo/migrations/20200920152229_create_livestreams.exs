defmodule HoloApi.Repo.Migrations.CreateLivestreams do
  use Ecto.Migration

  def change do
    create table(:livestreams) do
      add(:title, :string, null: false)
      add(:stream_url, :string, null: false)
      add(:thumbnail_url, :string)
      add(:status, :string, null: false)
      add(:start_date, :utc_datetime, null: false)
      add(:end_date, :utc_datetime)

      add(:member_id, references(:members), null: false)
      add(:media_channel_id, references(:media_channels), null: false)

      timestamps()
    end
  end
end
