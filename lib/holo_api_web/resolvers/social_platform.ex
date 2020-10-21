defmodule HoloApiWeb.Resolvers.SocialPlatformResolver do

  def list_social_platforms(_parent, _args, _resolution) do
    {:ok, HoloApi.Model.SocialPlatform.list_all()}
  end

  def find_social_platform(_parent, %{id: id}, _resolution) do
    case HoloApi.Model.SocialPlatform.get_by_id(id) do
      nil ->
        {:error, "SocialPlatform with ID #{id} not found"}
      social_platform ->
        {:ok, social_platform}
    end
  end
end
