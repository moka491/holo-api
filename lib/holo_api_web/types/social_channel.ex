defmodule HoloApiWeb.Schema.SocialChannelType do
  use Absinthe.Schema.Notation

  object :social_channel do
    field :name, :string
    field :channel_url, :string
    field :member, :member
    field :social_platform, :social_platform
  end
end
