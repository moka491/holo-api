defmodule HoloApiWeb.Schema.GroupType do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.GroupResolver

  object :group do
    field :name, :string
    field :name_jp, :string
    field :agency, :agency
    field :members, list_of(:member)
  end

  object :group_queries do
    @desc "Get all the groups of members"
    field :groups, list_of(:group) do
      resolve(&GroupResolver.list_groups/3)
    end

    @desc "Get a single group by ID"
    field :group, :group do
      arg :id, non_null(:id)
      resolve(&GroupResolver.find_group/3)
    end
  end
end
