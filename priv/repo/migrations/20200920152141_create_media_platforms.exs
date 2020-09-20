defmodule HoloApi.Repo.Migrations.CreateMediaPlatforms do
  use Ecto.Migration

  def change do
    create table(:media_platforms) do
      add(:name, :string)
      add(:website_url, :string)

      timestamps()
    end
  end
end
