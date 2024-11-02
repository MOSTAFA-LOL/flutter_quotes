// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'oscer wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'oscer wilde',
        text: 'Life is far too important a thing ever to talk seriously about'),
    Quote(
        author: 'oscer wilde',
        text: 'To love oneself is the beginning of a lifelong romance')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCards(
          quote: quote,
          delete:(){
            setState(() {
              quotes.remove(quote);
            });
          }
        ))
            .toList(),
      ),
    );
  }
}

// class QuoteCards extends StatelessWidget {
//   const QuoteCards({
//     super.key,
//     required this.quote,
//   });

//   final Quote quote;

//   @override
//   Widget build(BuildContext context) {
  
//     return Card(
//       margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(quote.text,
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.grey[800]
//             ),
//             ),
//             SizedBox(height: 6,),
//             Text(quote.author,
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.grey[800]
//             ),
//             ),
//               SizedBox(height: 8.0),
//           //   FlatButton.icon(
//           //   onpress:(){},
//           //   label:Text("delete quote"),
//           //   Icon(Icons.delete)
//           // )
//           ],
//         ),
//       ),
//     );
//   }
// }




