defmodule HoloApi.Repo.Migrations.CreateMediaChannels do
  use Ecto.Migration

  def change do
    create table(:media_channels) do
      add(:name, :string, null: false)
      add(:channel_id, :string, null: false)
      add(:channel_url, :string, null: false)
      add(:thumbnail_url, :string)

      add(:member_id, references(:members), null: false)
      add(:media_platform_id, references(:media_platforms), null: false)

      timestamps()
    end
  end
end
