import 'package:flutter/material.dart';

class TrandingCard extends StatelessWidget {
  final String ImgUrl;
  final String title;
  final String tag;
  final String time;
  final String author;
  final VoidCallback onTap;

  const TrandingCard({
    super.key,
    required this.ImgUrl,
    required this.title,
    required this.tag,
    required this.time,
    required this.author,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        // height: 300,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 200,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.background,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    ImgUrl,
                    fit: BoxFit.cover, // for take entire size of container
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text("$tag", style: Theme.of(context).textTheme.labelSmall),
                  Text("$time", style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "$title",
                      maxLines: 2,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 10),
                Text("$author"),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
