defmodule HoloApi.Repo.Migrations.CreateGroupMembers do
  use Ecto.Migration

  def change do
    create table(:group_members) do
      add(:group_id, references(:groups), null: false)
      add(:member_id, references(:members), null: false)

      timestamps()
    end
  end
end
