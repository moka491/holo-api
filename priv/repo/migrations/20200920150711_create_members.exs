defmodule HoloApi.Repo.Migrations.CreateMembers do
  use Ecto.Migration

  def change do
    create table(:members) do
      add(:name, :string, null: false)
      add(:name_jp, :string)
      add(:debut_date, :utc_datetime)
      add(:age, :string)
      add(:height, :integer)
      add(:gender, :string)
      add(:zodiac, :string)
      add(:emoji, :string)

      add(:agency_id, references(:agencies))

      timestamps()
    end
  end
end
