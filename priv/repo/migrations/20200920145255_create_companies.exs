defmodule HoloApi.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add(:name_i18n_id, references(:i18n_strings))
      add(:website_url, :string)

      timestamps()
    end
  end
end
