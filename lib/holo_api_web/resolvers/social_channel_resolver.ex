defmodule HoloApiWeb.Resolvers.SocialChannelResolver do
  def list_social_channels(_parent, _args, _resolution) do
    {:ok, HoloApi.DataModel.SocialChannel.list_all()}
  end

  def find_social_channel(_parent, %{id: id}, _resolution) do
    case HoloApi.DataModel.SocialChannel.get_by_id(id) do
      nil ->
        {:error, "SocialChannel with ID #{id} not found"}

      social_channel ->
        {:ok, social_channel}
    end
  end
end
