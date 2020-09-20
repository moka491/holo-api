defmodule HoloApi.Repo.Migrations.CreateGroups do
  use Ecto.Migration

  def change do
    create table(:groups) do
      add(:name_jp, :string)
      add(:name_en, :string)
      add(:company_id, references(:companies))

      timestamps()
    end
  end
end
