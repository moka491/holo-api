defmodule HoloApi.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add(:name, :string, null: false)
      add(:name_jp, :string)
      add(:website_url, :string)

      timestamps()
    end
  end
end
