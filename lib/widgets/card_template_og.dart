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
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 170,
              height: 250,
              child: FadeInImage(
                placeholder: const AssetImage("assets/images/profile_pic.png"),
                image: NetworkImage(url),
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Expanded(
              child: title == ""
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
                              fontFamily: "Newake",
                              fontSize: 15,
                            ),
                          ),
                          if (text != null)
                            Text(
                              text!,
                              style: const TextStyle(
                                fontFamily: "Coolvetica",
                                fontSize: 12,
                              ),
                            ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
