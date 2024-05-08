import 'package:flutter/material.dart';
import 'package:flutter_synonym/flutter_synonym.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Synonym Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SynonymScreen(),
    );
  }
}

class SynonymScreen extends StatefulWidget {
  @override
  _SynonymScreenState createState() => _SynonymScreenState();
}

class _SynonymScreenState extends State<SynonymScreen> {
  final FlutterSynonym _synonym = FlutterSynonym();
  List<Word>? _synonyms;
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _fetchSynonyms(String word) async {
    try {
      List<Word>? synonyms = await FlutterSynonym().fetchData(word);
      setState(() {
        _synonyms = synonyms;
      });
    } catch (e) {
      print('Error fetching synonyms: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Synonym Finder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter a word'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _fetchSynonyms(_controller.text);
              },
              child: Text('Find Synonyms'),
            ),
            SizedBox(height: 16.0),
            _synonyms == null
                ? Expanded(
                    child: Center(
                      child: Text('No synonyms found'),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: _synonyms!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_synonyms![index].word),
                          subtitle: Text('Score: ${_synonyms![index].score}'),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
