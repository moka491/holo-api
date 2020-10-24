defmodule HoloApiWeb.Resolvers.MemberResolver do
  def list_members(_parent, _args, _resolution) do
    {:ok, HoloApi.DataModel.Member.list_all()}
  end

  def find_member(_parent, %{id: id}, _resolution) do
    case HoloApi.DataModel.Member.get_by_id(id) do
      nil ->
        {:error, "Member with ID #{id} not found"}

      member ->
        {:ok, member}
    end
  end
end
