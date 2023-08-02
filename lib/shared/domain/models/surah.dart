class Surah {
  Surah({
    required this.number,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
  });

  final int number;
  final int numberOfVerses;
  final Name name;
  final Revelation revelation;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
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

//  name object
class Name {
  final String short;
  final Transliteration transliteration;

  Name({
    required this.short,
    required this.transliteration,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        transliteration: Transliteration.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "transliteration": transliteration.toJson(),
      };
}

// object of name key
class Transliteration {
  final String en;

  Transliteration({required this.en});

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      Transliteration(en: json["en"]);

  Map<String, dynamic> toJson() => {"en": en};
}

class Revelation {
  final String arab;

  Revelation({required this.arab});

  factory Revelation.fromJson(Map<String, dynamic> json) =>
      Revelation(arab: json["arab"]);

  Map<String, dynamic> toJson() => {"arab": arab};
}
