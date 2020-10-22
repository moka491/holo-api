defmodule HoloApiWeb.Schema.Livestream.Types do
  use Absinthe.Schema.Notation

  object :livestream do
    field :title, :string
    field :stream_url, :string
    field :thumbnail_url, :string
    field :status, :string
    field :start_date, :datetime
    field :end_date, :datetime

    field :member, :member
    field :media_channel, :media_channel
  end
end
