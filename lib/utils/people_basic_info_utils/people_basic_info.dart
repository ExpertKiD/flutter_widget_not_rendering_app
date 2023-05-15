import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ukpa_prms_mobile_app/utils/icon_utils/get_icon.dart';
import '/constants/api_constant.dart';
import '/constants/image_constant.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';

Widget getPeopleBasicInfo(
  BuildContext context, {
  required String peopleId,
  required String fullName,
  required String? image,
  required String mobileNum,
  required void Function()? onTrailingIconTap,
  Map<String, String>? headers,
}) {
  final firstCharacterOfName = fullName[0].toUpperCase();
  final peopleImage = image;
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: getVerticalSize(47),
        width: getHorizontalSize(47),
        decoration: BoxDecoration(
          color: ColorsConstant.lightGrey,
          shape: BoxShape.circle,
        ),
        child: peopleImage != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(getVerticalSize(50)),
                child: CachedNetworkImage(
                  imageUrl: ApiConstant.displayImageUrl(peopleImage),
                  placeholder: (context, url) {
                    return Image.asset(ImageConstant.person);
                  },
                  errorWidget: (context, url, error) {
                    return Image.asset(ImageConstant.person);
                  },
                  httpHeaders: headers,
                  fit: BoxFit.cover,
                ),
              )
            : Center(
                child: Text(
                  firstCharacterOfName,
                  style: getTextLight14(),
                ),
              ),
      ),
      getWidth8,
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            '$peopleId:',
                            style: getTextBold16(),
                          ),
                        ),
                      ),
                      getWidth4,
                      Flexible(
                        flex: 9,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            fullName,
                            style: getTextLight16(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              mobileNum,
              style: getTextLight14(),
            ),
          ],
        ),
      ),

      //for three dot icon
      InkWell(
        onTap: onTrailingIconTap,
        child: Container(
          height: getVerticalSize(47),
          width: getHorizontalSize(30),
          padding:
              getPadding(right: getHorizontalSize(16), top: getVerticalSize(4)),
          child: Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              ImageConstant.iconKebabMenu,
              height: getVerticalSize(16),
              width: getHorizontalSize(4),
              color: ColorsConstant.grey,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget getPeopleBasicInfoWithRemoveIcon(
  BuildContext context, {
  required String peopleId,
  required String fullName,
  required String? image,
  required String mobileNum,
  void Function()? onDeleteTap,
  Map<String, String>? headers,
}) {
  final firstCharacterOfName = fullName[0].toUpperCase();
  final peopleImage = image;
  return Card(
    shadowColor: ColorsConstant.lightGrey,
    elevation: getVerticalSize(2),
    child: Padding(
      padding: getPadding(
          top: getVerticalSize(16),
          bottom: getVerticalSize(16),
          left: getHorizontalSize(16)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(47),
            width: getHorizontalSize(47),
            decoration: BoxDecoration(
              color: ColorsConstant.lightGrey,
              shape: BoxShape.circle,
            ),
            child: peopleImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(getVerticalSize(50)),
                    child: CachedNetworkImage(
                      imageUrl: ApiConstant.displayImageUrl(peopleImage),
                      placeholder: (context, url) {
                        return Image.asset(ImageConstant.person);
                      },
                      errorWidget: (context, url, error) {
                        return Image.asset(ImageConstant.person);
                      },
                      httpHeaders: headers,
                      fit: BoxFit.cover,
                    ),
                  )
                : Center(
                    child: Text(
                      firstCharacterOfName,
                      style: getTextLight14(),
                    ),
                  ),
          ),
          getWidth8,
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                '$peopleId:',
                                style: getTextBold16(),
                              ),
                            ),
                          ),
                          getWidth4,
                          Flexible(
                            flex: 9,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Text(
                                fullName,
                                style: getTextLight16(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  mobileNum,
                  style: getTextLight14(),
                ),
              ],
            ),
          ),
          getCloseIcon(context, onPressed: onDeleteTap),
        ],
      ),
    ),
  );
}
