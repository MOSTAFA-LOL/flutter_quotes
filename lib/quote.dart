// ignore_for_file: prefer_initializing_formals

class Quote {
  String text;
  String author;

  Quote({required this.text, required this.author});
}

Quote myquote = Quote(text: 'this is the quote text', author: 'oscar wilde');
