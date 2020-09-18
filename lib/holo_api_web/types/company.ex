defmodule HoloApiWeb.Schema.CompanyType do
  use Absinthe.Schema.Notation

  object :company do
    field :name_i18n, :string_i18n
    field :website_url, :string
    field :members, list_of(:member)
    field :groups, list_of(:group)
  end

  object :company_queries do
    @desc "Get all the companies, optionally filtered"
    field :companies, list_of(:company) do
    end

    @desc "Get a single company by ID or name"
    field :company, :company do
    end
  end
end
