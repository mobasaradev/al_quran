class Surah {
  final int number;
  final int numberOfVerses;
  final Name name;
  final Revelation revelation;

  Surah({
    required this.number,
    required this.numberOfVerses,
    required this.name,
    required this.revelation,
  });

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      number: json['number'] ?? 0,
      numberOfVerses: json['numberOfVerses'] ?? 0,
      name: Name.fromJson(json['name'] ?? {}),
      revelation: Revelation.fromJson(json['revelation'] ?? {}),
    );
  }
}

class Name {
  final String short;
  final Transliteration transliteration;

  Name({required this.short, required this.transliteration});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      short: json['short'] ?? '',
      transliteration: Transliteration.fromJson(json['transliteration'] ?? {}),
    );
  }
}

class Transliteration {
  final String en;

  Transliteration({required this.en});

  factory Transliteration.fromJson(Map<String, dynamic> json) {
    return Transliteration(
      en: json['en'] ?? '',
    );
  }
}

class Revelation {
  final String arab;

  Revelation({required this.arab});

  factory Revelation.fromJson(Map<String, dynamic> json) {
    return Revelation(
      arab: json['arab'] ?? '',
    );
  }
}
