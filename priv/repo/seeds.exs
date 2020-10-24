alias HoloApi.Repo
alias HoloApi.DataModel.Company
alias HoloApi.DataModel.Agency
alias HoloApi.DataModel.Member
alias HoloApi.DataModel.MemberNickname

cover =
  %Company{name: "Cover Corp", name_jp: "カバー", website_url: "https://cover-corp.com/"}
  |> Repo.insert!()

hololive =
  %Agency{
    name: "Hololive Production",
    name_jp: "ホロライブプロダクション",
    website_url: "https://www.hololive.tv/",
    company_id: cover.id
  }
  |> Repo.insert!()

# agency_id: hololive.id, }
subaru =
  %Member{
    name: "Oozora Subaru",
    name_jp: "大空スバル",
    debut_date: DateTime.from_unix!(0),
    height: 154,
    gender: "Female",
    zodiac: "Cancer",
    emoji: "🚑",
    nicknames: [
      %MemberNickname{nickname: "Subaru"},
      %MemberNickname{nickname: "Subachi"},
      %MemberNickname{nickname: "Subatani Subao"}
    ],
    agency_id: hololive.id
  }
  |> Repo.insert!()
