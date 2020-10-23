defmodule HoloApiWeb.Schema.Member.Queries do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.MemberResolver

  object :member_queries do
    @desc """
    Get a list of all members
    """
    field :members, list_of(:member) do
      resolve(&MemberResolver.list_members/3)
    end

    @desc """
    Get a single member by ID
    """
    field :member, :member do
      arg(:id, non_null(:id))
      resolve(&MemberResolver.find_member/3)
    end
  end
end
