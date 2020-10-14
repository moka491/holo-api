defmodule HoloApiWeb.Schema.AgencyType do
  use Absinthe.Schema.Notation

  object :agency do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string
    field :company, :company
    field :members, list_of(:member)
    field :groups, list_of(:group)
  end

  object :agency_queries do
    @desc "Get all the agencies, optionally filtered"
    field :agencies, list_of(:agency) do
    end

    @desc "Get a single agency by ID or name"
    field :agency, :agency do
    end
  end
end
