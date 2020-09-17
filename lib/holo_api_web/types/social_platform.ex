defmodule HoloApiWeb.Schema.SocialPlatformType do
  use Absinthe.Schema.Notation

  object :social_platform do
    field :name, :string
    field :website_url, :string
  end

  object :social_platform_queries do
    @desc "Get all social platforms"
    field :social_platforms, list_of(:social_platform) do
    end

    @desc "Get a single media platform by ID"
    field :social_platform, :social_platform do
    end
  end
end
