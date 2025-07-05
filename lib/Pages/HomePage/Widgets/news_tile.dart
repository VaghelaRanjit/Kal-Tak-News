import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String time;
  final String author;
  const NewsTile({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.time,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      //   height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Container(
            //  color: Colors.black,
            // color: Colors.white,
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                "$imgUrl",
                fit: BoxFit.cover, // for take entire size of container
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 10),
                    Text("$author"),
                  ],
                ),
                SizedBox(height: 15),
                Text("$title", maxLines: 2),
                SizedBox(height: 15),
                Text("$time", style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
