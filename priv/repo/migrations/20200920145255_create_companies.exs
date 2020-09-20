defmodule HoloApi.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add(:name_jp, :string)
      add(:name_en, :string)
      add(:website_url, :string)

      timestamps()
    end
  end
end
