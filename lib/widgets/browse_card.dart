import 'package:flutter/material.dart';
import 'package:simple_nft/models/browse.dart';
import '../theme.dart';

class BrowseCard extends StatelessWidget {
  final Browse browse;
  // ignore: use_key_in_widget_constructors
  const BrowseCard(this.browse);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              browse.imageUrl,
              width: 140,
              height: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  browse.name,
                  style: titleStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  '12,049 items',
                  style: subStyle.copyWith(fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
