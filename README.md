# Flutter Synonym

A Flutter plugin for finding synonyms of English words and providing a score representing the frequency or usage of each word in a corpus or dataset.
[![pub package](https://img.shields.io/pub/v/flutter_synonym.svg)](https://pub.dev/packages/flutter_synonym)

## Installation

To use this plugin, add `flutter_synonym` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages):

```yaml
dependencies:
  flutter_synonym: ^0.0.1
```

Then, import the plugin in your Dart code:

```dart
import 'package:flutter_synonym/flutter_synonym.dart';
```

## Usage

### Fetching Synonyms

To fetch synonyms and their scores, use the `fetchData` method:

```dart
var word = 'hello';
var synonyms = await FlutterSynonym().fetchData(word);
print(synonyms);
```

This will print a list of synonyms along with their scores.

## Example

Here's a simple example of how to use the plugin in a Flutter app:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_synonym/flutter_synonym.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Synonym Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              var word = 'happy';
              var synonyms = await FlutterSynonym().fetchData(word);
              print(synonyms);
            },
            child: Text('Find Synonyms'),
          ),
        ),
      ),
    );
  }
}
```

## Additional Information

The plugin utilizes a robust synonym database to provide accurate and diverse synonym suggestions. It also includes a scoring mechanism that indicates the relative frequency or usage of each synonym, helping users choose the most appropriate word for their context.

## Benefits

- **Enhanced Vocabulary**: Expand your vocabulary by exploring a wide range of synonyms for any given word.
- **Improved Writing**: Choose words that resonate best with your audience, making your writing more engaging and impactful.
- **Efficient Communication**: Find the perfect synonym quickly and easily, enhancing the clarity and effectiveness of your communication.

## Note

This plugin uses an external API to fetch synonyms and their scores, so an active internet connection is required.


For more details, check out the [API documentation](https://pub.dev/documentation/flutter_synonym/latest/).

## Getting Started

For help getting started with Flutter, view the online [documentation](https://flutter.dev/docs),
which offers tutorials, samples, guidance on mobile development, and a full API reference.

## License

The MIT License (MIT) Copyright (c) 2024 Shirsh Shukla

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
