defmodule HoloApi.Model.GroupMember do
  use Ecto.Schema

  alias HoloApi.Model.Group
  alias HoloApi.Model.Member

  schema "group_members" do
    belongs_to :group, Group
    belongs_to :member, Member

    timestamps()
  end
end
