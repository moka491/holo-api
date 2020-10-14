defmodule HoloApiWeb.Schema.GroupType do
  use Absinthe.Schema.Notation

  object :group do
    field :name, :string
    field :name_jp, :string
    field :agency, :agency
    field :members, list_of(:member)
  end

  object :group_queries do
    @desc "Get all the groups of members, optionally filtered"
    field :groups, list_of(:group) do
    end

    @desc "Get a single group by ID or name"
    field :group, :group do
    end
  end
end
