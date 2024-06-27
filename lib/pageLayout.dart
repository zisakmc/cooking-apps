import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  const PageLayout({
    super.key,
    required this.dishname,
    required this.description,
    required this.spice,
    required this.preptime,
    required this.cooktime,
    required this.ingredients,
    required this.instruction,
  });

  final dynamic dishname;
  final dynamic description;
  final dynamic spice;
  final dynamic preptime;
  final dynamic cooktime;
  final dynamic ingredients;
  final dynamic instruction;

  final String link1 =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.OM_YQDFEEZ6NPj0XapYwFgHaEo%26pid%3DApi&f=1&ipt=7215c621747f482b78dab45f92b491f9d5f3c2c36a8c8bc9cbbd04dfb6424fc0&ipo=images";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(dishname.toString())),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(url: link1),
            const SizedBox(
              height: 8,
            ),
            Text(
              dishname.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              description.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            TableSection(spice: spice, preptime: preptime, cooktime: cooktime),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "INGREDIENTS",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            TextSection(content: ingredients.toString()),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "INSTRUCTIONS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextSection(content: instruction.toString()),
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      child: AspectRatio(
        aspectRatio: 3,
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class TableSection extends StatelessWidget {
  const TableSection({
    super.key,
    required this.spice,
    required this.preptime,
    required this.cooktime,
  });

  final String spice;
  final String preptime;
  final String cooktime;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        child: Table(
          columnWidths: const {
            0: FixedColumnWidth(200),
          },
          border: TableBorder.all(color: Colors.black, width: 1),
          children: [
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Spice",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  spice.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.normal),
                ),
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Preparation Time",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  preptime.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.normal),
                ),
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Cooking Time",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cooktime.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.normal),
                ),
              ),
            ]),
          ],
        ));
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        content,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17,
          height: 2,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
