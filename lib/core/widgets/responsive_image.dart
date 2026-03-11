import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

// Conditional import for platform-specific file handling
import 'file_io_stub.dart'
    if (dart.library.io) 'file_io_mobile.dart';

class ResponsiveImage extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit fit;
  final BoxShape shape;
  final double borderRadius;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final Color? color;

   ResponsiveImage({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.size,
    this.fit = BoxFit.cover,
    this.shape = BoxShape.rectangle,
    this.borderRadius = 0.0,
    this.borderRadiusGeometry,
    this.color,
  });

  bool get _isNetwork => path.startsWith('http');
  bool get _isSVG => path.toLowerCase().endsWith('.svg');

  final XFileLoader _fileLoader = XFileLoader();

  bool get _isFile => _fileLoader.exists(path);

  double get _width => size ?? width ?? 50;
  double get _height => size ?? height ?? 50;

  @override
  Widget build(BuildContext context) {
    Widget imageWidget = _buildImage();

    // Apply shape / border
    if (shape == BoxShape.circle) {
      return ClipOval(child: imageWidget);
    } else if (borderRadius > 0 || borderRadiusGeometry != null) {
      return ClipRRect(
        borderRadius: borderRadiusGeometry ??
            BorderRadius.circular(borderRadius),
        child: imageWidget,
      );
    } else {
      return imageWidget;
    }
  }

  // Build the appropriate image widget
  Widget _buildImage() {
    if (_isSVG) {
      return _buildSVG();
    } else {
      return _buildRasterImage();
    }
  }

  // SVG handling
  Widget _buildSVG() {
    if (_isNetwork) {
      return SvgPicture.network(
        path,
        width: _width,
        height: _height,
        fit: fit,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
        placeholderBuilder: (_) => _buildShimmerPlaceholder(),
      );
    } else if (_isFile) {
      return SvgPicture.file(
        _fileLoader.load(path),
        width: _width,
        height: _height,
        fit: fit,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
      );
    } else {
      return SvgPicture.asset(
        path,
        width: _width,
        height: _height,
        fit: fit,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
      );
    }
  }

  // Raster image handling
  Widget _buildRasterImage() {
    if (_isNetwork) {
      return CachedNetworkImage(
        imageUrl: path,
        width: _width,
        height: _height,
        fit: fit,
        color: color,
        colorBlendMode: color != null ? BlendMode.srcIn : null,
        placeholder: (_, __) => _buildShimmerPlaceholder(),
        errorWidget: (_, __, ___) => _buildErrorWidget(),
      );
    } else if (_isFile) {
      return Image.file(
        _fileLoader.load(path),
        width: _width,
        height: _height,
        fit: fit,
        color: color,
        colorBlendMode: color != null ? BlendMode.srcIn : null,
        errorBuilder: (_, __, ___) => _buildErrorWidget(),
      );
    } else {
      return Image.asset(
        path,
        width: _width,
        height: _height,
        fit: fit,
        color: color,
        colorBlendMode: color != null ? BlendMode.srcIn : null,
        errorBuilder: (_, __, ___) => _buildErrorWidget(),
      );
    }
  }

  // Shimmer placeholder for loading
  Widget _buildShimmerPlaceholder() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          shape: shape,
          borderRadius: borderRadiusGeometry ??
              (shape == BoxShape.rectangle
                  ? BorderRadius.circular(borderRadius)
                  : null),
        ),
      ),
    );
  }

  // Error fallback widget
  Widget _buildErrorWidget() {
    return Container(
      width: _width,
      height: _height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: shape,
        borderRadius: borderRadiusGeometry ??
            (shape == BoxShape.rectangle
                ? BorderRadius.circular(borderRadius)
                : null),
      ),
      child: Icon(
        Icons.broken_image_outlined,
        color: Colors.grey.shade500,
        size: _width * 0.4,
      ),
    );
  }
}
