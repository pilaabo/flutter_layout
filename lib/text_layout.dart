import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, World!',
          style: GoogleFonts.leckerliOne(
            fontSize: 50,
            color: Colors.orange,
          ),
        ),
        Text(
          'Text can wrap without issue',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam nec turpis auctor, ultricies nunc nec, tincidunt nunc. Donec nec nunc nec nunc.',
        ),
        const Divider(),
        RichText(
          text: const TextSpan(
            text: 'Flutter text is ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: 'rich',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              TextSpan(
                text: ', ',
              ),
              TextSpan(
                text: 'flexible',
                style: TextStyle(
                  color: Colors.green,
                  fontStyle: FontStyle.italic,
                  fontSize: 50,
                ),
                children: [
                  TextSpan(
                    text: ', ',
                  ),
                  TextSpan(
                    text: 'and powerful.',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
