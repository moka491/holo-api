defmodule HoloApi.Repo.Migrations.CreateGroups do
  use Ecto.Migration

  def change do
    create table(:groups) do
      add(:name, :string, null: false)
      add(:name_jp, :string)
      add(:agency_id, references(:agencies))

      timestamps()
    end
  end
end
