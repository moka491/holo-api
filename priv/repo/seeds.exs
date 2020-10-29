alias HoloApi.Repo
alias HoloApi.DataModel.{Company, Agency, Group, Member}

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
    birthday: "15th May 2000",
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
  }
}

for dataset <- [companies, agencies, groups, members] do
  for entry <- Map.values(dataset) do
    entry |> Repo.insert!(on_conflict: :replace_all, conflict_target: :id)
  end
end
