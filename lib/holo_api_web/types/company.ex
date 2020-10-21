defmodule HoloApiWeb.Schema.CompanyType do
  use Absinthe.Schema.Notation

  alias HoloApiWeb.Resolvers.CompanyResolver

  object :company do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string
    field :agencies, list_of(:agency)
  end

  object :company_queries do
    @desc "Get all the companies"
    field :companies, list_of(:company) do
      resolve(&CompanyResolver.list_companies/3)
    end

    @desc "Get a single company by ID"
    field :company, :company do
      arg :id, non_null(:id)
      resolve(&CompanyResolver.find_company/3)
    end
  end
end
