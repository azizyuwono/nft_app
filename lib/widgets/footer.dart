import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_nft/main.dart';
import '../theme.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.grid_view,
                  color: blueColor,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Discover',
                  style: GoogleFonts.inter(
                    color: blueColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.layers,
                  color: greyColor,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'History',
                  style: GoogleFonts.inter(
                    color: greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite,
                  color: greyColor,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Wishlist',
                  style: GoogleFonts.inter(
                    color: greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.settings,
                  color: greyColor,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Setting',
                  style: GoogleFonts.inter(
                    color: greyColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
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
