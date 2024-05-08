library flutter_synonym;

export 'src/data_fetch.dart';
export 'src/model/word.dart';

/// FlutterSynonym is a Flutter plugin that allows you to find synonyms of English words and provides a score representing the frequency or usage of each word in a corpus or dataset.
///
/// This plugin is designed to enhance your vocabulary and improve your writing by suggesting alternative words that can help you convey your message more effectively.
///
/// To use this plugin, simply call the `fetchData` method with the word you want to find synonyms for. For example:
///
/// ```dart
/// var word = 'happy';
/// var synonyms = await FlutterSynonym().fetchData(word);
/// print(synonyms);
/// ```
///
/// This will print a list of synonyms along with their scores, helping you choose the most appropriate word for your context.
