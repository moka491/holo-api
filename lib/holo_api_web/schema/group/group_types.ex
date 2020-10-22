defmodule HoloApiWeb.Schema.Group.Types do
  use Absinthe.Schema.Notation

  object :group do
    field :name, :string
    field :name_jp, :string
    field :agency, :agency
    field :members, list_of(:member)
  end
end
