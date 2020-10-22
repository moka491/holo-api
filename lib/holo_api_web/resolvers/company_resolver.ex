defmodule HoloApiWeb.Resolvers.CompanyResolver do

  def list_companies(_parent, _args, _resolution) do
    {:ok, HoloApi.Model.Company.list_all()}
  end

  def find_company(_parent, %{id: id}, _resolution) do
    case HoloApi.Model.Company.get_by_id(id) do
      nil ->
        {:error, "Company with ID #{id} not found"}
      company ->
        {:ok, company}
    end
  end

end
