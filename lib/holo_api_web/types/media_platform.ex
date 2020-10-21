defmodule HoloApiWeb.Schema.MediaPlatformType do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.MediaPlatformResolver

  object :media_platform do
    field :name, :string
    field :website_url, :string

    field :media_channels, list_of(:media_channel)
  end

  object :media_platform_queries do
    @desc "Get all media platforms"
    field :media_platforms, list_of(:media_platform) do
      resolve(&MediaPlatformResolver.list_media_platforms/3)
    end

    @desc "Get a single media platform by ID"
    field :media_platform, :media_platform do
      arg :id, non_null(:id)
      resolve(&MediaPlatformResolver.find_media_platform/3)
    end
  end
end
