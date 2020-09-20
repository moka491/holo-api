defmodule HoloApi.Repo.Migrations.CreateMediaChannels do
  use Ecto.Migration

  def change do
    create table(:media_channels) do
      add(:name, :string)
      add(:channel_id, :string)
      add(:channel_url, :string)
      add(:thumbnail_url, :string)

      add(:member_id, references(:members))
      add(:media_platform_id, references(:media_platforms))

      timestamps()
    end
  end
end
