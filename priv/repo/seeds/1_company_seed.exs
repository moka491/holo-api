import Seedex

alias HoloApi.DataModel.Company

seed(Company, [
  %{
    id: 1,
    name: "Cover Corp",
    name_jp: "カバー",
    website_url: "https://cover-corp.com/"
  }
])
