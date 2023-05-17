class Chapters {
  String? name;
  String? name_translation;
  int? verses_count;
  String? chapter_summary;
  String? chapter_summary_hindi;
  int? chapter_id;
  int? chapter_number;
  int? externalId;
  int? id;
  String? text;
  String? title;
  int? verse_number;
  int? verse_order;
  String? transliteration;
  String? word_meanings;
  String? descriptionh;
  String? descriptione;
  String? imageh;
  String? imagee;
List<dynamic>? sholk;

  // int chapter_number;
  // String chapter_summary;
  // String chapter_summary_hindi;
  // int id;
  // String image_name;
  // String name_meaning;
  // String name_translation;
  // String ame_transliterated;

  Chapters(
      {required this.name,
      required this.name_translation,
      required this.verses_count,
      required this.chapter_summary,
      required this.chapter_summary_hindi,
      required this.chapter_id,
      required this.chapter_number,
      required this.externalId,
      required this.id,
      required this.text,
      required this.title,
      required this.verse_number,
      required this.verse_order,
      required this.transliteration,
      required this.word_meanings,
      required this.descriptionh,
      required this.descriptione,
      required this.sholk,
      required this.imageh,
      required this.imagee,

      // required this.chapter_number,
      // required this.chapter_summary,
      // required this.chapter_summary_hindi,
      // required this.id,
      // required this.image_name,

      // required this.name_meaning,
      // required this.name_translation,
      // required this.ame_transliterated,
      });

  factory Chapters.frommap({required Map data1}) {
    return Chapters(
      name: data1['name'],
      name_translation: data1['name_translation'],
      verses_count: data1['verses_count'],
      chapter_summary: data1['chapter_summary'],
      chapter_summary_hindi: data1['chapter_summary_hindi'],
      chapter_id: data1['chapter_id'],
      chapter_number: data1['chapter_number'],
      externalId: data1['externalId'],
      id: data1['id'],
      text: data1['text'],
      title: data1['title'],
      verse_number: data1['verse_number'],
      verse_order: data1['verse_order'],
      transliteration: data1['transliteration'],
      word_meanings: data1['word_meanings'],
      descriptionh: data1['descriptionh'],
      sholk: data1['sholk'],
      descriptione: data1['descriptione'],
      imageh: data1['imageh'],
      imagee: data1['imagee'],

      // chapter_number: data1['chapter_number'],
      // chapter_summary: data1['chapter_summary'],
      // chapter_summary_hindi: data1['chapter_summary_hindi'],
      // id: data1['id'],
      // image_name: data1['image_name'],
      // name: data1['name'],
      // name_meaning: data1['name_meaning'],
      // name_translation: data1['name_translation'],
      // ame_transliterated: data1['ame_transliterated'],
    );
  }
}
