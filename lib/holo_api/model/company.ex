defmodule HoloApi.Model.Company do
  use Ecto.Schema

  alias HoloApi.Model.Agency

  schema "companies" do
    field :name, :string
    field :name_jp, :string
    field :website_url, :string

    has_many :agencies, Agency

    timestamps()
  end
end
