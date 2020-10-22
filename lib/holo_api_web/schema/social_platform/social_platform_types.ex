defmodule HoloApiWeb.Schema.SocialPlatform.Types do
  use Absinthe.Schema.Notation

  object :social_platform do
    field :name, :string
    field :website_url, :string

    field :social_channels, list_of(:social_channel)
  end
end
