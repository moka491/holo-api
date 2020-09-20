defmodule HoloApi.Repo.Migrations.CreateMemberNicknames do
  use Ecto.Migration

  def change do
    create table(:member_nicknames) do
      add(:member_id, references(:members))
      add(:nickname, :string)
    end
  end
end
