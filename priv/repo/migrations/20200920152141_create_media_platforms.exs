defmodule HoloApi.Repo.Migrations.CreateMediaPlatforms do
  use Ecto.Migration

  def change do
    create table(:media_platforms) do
      add(:name, :string, null: false)
      add(:website_url, :string, null: false)

      timestamps()
    end
  end
end
