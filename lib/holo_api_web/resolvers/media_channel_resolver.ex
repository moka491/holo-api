defmodule HoloApiWeb.Resolvers.MediaChannelResolver do
  def list_media_channels(_parent, _args, _resolution) do
    {:ok, HoloApi.DataModel.MediaChannel.list_all()}
  end

  def find_media_channel(_parent, %{id: id}, _resolution) do
    case HoloApi.DataModel.MediaChannel.get_by_id(id) do
      nil ->
        {:error, "MediaChannel with ID #{id} not found"}

      media_channel ->
        {:ok, media_channel}
    end
  end
end
