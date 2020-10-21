alias HoloApi.Repo
alias HoloApi.Model.Company
alias HoloApi.Model.Agency

cover = %Company{name: "Cover Corp", name_jp: "カバー", website_url: "https://cover-corp.com/"} |> Repo.insert!
hololive = %Agency{name: "Hololive Production", name_jp: "ホロライブプロダクション", website_url: "https://www.hololive.tv/", company_id: cover.id} |> Repo.insert!
