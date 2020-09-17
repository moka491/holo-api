defmodule HoloApiWeb.Schema.MediaPlatformType do
  use Absinthe.Schema.Notation

  object :media_platform do
    field :name, :string
    field :website_url, :string
  end

  object :media_platform_queries do
    @desc "Get all media platforms"
    field :media_platforms, list_of(:media_platform) do
    end

    @desc "Get a single media platform by ID"
    field :media_platform, :media_platform do
    end
  end
end
