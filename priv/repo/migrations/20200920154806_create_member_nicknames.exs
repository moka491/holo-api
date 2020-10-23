defmodule HoloApi.Repo.Migrations.CreateMemberNicknames do
  use Ecto.Migration

  def change do
    create table(:member_nicknames) do
      add(:member_id, references(:members), null: false)
      add(:nickname, :string, null: false)

      timestamps()
    end
  end
end
