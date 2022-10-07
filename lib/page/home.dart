import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nft_app/model/creator.dart';
import 'package:nft_app/model/nft.dart';
import 'package:nft_app/page/details.dart';
import 'package:nft_app/utility/nftcard.dart';
import 'package:nft_app/utility/creatorcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            ///Main Screen
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 12),

                  ///TOP: Search Input & Notification Icon
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFF262626),
                            ),
                            child: TextField(
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 24,
                                  color: Color(0xFF5B5B5B),
                                ),
                                suffixIcon: Icon(
                                  Icons.keyboard_voice_outlined,
                                  size: 24,
                                  color: Color(0xFF5B5B5B),
                                ),
                                border: InputBorder.none,
                                hintText: 'Search NFT',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Color(0xFF7F7F7F),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                        Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF262626),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Image.asset('assets/icons/notif.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  
                  ///Section 1
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///Headline
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              'Live Bids',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'See More',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF848484),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      
                      ///NFT Card content
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: nftList.length,
                          itemBuilder: (context, index) {
                            final Nft nft  = nftList[index];
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return Details(nft: nft);
                                }));
                              },
                              child: NftCard(nft: nft),
                            );
                          },
                        )
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  
                  ///Section 2
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///Headline
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              'Top Creator',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'See More',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF848484),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      
                      ///Creator card
                      SizedBox(
                        height: 145,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: creatorList.length,
                          itemBuilder: (context, index) {
                            final Creator creator  = creatorList[index];
                            return CreatorCard(creator: creator);
                          },
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            ///Bottom NavBar
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1D1D).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.1),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset('assets/icons/home.png'),
                                  ),
                                  SizedBox(height: 4),
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Color(0xFFE8FB7A),
                                  ),
                                ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset('assets/icons/explore.png'),
                                  ),
                                  SizedBox(height: 4),
                                Text(
                                  'Explore',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color(0xFF848484),
                                  ),
                                ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset('assets/icons/wallet.png'),
                                  ),
                                  SizedBox(height: 4),
                                Text(
                                  'Wallet',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color(0xFF848484),
                                  ),
                                ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset('assets/icons/bids.png'),
                                  ),
                                  SizedBox(height: 4),
                                Text(
                                  'Live Bids',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color(0xFF848484),
                                  ),
                                ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset('assets/icons/profile.png'),
                                  ),
                                  SizedBox(height: 4),
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color(0xFF848484),
                                  ),
                                ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
