import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_nft/models/browse.dart';
import 'package:simple_nft/models/card.dart';
import 'package:simple_nft/widgets/browse_card.dart';
import 'package:simple_nft/widgets/footer.dart';
import 'package:simple_nft/widgets/nft_card.dart';
import '../theme.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.bottomCenter,
              child: Footer(),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 24,
                  right: 24,
                  bottom: 100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/profile.png',
                        width: 60,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Joy Siggih',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              color: blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Level 109',
                            style: subStyle,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/notifbell.png',
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Popular Bids',
                    style: titleStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NftCard(
                          Nft(
                            name: 'The Masa',
                            imageUrl: 'assets/nft1.png',
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        NftCard(
                          Nft(
                            name: 'Centre Power',
                            imageUrl: 'assets/nft2.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Browse',
                    style: titleStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        BrowseCard(
                          Browse(name: 'Vector', imageUrl: 'assets/vector.png'),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        BrowseCard(Browse(
                          name: '3D',
                          imageUrl: 'assets/3d.png',
                        )),
                        const SizedBox(
                          width: 24,
                        ),
                        BrowseCard(Browse(
                          name: 'Vector',
                          imageUrl: 'assets/vector2.png',
                        )),
                      ],
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
