import 'package:flutter/widgets.dart';
import 'package:dadata/dadata.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class PassportScreen extends StatefulWidget {
  final DadataClient dadataClient;

  const PassportScreen({
    required this.dadataClient,
    Key? key,
  }) : super(key: key);

  @override
  State<PassportScreen> createState() => _PassportScreenState();
}

class _PassportScreenState extends State<PassportScreen> {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(24),
          child: TypeAheadField<PassportIssuedBySuggestion>(
            textFieldConfiguration: TextFieldConfiguration(
              controller: _textEditingController,
            ),
            debounceDuration: Duration(milliseconds: 600),
            suggestionsCallback: _startSuggesting,
            itemBuilder: (context, suggestion) {
              return Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(_getValue(suggestion)),
                ),
              );
            },
            onSuggestionSelected: (suggestion) {
              final value = suggestion.value;
              if (value != null) {
                _textEditingController.text = _getValue(suggestion);
              }
            },
          ),
        ),
      ],
    );
  }

  Future<List<PassportIssuedBySuggestion>> _startSuggesting(String text) async {
    try {
      final resp = await widget.dadataClient.passportIssuedBy(
        PassportIssuedBySuggestionRequest(text),
      );
      print('$resp');
      if (resp != null && resp.suggestions.isNotEmpty) {
        return resp.suggestions;
      }
    } catch (e) {
      print("Caught error in suggestion query $e");
    }
    return [];
  }

  String _getValue(PassportIssuedBySuggestion suggestion) {
    return '${suggestion.data?.code} - ${suggestion.data?.name}';
  }
}
