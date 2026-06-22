import "package:flutter/material.dart";

class CardTemplate extends StatelessWidget {
  final String? title;
  final String url;
  final String? text;

  const CardTemplate({this.title, this.text, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage(
              "assets/images/woodstock_placeholder.gif",
            ),
            image: NetworkImage(url),
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          title == ""
              ? Container()
              : Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Snoopy",
                          fontSize: 15,
                        ),
                      ),
                      if (text != null)
                        Text(
                          text!,
                          style: const TextStyle(
                            fontFamily: "Snoopy",
                            fontSize: 12,
                          ),
                        ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
