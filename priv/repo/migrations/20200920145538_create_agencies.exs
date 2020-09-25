defmodule HoloApi.Repo.Migrations.CreateAgencies do
  use Ecto.Migration

  def change do
    create table(:agencies) do
      add(:name_i18n_id, references(:i18n_strings))
      add(:website_url, :string)

      add(:company_id, references(:companies))

      timestamps()
    end
  end
end
