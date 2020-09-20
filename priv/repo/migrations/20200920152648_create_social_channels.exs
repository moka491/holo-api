defmodule HoloApi.Repo.Migrations.CreateSocialChannels do
  use Ecto.Migration

  def change do
    create table(:social_channels) do
      add(:name, :string, null: false)
      add(:channel_id, :string, null: false)
      add(:channel_url, :string, null: false)
      add(:thumbnail_url, :string)

      add(:member_id, references(:members), null: false)
      add(:social_platform_id, references(:social_platforms), null: false)

      timestamps()
    end
  end
end
