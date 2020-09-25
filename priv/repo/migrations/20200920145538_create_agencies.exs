defmodule HoloApi.Repo.Migrations.CreateAgencies do
  use Ecto.Migration

  def change do
    create table(:agencies) do
      add(:name, :string, null: false)
      add(:name_jp, :string)
      add(:website_url, :string)

      add(:company_id, references(:companies), null: false)

      timestamps()
    end
  end
end
