defmodule HoloApiWeb.Schema.SocialPlatformType do
  use Absinthe.Schema.Notation

  object :social_platform do
    field :name, :string
    field :website_url, :string
  end
end
