defmodule HoloApiWeb.Schema.AgencyType do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.AgencyResolver

  object :agency do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string
    field :company, :company
    field :members, list_of(:member)
    field :groups, list_of(:group)
  end

  object :agency_queries do
    @desc "Get all the agencies"
    field :agencies, list_of(:agency) do
      resolve(&AgencyResolver.list_agencies/3)
    end

    @desc "Get a single agency by ID"
    field :agency, :agency do
      arg :id, non_null(:id)
      resolve(&AgencyResolver.find_agency/3)
    end
  end
end
