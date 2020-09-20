defmodule HoloApi.Repo.Migrations.CreateSocialPlatforms do
  use Ecto.Migration

  def change do
    create table(:social_platforms) do
      add(:name, :string)
      add(:website_url, :string)

      timestamps()
    end
  end
end
