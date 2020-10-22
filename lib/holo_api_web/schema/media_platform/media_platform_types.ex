defmodule HoloApiWeb.Schema.MediaPlatform.Types do
  use Absinthe.Schema.Notation

  object :media_platform do
    field :name, :string
    field :website_url, :string

    field :media_channels, list_of(:media_channel)
  end
end
