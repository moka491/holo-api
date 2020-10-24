defmodule HoloApi.DataModel do
  def data() do
    Dataloader.Ecto.new(HoloApi.Repo, query: &query/2)
  end

  def query(queryable, _params) do
    queryable
  end
end
