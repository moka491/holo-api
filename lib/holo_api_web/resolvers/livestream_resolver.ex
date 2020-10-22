defmodule HoloApiWeb.Resolvers.LivestreamResolver do

  def list_livestreams(_parent, _args, _resolution) do
    {:ok, HoloApi.Model.Livestream.list_all()}
  end

  def find_livestream(_parent, %{id: id}, _resolution) do
    case HoloApi.Model.Livestream.get_by_id(id) do
      nil ->
        {:error, "Livestream with ID #{id} not found"}
      livestream ->
        {:ok, livestream}
    end
  end
end
