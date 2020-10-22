defmodule HoloApiWeb.Resolvers.AgencyResolver do

  def list_agencies(_parent, _args, _resolution) do
    {:ok, HoloApi.Model.Agency.list_all()}
  end

  def find_agency(_parent, %{id: id}, _resolution) do
    case HoloApi.Model.Agency.get_by_id(id) do
      nil ->
        {:error, "Agency with ID #{id} not found"}
      agency ->
        {:ok, agency}
    end
  end

end
