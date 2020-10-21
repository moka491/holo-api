defmodule HoloApiWeb.Resolvers.GroupResolver do

  def list_groups(_parent, _args, _resolution) do
    {:ok, HoloApi.Model.Group.list_all()}
  end

  def find_group(_parent, %{id: id}, _resolution) do
    case HoloApi.Model.Group.get_by_id(id) do
      nil ->
        {:error, "Group with ID #{id} not found"}
      group ->
        {:ok, group}
    end
  end

end
