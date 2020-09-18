defmodule HoloApiWeb.Schema.MiscTypes do
  use Absinthe.Schema.Notation

  object :string_i18n do
    field :japanese, :string
    field :english, :string
  end
end
