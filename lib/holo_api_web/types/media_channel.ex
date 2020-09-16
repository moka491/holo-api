defmodule HoloApiWeb.Schema.MediaChannelType do
  use Absinthe.Schema.Notation

  object :media_channel do
    field :name, :string
    field :channel_url, :string
    field :member, :member
    field :media_platform, :media_platform
  end
end
