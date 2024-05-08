class Word {
  final String word;
  final int score;

  Word({required this.word, required this.score});

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      word: json['word'],
      score: json['score'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'score': score,
    };
  }
}
