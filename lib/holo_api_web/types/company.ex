defmodule HoloApiWeb.Schema.CompanyType do
  use Absinthe.Schema.Notation

  object :company do
    field :name, :string
    field :website_url, :string
    field :members, list_of(:member)
    field :groups, list_of(:group)
  end
end
