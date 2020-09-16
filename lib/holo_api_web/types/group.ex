defmodule HoloApiWeb.Schema.GroupType do
  use Absinthe.Schema.Notation

  object :group do
    field :name, :string
    field :company, :company
    field :members, list_of(:member)
  end
end
