alias HoloApi.Repo
alias HoloApi.DataModel.Company
alias HoloApi.DataModel.Agency

%Member{
  id: 1
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
  agency_id: 1
}
|> Repo.insert_or_update!!()
