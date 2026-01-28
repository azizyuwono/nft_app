import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_nft/models/card.dart';
import '../theme.dart';

class NftCard extends StatelessWidget {
  final Nft nft;

  // ignore: use_key_in_widget_constructors
  const NftCard(this.nft);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 268,
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
            child: Image.asset(nft.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nft.name,
                      style: titleStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Text('Ends in', style: subStyle.copyWith(fontSize: 14)),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          '35m 11s',
                          style:
                              GoogleFonts.inter(fontSize: 14, color: redColor),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Image.asset(
                      'assets/eth_icon.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '12.4',
                      style: titleStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
