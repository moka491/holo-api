defmodule HoloApi.Repo.Migrations.CreateMembers do
  use Ecto.Migration

  def change do
    create table(:members) do
      add(:name_jp, :string)
      add(:name_en, :string)
      add(:debut_date, :utc_datetime)
      add(:age, :string)
      add(:height, :integer)
      add(:gender, :string)
      add(:zodiac, :string)
      add(:emoji, :string)

      add(:company_id, references(:companies))

      timestamps()
    end
  end
end
