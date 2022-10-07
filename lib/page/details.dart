import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nft_app/model/nft.dart';

class Details extends StatelessWidget {
  final Nft nft;
  const Details({ Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    
                    ///TOP: Back to Home Button & Headline
                    Row(
                      children: [
                        ///Back to Home Button
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xFF262626),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(11),
                              child: Image.asset('assets/icons/back.png'),
                            ),
                          ),
                        ),
                        Spacer(),
                        
                        ///Headline
                        Text(
                          'NFT Details',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        SizedBox(width: 46),
                      ],
                    ),
                    SizedBox(height: 30),
                    
                    ///NFT CARD
                    Container(
                      height: 400,
                      width: 335,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(nft.nftImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                                child: Container(
                                  height: 32,
                                  width: 204,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.3),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        height: 20,
                                        width: 46,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Color(0xFFFD044F)
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/icons/Ellipse.png', width: 5,),
                                            SizedBox(width: 2),
                                            Text(
                                              'Live',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Image.asset(
                                        'assets/icons/time.png',
                                        width: 16,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '22h : 25m : 09s',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  height: 75,
                                  width: 303,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.3),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/icons/eth.png',
                                                  height: 16,
                                                ),
                                                SizedBox(width: 2),
                                                Text(
                                                  nft.nftPrice,
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'Highest bid',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xFFEAEAEA),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        height: 32,
                                        width: 68,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              size: 24,
                                              color: Color(0xFFFF5F51),
                                            ),
                                            Spacer(),
                                            Text(
                                              '29K',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xFF161616),
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
                          ],
                        ),
                      ),
                    ),
                  
                    SizedBox(height: 18),

                    ///Owner
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/propic.png',
                          height: 42,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nft.nftName,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Owned By Bryan Wan',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF848484),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Image.asset(
                                  'assets/icons/verif.png',
                                  height: 12,
                                ),
                                
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 30,
                          width: 78,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            color: Color(0xFF1D1D1D),
                          ),
                          child: Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  
                    SizedBox(height: 18),

                    ///Details & Bid History
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      width: double.infinity,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF1D1D1D),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              height: 34,
                              child: Center(
                                child: Text(
                                  'NFT Details',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF7F7F7F),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              height: 34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF2B2D20)
                              ),
                              child: Center(
                                child: Text(
                                  'Bid History',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFFE8FB7A),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  
                    SizedBox(height: 16),

                    ///Bid History
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/pp12.png',
                          height: 35,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1Cyborg',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Bid 9 min ago',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF848484),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/eth.png',
                              height: 16,
                            ),
                            SizedBox(width: 2),
                            Text(
                              '2.50 ETH',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/pp22.png',
                          height: 35,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'B0ldMan',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Bid 2 hour ago',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF848484),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/eth.png',
                              height: 16,
                            ),
                            SizedBox(width: 2),
                            Text(
                              '2 ETH',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            ///Cta Button(Place a bid)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 44,
                  width: 228,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xFFE8FB7A),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/bids2.png',
                        height: 24,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Place a bid',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF161616),
                        ),
                      ),
                    ],
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