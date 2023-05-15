import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/constants/image_constant.dart';
import '/constants/strings_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/divider/custom_divider.dart';
import '/utils/list_tile/custom_list_tile.dart';

class CustomBottomSheet {
  viewEditDeleteArchiveBottomSheet(
    BuildContext context, {
    void Function()? onViewTap,
    void Function()? onEditTap,
    required void Function()? onDeleteTap,
    required void Function()? onArchiveTap,
    required String archiveStatusText,
  }) async {
    return await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            getVerticalSize(16),
          ),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: getPadding(
            top: getVerticalSize(8),
            left: getHorizontalSize(15),
            right: getHorizontalSize(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  ImageConstant.iconRemove,
                  height: getVerticalSize(4),
                  width: getHorizontalSize(48),
                  color: ColorsConstant.middleGrey,
                ),
                getHeight16,
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherEye,
                  leadingIconHeight: getVerticalSize(16),
                  leadingIconWidth: getHorizontalSize(22),
                  textTitle: AppStrings.viewDetails,
                  onTap: onViewTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherEdit,
                  leadingIconHeight: getVerticalSize(17),
                  leadingIconWidth: getHorizontalSize(17),
                  textTitle: AppStrings.editDetails,
                  onTap: onEditTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherTrash,
                  leadingIconHeight: getVerticalSize(20),
                  leadingIconWidth: getHorizontalSize(14),
                  textTitle: AppStrings.deleteProperty,
                  onTap: onDeleteTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.archived,
                  leadingIconHeight: getVerticalSize(20),
                  leadingIconWidth: getHorizontalSize(14),
                  textTitle: archiveStatusText,
                  onTap: onArchiveTap,
                ),
                getDividerWithMiddleGrey(),
              ],
            ),
          ),
        );
      },
    );
  }

  deleteUnArchiveBottomSheet(
    BuildContext context, {
    required void Function()? onDeleteTap,
    required void Function()? onUnArchiveTap,
    required String archiveStatusText,
  }) async {
    return await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            getVerticalSize(16),
          ),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: getPadding(
            top: getVerticalSize(8),
            left: getHorizontalSize(15),
            right: getHorizontalSize(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  ImageConstant.iconRemove,
                  height: getVerticalSize(4),
                  width: getHorizontalSize(48),
                  color: ColorsConstant.middleGrey,
                ),
                getHeight16,
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherTrash,
                  leadingIconHeight: getVerticalSize(20),
                  leadingIconWidth: getHorizontalSize(14),
                  textTitle: AppStrings.deleteProperty,
                  onTap: onDeleteTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.archived,
                  leadingIconHeight: getVerticalSize(20),
                  leadingIconWidth: getHorizontalSize(14),
                  textTitle: archiveStatusText,
                  onTap: onUnArchiveTap,
                ),
                getDividerWithMiddleGrey(),
              ],
            ),
          ),
        );
      },
    );
  }

  //for view function only
  viewOnlyBottomSheet(
    BuildContext context, {
    required void Function()? onViewItemTap,
  }) async {
    return await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            getVerticalSize(16),
          ),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: getPadding(
            top: getVerticalSize(8),
            left: getHorizontalSize(15),
            right: getHorizontalSize(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  ImageConstant.iconRemove,
                  height: getVerticalSize(4),
                  width: getHorizontalSize(48),
                  color: ColorsConstant.middleGrey,
                ),
                getHeight16,
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherEye,
                  leadingIconHeight: getVerticalSize(17),
                  leadingIconWidth: getHorizontalSize(17),
                  textTitle: 'View List Items',
                  onTap: onViewItemTap,
                ),
                getDividerWithMiddleGrey(),
              ],
            ),
          ),
        );
      },
    );
  }

  //for unit
  unitDetailsBottomSheet(
    BuildContext context, {
    required void Function()? onViewTap,
    required void Function()? onEditTap,
    required void Function()? onDeleteTap,
    required void Function()? onArchiveTap,
    required void Function()? onAddTenantTap,
  }) async {
    return await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            getVerticalSize(16),
          ),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: getPadding(
            top: getVerticalSize(8),
            left: getHorizontalSize(15),
            right: getHorizontalSize(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  ImageConstant.iconRemove,
                  height: getVerticalSize(4),
                  width: getHorizontalSize(48),
                  color: ColorsConstant.middleGrey,
                ),
                getHeight16,
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherEye,
                  leadingIconHeight: getVerticalSize(16),
                  leadingIconWidth: getHorizontalSize(22),
                  textTitle: AppStrings.viewDetails,
                  onTap: onViewTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherEdit,
                  leadingIconHeight: getVerticalSize(17),
                  leadingIconWidth: getHorizontalSize(17),
                  textTitle: AppStrings.editDetails,
                  onTap: onEditTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherTrash,
                  leadingIconHeight: getVerticalSize(20),
                  leadingIconWidth: getHorizontalSize(14),
                  textTitle: AppStrings.deleteProperty,
                  onTap: onDeleteTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.archived,
                  leadingIconHeight: getVerticalSize(20),
                  leadingIconWidth: getHorizontalSize(14),
                  textTitle: AppStrings.archive,
                  onTap: onArchiveTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherUSerPlus,
                  leadingIconHeight: getVerticalSize(20),
                  leadingIconWidth: getHorizontalSize(14),
                  textTitle: AppStrings.addTenant,
                  onTap: onAddTenantTap,
                ),
                getDividerWithMiddleGrey(),
              ],
            ),
          ),
        );
      },
    );
  }

  //for dynamic list
  dynamicListBottomSheet(
    BuildContext context, {
    required void Function()? onAddItemTap,
    required void Function()? onViewItemTap,
  }) async {
    return await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            getVerticalSize(16),
          ),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: getPadding(
            top: getVerticalSize(8),
            left: getHorizontalSize(15),
            right: getHorizontalSize(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  ImageConstant.iconRemove,
                  height: getVerticalSize(4),
                  width: getHorizontalSize(48),
                  color: ColorsConstant.middleGrey,
                ),
                getHeight16,
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconPlus,
                  leadingIconHeight: getVerticalSize(16),
                  leadingIconWidth: getHorizontalSize(22),
                  textTitle: 'Add Items',
                  onTap: onAddItemTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherEye,
                  leadingIconHeight: getVerticalSize(17),
                  leadingIconWidth: getHorizontalSize(17),
                  textTitle: 'View List Items',
                  onTap: onViewItemTap,
                ),
                getDividerWithMiddleGrey(),
              ],
            ),
          ),
        );
      },
    );
  }

  //for dynamic list item
  dynamicListItemBottomSheet(
    BuildContext context, {
    required void Function()? onEditItemTap,
    required void Function()? onDeleteItemTap,
  }) async {
    return await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            getVerticalSize(16),
          ),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: getPadding(
            top: getVerticalSize(8),
            left: getHorizontalSize(15),
            right: getHorizontalSize(15),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  ImageConstant.iconRemove,
                  height: getVerticalSize(4),
                  width: getHorizontalSize(48),
                  color: ColorsConstant.middleGrey,
                ),
                getHeight16,
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherEdit,
                  leadingIconHeight: getVerticalSize(16),
                  leadingIconWidth: getHorizontalSize(22),
                  textTitle: 'Edit Items',
                  onTap: onEditItemTap,
                ),
                getDividerWithMiddleGrey(),
                customListTile(
                  context,
                  leadingIconName: ImageConstant.iconFeatherTrash,
                  leadingIconHeight: getVerticalSize(17),
                  leadingIconWidth: getHorizontalSize(17),
                  textTitle: 'Delete Items',
                  textColor: ColorsConstant.red,
                  leadingIconColor: ColorsConstant.red,
                  onTap: onDeleteItemTap,
                ),
                getDividerWithMiddleGrey(),
              ],
            ),
          ),
        );
      },
    );
  }

  //custom bottom sheet widget

  buildBottomSheetColumn(
    BuildContext context, {
    required Column column,
  }) async {
    return await showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            getVerticalSize(16),
          ),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: getPadding(
            top: getVerticalSize(8),
            left: getHorizontalSize(15),
            right: getHorizontalSize(15),
          ),
          child: SingleChildScrollView(
            child: column,
          ),
        );
      },
    );
  }

  buildNestedPlaceBottomSheet(
    BuildContext context, {
    required void Function()? onAddCountyTap,
    required void Function()? onViewCountyTap,
    required void Function()? onEditCountryTap,
    required void Function()? onDeleteCountryTap,
  }) {
    return buildBottomSheetColumn(
      context,
      column: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            ImageConstant.iconRemove,
            height: getVerticalSize(4),
            width: getHorizontalSize(48),
            color: ColorsConstant.middleGrey,
          ),
          getHeight16,
          customListTile(
            context,
            leadingIconName: ImageConstant.iconPlus,
            leadingIconHeight: getVerticalSize(16),
            leadingIconWidth: getHorizontalSize(22),
            textTitle: 'Add County',
            onTap: onAddCountyTap,
          ),
          getDividerWithMiddleGrey(),
          customListTile(
            context,
            leadingIconName: ImageConstant.iconFeatherEye,
            leadingIconHeight: getVerticalSize(16),
            leadingIconWidth: getHorizontalSize(22),
            textTitle: 'View County',
            onTap: onViewCountyTap,
          ),
          getDividerWithMiddleGrey(),
          customListTile(
            context,
            leadingIconName: ImageConstant.iconFeatherEdit,
            leadingIconHeight: getVerticalSize(16),
            leadingIconWidth: getHorizontalSize(22),
            textTitle: 'Edit Country',
            onTap: onEditCountryTap,
          ),
          getDividerWithMiddleGrey(),
          customListTile(
            context,
            leadingIconName: ImageConstant.iconFeatherTrash,
            leadingIconHeight: getVerticalSize(17),
            leadingIconWidth: getHorizontalSize(17),
            textTitle: 'Delete Country',
            textColor: ColorsConstant.red,
            leadingIconColor: ColorsConstant.red,
            onTap: onDeleteCountryTap,
          ),
          getDividerWithMiddleGrey(),
        ],
      ),
    );
  }
}
