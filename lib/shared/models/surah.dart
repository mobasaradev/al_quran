class Surah {
  final int number;
  final int numberOfVerses;
  final Name name;
  final Revelation revelation;
  final List<Verse> verses;

  Surah({
    required this.number,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
    required this.verses,
  });

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        number: json["number"],
        numberOfVerses: json["numberOfVerses"],
        name: Name.fromJson(json["name"]),
        revelation: Revelation.fromJson(json["revelation"]),
        verses: List<Verse>.from(json["verses"].map((x) => Verse.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "numberOfVerses": numberOfVerses,
        "name": name.toJson(),
        "revelation": revelation.toJson(),
        "verses": List<dynamic>.from(verses.map((x) => x.toJson())),
      };
}

//  name object
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

// object of name key
class Transliteration {
  Transliteration({required this.en});

  final String en;

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      Transliteration(en: json["en"]);

  Map<String, dynamic> toJson() => {"en": en};
}

class Revelation {
  Revelation({required this.arab});

  final String arab;

  factory Revelation.fromJson(Map<String, dynamic> json) =>
      Revelation(arab: json["arab"]);

  Map<String, dynamic> toJson() => {"arab": arab};
}

// value of verse key
class Verse {
  final Text text;
  final Translation translation;
  final Audio audio;

  Verse({
    required this.text,
    required this.translation,
    required this.audio,
  });

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        text: Text.fromJson(json["text"]),
        translation: Translation.fromJson(json["translation"]),
        audio: Audio.fromJson(json["audio"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text.toJson(),
        "translation": translation.toJson(),
        "audio": audio.toJson(),
      };
}

// value of text key
class Text {
  final String arab;
  final Translation transliteration;

  Text({
    required this.arab,
    required this.transliteration,
  });

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        arab: json["arab"],
        transliteration: Translation.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "transliteration": transliteration.toJson(),
      };
}


// one of the value of verse key
class Translation {
  final String en;

  Translation({required this.en});

  factory Translation.fromJson(Map<String, dynamic> json) =>
      Translation(en: json["en"]);

  Map<String, dynamic> toJson() => {"en": en};
}

// audio of verse key
class Audio {
  final List<String> secondary;

  Audio({
    required this.secondary,
  });

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        secondary: List<String>.from(json["secondary"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "secondary": List<dynamic>.from(secondary.map((x) => x)),
      };
}

