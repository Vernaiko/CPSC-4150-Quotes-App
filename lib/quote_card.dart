import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:google_fonts/google_fonts.dart';

class QuoteCard extends StatefulWidget {
  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  _QuoteCardState createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  int likeCount = 0;

  void incrementLike() {
    setState(() {
      likeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.quote.text,
              style: GoogleFonts.comfortaa(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              widget.quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            Text(
              widget.quote.category,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.cyan,
              ),
            ),
            Text(
              widget.quote.sourceMaterial,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.cyan,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              widget.quote.character,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.cyan,
              ),
            ),
            Text(
              "Created at: ${widget.quote.createdAt.toLocal().toString().split(
                  '.')[0]}",
              style: TextStyle(fontSize: 12.0, color: Colors.grey[500]),
            ),
            TextButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Delete Quote'),
                      content: Text('Are you sure?'),
                      actions: [
                        TextButton(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          child: Text('Delete'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: incrementLike,
                  color: Colors.amber,
                ),
                Text(
                  '$likeCount',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}