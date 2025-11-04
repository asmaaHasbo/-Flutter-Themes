import 'dart:developer';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:redacted/redacted.dart';
import 'package:testing_in_flutter/core/extensions/theme_extension.dart';
import 'package:testing_in_flutter/core/theme/app_colors.dart';


class CachedImg extends StatelessWidget {
  const CachedImg({
    super.key,
    required this.posterPath,
    this.width,
    this.height,
    this.borderRadius,
    this.imageQuality = ImageQuality.medium,
  });

  /// مسار الصورة من الـ API (بدون الـ base URL)
  final String? posterPath;

  /// عرض الصورة (optional - default: 110.w)
  final double? width;

  /// ارتفاع الصورة (optional - default: 110.h)
  final double? height;

  /// نصف قطر الزوايا (optional - default: 12.r)
  final double? borderRadius;

  /// جودة الصورة (w500 / w780 / original)
  final ImageQuality imageQuality;

  @override
  Widget build(BuildContext context) {
    //  الأبعاد الافتراضية
    final imageWidth = width ?? 110.w;
    final imageHeight = height ?? 110.h;
    final radius = borderRadius ?? 12.r;

    //  بناء الـ URL الكامل للصورة
    final String imageUrl = _buildImageUrl();

    return Container(
      width: imageWidth,
      height: imageHeight,
      decoration: BoxDecoration(
        // لون الخلفية يتغير حسب الـ theme
        color: context.containerBackground,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: context.containerBackground, width: 0.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: _buildCachedImgWidget(imageUrl),
      ),
    );
  }

  /// بناء الـ URL الكامل للصورة حسب الجودة المطلوبة
  String _buildImageUrl() {
    //  التأكد من وجود posterPath
    if (posterPath == null || posterPath!.isEmpty) {
      return '';
    }

    //  اختيار جودة الصورة
    String quality;

    switch (imageQuality) {
      case ImageQuality.low:
        quality = 'w185';
        break;
      case ImageQuality.medium:
        quality = 'w500';
        break;
      case ImageQuality.high:
        quality = 'w780';
        break;
      case ImageQuality.original:
        quality = 'original';
        break;
    }

    return 'https://image.tmdb.org/t/p/$quality/$posterPath';
  }

  /// بناء widget الصورة مع معالجة الحالات المختلفة
  Widget _buildCachedImgWidget(String imageUrl) {
    // ✅ استخدام CachedNetworkImage للتخزين المؤقت
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,

      // ✅ Placeholder: يظهر أثناء تحميل الصورة
      placeholder: (context, url) => _buildLoadingPlaceholder(context),

      // ✅ Error Widget: يظهر لو حصل خطأ في التحميل
      errorWidget: (context, url, error) {
        log('Error loading image: $url - ${error.toString()}');
        return Icon(
          Icons.image_not_supported_outlined,
          size: 40.sp,
          color: AppColors.gray400,
        );
      },

      // ✅ إعدادات الـ Cache
      memCacheHeight: 400, // تحديد حجم الـ cache في الذاكرة
      memCacheWidth: 300,
      maxHeightDiskCache: 800, // تحديد حجم الـ cache في الـ disk
      maxWidthDiskCache: 600,
    );
  }

  /// Loading Placeholder: يظهر أثناء تحميل الصورة
  Widget _buildLoadingPlaceholder(BuildContext context) {
    return Container(
      color: AppColors.gray800.withValues(alpha: .3),
      child: const Center(child: SizedBox()),
    ).redacted(
      context: context,
      redact: true,
      configuration: RedactedConfiguration(
        animationDuration: const Duration(milliseconds: 800), //default
      ),
    );
  }
}

/// Enum لتحديد جودة الصورة
enum ImageQuality {
  /// w185 - للصور الصغيرة جداً
  low,

  /// w500 - للصور المتوسطة (Home Screen)
  medium,

  /// w780 - للصور الكبيرة (Details Screen)
  high,

  /// original - للصورة الأصلية بأعلى جودة
  original,
}
