class Surah {
  Surah({
    required this.data,
  });
  final List<Datum> data;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.number,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
  });
  final int number;
  final int numberOfVerses;
  final Name name;
  final Revelation revelation;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        number: json["number"],
        numberOfVerses: json["numberOfVerses"],
        name: Name.fromJson(json["name"]),
        revelation: Revelation.fromJson(json["revelation"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "numberOfVerses": numberOfVerses,
        "name": name.toJson(),
        "revelation": revelation.toJson(),
      };
}

class Name {
  Name({
    required this.short,
    required this.transliteration,
  });

  final String short;
  final Transliteration transliteration;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        transliteration: Transliteration.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "transliteration": transliteration.toJson(),
      };
}

class Transliteration {
  Transliteration({
    required this.en,
  });
  final String en;

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      Transliteration(
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
      };
}

class Revelation {
  Revelation({
    required this.arab,
  });
  final String arab;

  factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: json["arab"],
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
      };
}
