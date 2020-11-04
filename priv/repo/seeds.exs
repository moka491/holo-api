alias HoloApi.Repo
alias HoloApi.DataModel.{Company, Agency, Group, Member, GroupMember}

companies = %{
  cover: %Company{
    id: 1,
    name: "Cover Corp",
    name_jp: "カバー",
    website_url: "https://cover-corp.com/"
  }
}

agencies = %{
  hololive: %Agency{
    id: 1,
    name: "Hololive Production",
    name_jp: "ホロライブプロダクション",
    website_url: "https://www.hololive.tv/",
    company_id: 1
  }
}

groups = %{
  holo_3d_talents: %Group{
    id: 1,
    name: "hololive 3D Talents",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_2d_talents: %Group{
    id: 2,
    name: "hololive 2D Talents",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_1st: %Group{
    id: 3,
    name: "hololive 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_2nd: %Group{
    id: 4,
    name: "hololive 2nd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_gamers: %Group{
    id: 5,
    name: "hololive GAMERS",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_3rd: %Group{
    id: 6,
    name: "hololive 3rd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_4th: %Group{
    id: 7,
    name: "hololive 4th Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_5th: %Group{
    id: 8,
    name: "hololive 5th Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_inonaka_music: %Group{
    id: 9,
    name: "INoNaKa MUSIC",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_china_1st: %Group{
    id: 10,
    name: "hololive China 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_china_2nd: %Group{
    id: 11,
    name: "hololive China 2nd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_indonesia_1st: %Group{
    id: 12,
    name: "hololive Indonesia 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holo_english_1st: %Group{
    id: 13,
    name: "hololive English 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holostars_1st: %Group{
    id: 14,
    name: "Holostars 1st Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holostars_2nd: %Group{
    id: 15,
    name: "Holostars 2nd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  },
  holostars_3rd: %Group{
    id: 16,
    name: "Holostars 3rd Gen",
    name_jp: "",
    agency_id: agencies.hololive.id
  }
}

members = %{
  tokino_sora: %Member{
    id: 1,
    name: "Tokino Sora",
    name_jp: "ときのそら",
    debut_date: Date.from_iso8601!("2017-09-07"),
    birthday: Date.from_iso8601!("0004-05-15"),
    age: "20",
    gender: "Female",
    height: 160,
    zodiac: "Taurus",
    emoji: "🐻",
    nicknames: [
      "Sora",
      "Tokki~",
      "〇〇's Sora"
    ],
    agency_id: agencies.hololive.id
  },
  roboco: %Member{
    id: 2,
    name: "Roboco",
    name_jp: "ロボ子",
    debut_date: Date.from_iso8601!("2018-03-04"),
    birthday: Date.from_iso8601!("0004-05-23"),
    age: "17",
    gender: "Female",
    height: 154,
    zodiac: "Gemini",
    emoji: "🤖",
    nicknames: [
      "Roboco"
    ],
    agency_id: agencies.hololive.id
  },
  sakura_miko: %Member{
    id: 3,
    name: "Sakura Miko",
    name_jp: "さくらみこ",
    debut_date: Date.from_iso8601!("2018-08-01"),
    birthday: Date.from_iso8601!("0004-03-05"),
    age: "18.2",
    gender: "Female",
    height: 152,
    zodiac: "Pisces",
    emoji: "🌸",
    nicknames: [
      "Miko-chi",
      "Virtual Elite Miko",
      "Elite Miko",
      "sakuramiko35"
    ],
    agency_id: agencies.hololive.id
  },
  hoshimachi_suisei: %Member{
    id: 4,
    name: "Hoshimachi Suisei",
    name_jp: "星街すいせい",
    debut_date: Date.from_iso8601!("2018-03-22"),
    birthday: Date.from_iso8601!("0004-03-22")
    age: "18 (forever)",
    gender: "Female",
    height: 160,
    zodiac: "Aries",
    emoji: "☄️",
    nicknames: [
      "Sui-chan"
    ],
    agency: agencies.hololive.id
  },
  yozora_mel: %Member{
    id: 5,
    name: "Yozora Mel",
    name_jp: "夜空メル",
    debut_date: Date.from_iso8601!("2018-05-13"),
    birthday: Date.from_iso8601!("0004-10-31")
    gender: "Female",
    height: 154,
    zodiac: "Scorpio",
    emoji: "🌟",
    nicknames: [
      "Merumeru"
    ],
    agency: agencies.hololive.id
  }
}

group_members = %{
  tokino_sora: %GroupMember{
    member_id: members.tokino_sora.id,
    group_id: groups.holo_3d_talents.id
  },
  roboco: %GroupMember{
    member_id: members.roboco.id,
    group_id: groups.holo_3d_talents.id
  },
  sakura_miko: %GroupMember{
    member_id: members.sakura_miko.id,
    group_id: groups.holo_3d_talents.id
  },
  hoshimachi_suisei: %GroupMember{
    member_id: members.hoshimachi_suisei.id,
    group_id: groups.holo_2d_talents.id
  }
}

for dataset <- [companies, agencies, groups, members, group_members] do
  for entry <- Map.values(dataset) do
    entry |> Repo.insert!(on_conflict: :replace_all, conflict_target: [:id])
  end
end
