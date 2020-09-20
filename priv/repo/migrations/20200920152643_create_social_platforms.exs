defmodule HoloApi.Repo.Migrations.CreateSocialPlatforms do
  use Ecto.Migration

  def change do
    create table(:social_platforms) do
      add(:name, :string, null: false)
      add(:website_url, :string, null: false)

      timestamps()
    end
  end
end
