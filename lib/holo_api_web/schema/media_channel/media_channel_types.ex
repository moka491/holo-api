defmodule HoloApiWeb.Schema.MediaChannel.Types do
  use Absinthe.Schema.Notation

  object :media_channel do
    field :name, :string
    field :channel_id, :string
    field :channel_url, :string
    field :thumbnail_url, :string

    field :member, :member
    field :media_platform, :media_platform
  end
end
