class SurahDetails {
  SurahDetails({
    required this.text,
    required this.translation,
    required this.audio,
  });

  final Text text;
  final Translation translation;
  final Audio audio;

  factory SurahDetails.fromJson(Map<String, dynamic> json) => SurahDetails(
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

class Audio {
  Audio({required this.secondary});

  final List<String> secondary;

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        secondary: List<String>.from(json["secondary"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "secondary": List<dynamic>.from(secondary.map((x) => x)),
      };
}

class Text {
  Text({
    required this.arab,
    required this.transliteration,
  });

  final String arab;
  final Translation transliteration;

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        arab: json["arab"],
        transliteration: Translation.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "transliteration": transliteration.toJson(),
      };
}

class Translation {
  Translation({required this.en});

  final String en;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      Translation(en: json["en"]);

  Map<String, dynamic> toJson() => {"en": en};
}
