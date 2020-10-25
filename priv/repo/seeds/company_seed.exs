alias HoloApi.Repo
alias HoloApi.DataModel.Company

%Company{id: 1, name: "Cover Corp", name_jp: "カバー", website_url: "https://cover-corp.com/"}
  |> Repo.insert_or_update!()
