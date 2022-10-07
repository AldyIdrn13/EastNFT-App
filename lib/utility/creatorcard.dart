import 'package:flutter/material.dart';
import 'package:nft_app/model/creator.dart';

class CreatorCard extends StatelessWidget {
  final Creator creator;

  const CreatorCard({Key? key, required this.creator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        height: 145,
        width: 118,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFF1D1D1D),
        ),
        child: Column(
          children: [
            Image.asset(creator.creatorPropic, height: 58),
            SizedBox(height: 12),
            Text(
              creator.creatorName,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              creator.creatorValue,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF7F7F7F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}