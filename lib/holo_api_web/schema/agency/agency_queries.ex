defmodule HoloApiWeb.Schema.Agency.Queries do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.AgencyResolver

  object :agency_queries do
    @desc """
    Get a list of all agencies
    """
    field :agencies, list_of(:agency) do
      resolve(&AgencyResolver.list_agencies/3)
    end

    @desc """
    Get a single agency by ID
    """
    field :agency, :agency do
      arg(:id, non_null(:id))
      resolve(&AgencyResolver.find_agency/3)
    end
  end
end
