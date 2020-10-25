alias HoloApi.Repo
alias HoloApi.DataModel.Company
alias HoloApi.DataModel.Agency

%Agency{
  id: 1,
  name: "Hololive Production",
  name_jp: "ホロライブプロダクション",
  website_url: "https://www.hololive.tv/",
  company_id: 1
}
|> Repo.insert_or_update!()
