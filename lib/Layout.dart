import 'package:cooking/CookingData.dart';
import 'package:cooking/card.dart';
import 'package:cooking/pageLayout.dart';

import 'package:flutter/material.dart';

class LayoutGrid extends StatelessWidget {
  const LayoutGrid({super.key, required this.data});

  final List<CookingData> data;

  final String link1 =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.OM_YQDFEEZ6NPj0XapYwFgHaEo%26pid%3DApi&f=1&ipt=7215c621747f482b78dab45f92b491f9d5f3c2c36a8c8bc9cbbd04dfb6424fc0&ipo=images";
  final String link =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.ihcILXxpcD-eg1h6d1YXCQHaEo%26pid%3DApi&f=1&ipt=818670bfd2f49c9b27d7f3efcf79a9eabbf0aea1a1c1f5f9e175f9007498cfaf&ipo=images";

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        for (var item in data)
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageLayout(
                          dishname: item.DishName,
                          description: item.Description,
                          spice: item.Spice,
                          preptime: item.PrepTime,
                          cooktime: item.CookTime,
                          ingredients: item.Ingredients,
                          instruction: item.Instructions,
                        )),
              );
            },
            child: CardSection(
                imageurl: link,
                title: item.DishName.toString(),
                preptime: item.PrepTime.toString(),
                icon: Icons.timer),
          ),
      ],
    );
  }
}
