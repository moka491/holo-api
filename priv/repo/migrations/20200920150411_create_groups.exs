defmodule HoloApi.Repo.Migrations.CreateGroups do
  use Ecto.Migration

  def change do
    create table(:groups) do
      add(:name_i18n_id, references(:i18n_strings))
      add(:company_id, references(:companies))

      timestamps()
    end
  end
end
