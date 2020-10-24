defmodule HoloApi.DataModel.GroupMember do
  use Ecto.Schema

  alias HoloApi.DataModel.Group
  alias HoloApi.DataModel.Member

  schema "group_members" do
    belongs_to :group, Group
    belongs_to :member, Member

    timestamps()
  end
end
