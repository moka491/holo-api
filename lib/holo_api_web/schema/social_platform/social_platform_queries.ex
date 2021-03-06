defmodule HoloApiWeb.Schema.SocialPlatform.Queries do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.SocialPlatformResolver

  object :social_platform_queries do
    @desc """
    Get a list of all social platforms
    """
    field :social_platforms, list_of(:social_platform) do
      resolve(&SocialPlatformResolver.list_social_platforms/3)
    end

    @desc """
    Get a single social platform by ID
    """
    field :social_platform, :social_platform do
      arg(:id, non_null(:id))
      resolve(&SocialPlatformResolver.find_social_platform/3)
    end
  end
end
