defmodule HoloApi.Repo.Migrations.CreateGroupMembers do
  use Ecto.Migration

  def change do
    create table(:group_members) do
      add(:group_id, references(:groups))
      add(:member_id, references(:members))

      timestamps()
    end
  end
end
