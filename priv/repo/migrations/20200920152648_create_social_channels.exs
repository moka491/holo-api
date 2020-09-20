defmodule HoloApi.Repo.Migrations.CreateSocialChannels do
  use Ecto.Migration

  def change do
    create table(:social_channels) do
      add(:name, :string)
      add(:channel_id, :string)
      add(:channel_url, :string)
      add(:thumbnail_url, :string)

      add(:member_id, references(:members))
      add(:social_platform_id, references(:social_platforms))

      timestamps()
    end
  end
end
