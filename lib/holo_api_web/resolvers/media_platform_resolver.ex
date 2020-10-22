defmodule HoloApiWeb.Resolvers.MediaPlatformResolver do

  def list_media_platforms(_parent, _args, _resolution) do
    {:ok, HoloApi.Model.MediaPlatform.list_all()}
  end

  def find_media_platform(_parent, %{id: id}, _resolution) do
    case HoloApi.Model.MediaPlatform.get_by_id(id) do
      nil ->
        {:error, "MediaPlatform with ID #{id} not found"}
      media_platform ->
        {:ok, media_platform}
    end
  end
end
