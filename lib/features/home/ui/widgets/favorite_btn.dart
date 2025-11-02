import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 16.w),
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: const Color(0xFF4ECDC4),
          size: 28.sp,
        ),
      ),
    );
  }
}
