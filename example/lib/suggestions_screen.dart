import 'package:dadata/dadata.dart';
import 'package:example/address.dart';
import 'package:example/passport.dart';
import 'package:flutter/material.dart';

class SuggestionsScreen extends StatefulWidget {
  final String token;

  SuggestionsScreen({Key? key, required this.token}) : super(key: key);

  @override
  _SuggestionsScreenState createState() => _SuggestionsScreenState();
}

class _SuggestionsScreenState extends State<SuggestionsScreen> {
  late final DadataClient _dadataClient;
  var _suggestionType = SuggestionType.address;

  @override
  void initState() {
    super.initState();
    _dadataClient = DadataClient(token: widget.token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Try query'),
      ),
      body: Column(children: [
        ...SuggestionType.values.map(
          (type) => RadioListTile<SuggestionType>(
            title: Text('$type'),
            value: type,
            groupValue: _suggestionType,
            onChanged: (value) {
              setState(() {
                if (value != null) _suggestionType = value;
              });
            },
          ),
        ),
        _suggestionView(),
      ]),
    );
  }

  Widget _suggestionView() {
    switch (_suggestionType) {
      case SuggestionType.address:
        return AddressScreen(dadataClient: _dadataClient);
      case SuggestionType.passport:
        return PassportScreen(dadataClient: _dadataClient);
    }
  }
}

enum SuggestionType {
  address,
  passport,
}
