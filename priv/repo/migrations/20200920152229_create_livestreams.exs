defmodule HoloApi.Repo.Migrations.CreateLivestreams do
  use Ecto.Migration

  def change do
    create table(:livestreams) do
      add(:title, :string)
      add(:stream_url, :string)
      add(:thumbnail_url, :string)
      add(:status, :string)
      add(:start_date, :utc_datetime)
      add(:end_date, :utc_datetime)

      add(:member_id, references(:members))
      add(:media_channel_id, references(:media_channels))

      timestamps()
    end
  end
end
