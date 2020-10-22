defmodule HoloApiWeb.Schema.Agency.Types do
  use Absinthe.Schema.Notation

  object :agency do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string
    field :company, :company
    field :members, list_of(:member)
    field :groups, list_of(:group)
  end
end
