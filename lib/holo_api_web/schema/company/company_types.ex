defmodule HoloApiWeb.Schema.Company.Types do
  use Absinthe.Schema.Notation

  object :company do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string
    field :agencies, list_of(:agency)
  end
end
