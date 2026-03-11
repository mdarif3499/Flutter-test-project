import 'dart:ui'; // Import for ImageFilter
import 'package:flutter/material.dart';
import 'package:ijarahub/core/constants/app_palette.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../l10n/app_localizations.dart';

class Loader extends StatelessWidget {
  final bool isLoading;
  final bool small;
  final Widget? child;

  const Loader({
    super.key,
    required this.isLoading,
    this.small = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child ?? SizedBox(),
        if (isLoading)
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
              child: Container(
                color: Colors.black.withValues(alpha: 0.6),
                child: Center(
                  child: !small
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LoadingAnimationWidget.dotsTriangle(
                              color: AppPalette.PRIMARY_COLOR,
                              size: 50,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              AppLocalizations.of(context)!.commonLoading,
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        )
                      : const CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
