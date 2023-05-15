import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/constants/colors_constant.dart';

class FailedToLoadData extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? description;

  const FailedToLoadData({Key? key, this.onPressed, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconButtonIconSize = 48;
    const double actualIconSize = 32;

    final descriptionText = description ?? 'Failed to load data. Tap to retry.';

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: onPressed,
                iconSize: iconButtonIconSize,
                icon: Container(
                  width: iconButtonIconSize,
                  height: iconButtonIconSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Theme.of(context).colorScheme.primaryContainer,
                    color: ColorsConstant.primaryBlue,
                  ),
                  child: Icon(
                    Icons.sync,
                    size: actualIconSize,
                    color: ColorsConstant.white,
                    // color: Theme.of(context).colorScheme.background,
                  ),
                )),
            Flexible(child: Text(descriptionText)),
          ],
        ),
      ),
    );
  }
}
