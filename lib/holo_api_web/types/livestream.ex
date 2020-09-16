defmodule HoloApiWeb.Schema.LivestreamType do
  use Absinthe.Schema.Notation

  object :livestream do
    field :title, :string
    field :stream_url, :string
    field :thumbnail_url, :string
    # todo: livestream status type
    field :status, :string
    field :start_date, :datetime
    field :end_date, :datetime

    field :member, :member
    field :media_channel, :media_channel
  end
end
