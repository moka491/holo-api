defmodule HoloApiWeb.Schema.MediaPlatformType do
  use Absinthe.Schema.Notation

  object :media_platform do
    field :name, :string
    field :website_url, :string
  end
end
