import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
    home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'J.R.R Tolkien',
        text: '. . . there is some good in this world, and it is'
        ' worth fighting for.',
        category: 'Fiction', sourceMaterial: 'The Lord of the Rings: The Two Towers',
        character: 'Samwise Gamgee'),
    Quote(author: 'Pat Conroy', text: 'The White Porpoise comes to me at night. Singing'
        ' in the river of time with a thousand dolphins in radiant attendance, bringing'
        ' charismatic greetings from The Prince of Tides.',
        category: 'Fiction', sourceMaterial: 'The Prince of Tides',
        character: 'Savannah Wingo'),
    Quote(author: 'Pat Conroy', text: 'He had returned to the sea. . . and his heart'
        ' was a lowcountry heart.',
        category: 'Fiction', sourceMaterial: 'The Prince of Tides',
        character: 'Tom Wingo')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
            'Awesome Quotes',
            style: GoogleFonts.roboto(),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}





