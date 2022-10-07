import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nft_app/model/nft.dart';

class NftCard extends StatelessWidget {
  final Nft nft;

  const NftCard({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 400,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(nft.nftImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 15, left: 16, right: 16),
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
                    height: 57,
                    width: 248,
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
                        Image.asset(
                          'assets/images/propic.png',
                          height: 35,
                        ),
                        SizedBox(width: 7),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                nft.nftName,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'By Bryan Wan',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0xFFEAEAEA),
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
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/eth.png',
                                    height: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    nft.nftPrice,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
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
                                  fontSize: 10,
                                  color: Color(0xFFEAEAEA),
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
    );
  }
}