import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';

class CustomDropDownContainer extends StatefulWidget {
  const CustomDropDownContainer({
    required this.hintText,
    this.width,
    this.border,
    required this.listOfContents,
    required this.function,
    super.key,
  });

  final String hintText;
  final double? width;
  final BoxBorder? border;
  final List<String> listOfContents;
  final Function(String) function;

  @override
  State<CustomDropDownContainer> createState() =>
      _CustomDropDownContainerState();
}

class _CustomDropDownContainerState extends State<CustomDropDownContainer> {
  List<DropdownMenuItem<String>> getListOfContents() {
    return widget.listOfContents.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: getTextLight14(),
        ),
      );
    }).toList();
  }

  String? selectedValue;

  // @override
  // void initState() {

  //   widget.function(selectedValue!);

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(48),
      width: widget.width ?? double.maxFinite,
      padding: getPadding(
        top: getVerticalSize(14),
        bottom: getVerticalSize(14),
        left: getHorizontalSize(16),
        right: getHorizontalSize(24),
      ),
      decoration: BoxDecoration(
        color: ColorsConstant.white,
        borderRadius: BorderRadius.circular(
          getVerticalSize(24),
        ),
        border: widget.border ??
            Border.all(
              color: ColorsConstant.grey,
              width: getHorizontalSize(1),
            ),
      ),
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(24),
          items: getListOfContents(),
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue.toString();
              widget.function(selectedValue!);
            });
          },
          hint: Text(
            widget.hintText,
            style: getTextLight14(color: ColorsConstant.grey),
          ),
          value: selectedValue,
          isExpanded: true,
          underline: const SizedBox.shrink(),
        ),
      ),
    );
  }
}

//for role
List<String> listOfRoles = ['Finance', 'Maintainer', 'Tenant'];

Widget getRoleDropDownContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfRoles,
    hintText: 'Finance',
  );
}

//for role
List<String> listOfCounties = [
  'Greater London',
  'West Midlands',
  'Greater Manchester',
  'West Yorkshire',
  'Kent',
  'Hampshire',
  'Essex',
  'Lancashire',
  'Merseyside',
  'South Yorkshire',
  'Devon',
  'Surrey',
  'Hertfordshire',
  'Nottinghamshire',
  'Tyne and Wear',
  'Staffordshire',
  'North Yorkshire',
  'Lincolnshire',
  'Cheshire',
  'Leicestershire',
  'Derbyshire',
  'Somerset',
  'County Durham',
  'Gloucestershire',
  'Berkshire',
  'Norfolk',
  'West Sussex',
  'Cambridgeshire',
  'East Sussex',
  'Buckinghamshire',
  'Dorset',
  'Suffolk',
  'Northamptonshire',
  'Wiltshire',
  'Oxfordshire',
  'Bedfordshire',
  'East Yorkshire',
  'Worcestershire',
  'Warwickshire',
  'Cornwall',
  'Shropshire',
  'Cumbria',
  'Bristol',
  'Northumberland',
  'Herefordshire',
  'Isle of Wight',
  'Rutland',
];

Widget getCountyDropDownContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfCounties,
    hintText: 'Greter London',
  );
}

//for Country
List<String> listOfCountries = ['England', 'USA'];

Widget getCountryDropDownContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfCountries,
    hintText: 'England',
  );
}

List<String> listOfExistingFile = [
  'img_1.jpeg',
  'img_2.jpeg',
  'img_3.jpeg',
  'img_4.jpeg'
];

Widget getExistingFileDropDownContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfExistingFile,
    hintText: 'select file ',
  );
}

List<String> listOfDocumentType = [
  'certificate',
  'citizenship',
  'passport',
  'National ID'
];

Widget getDocumentTypeDropDownContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfDocumentType,
    hintText: 'select document ',
  );
}

List<String> listOfOwnerType = [
  'Sole Traders',
  'Limited Company',
];

Widget getOwnerTypeDropDownContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfOwnerType,
    hintText: 'select one ',
  );
}

List<String> listOfOwnershipType = ['Freehold', 'Leasehold', 'Rent-to-Rent'];

Widget getOwnershipTypeDropDownContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfOwnershipType,
    hintText: 'select one ',
  );
}

//for property type
List<String> listOfPorpertyType = ['House', 'Flat'];
Widget getPropertyTypeContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfPorpertyType,
    hintText: 'House',
  );
}

//for unit
List<String> listOfUnit = ['M3', 'M4'];
Widget getUnitContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(165),
    function: function,
    listOfContents: listOfUnit,
    hintText: 'M3',
  );
}

//for Listing contact
List<String> listOfContact = ['Sarah Joseph', 'Eliabeth Joseph'];
Widget getListOfContactContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(165),
    function: function,
    listOfContents: listOfContact,
    hintText: 'Sarah Joseph',
  );
}

//for active
List<String> listOfActiveInfo = ['Active', 'In-Active'];
Widget getActiveInfoContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(165),
    function: function,
    listOfContents: listOfActiveInfo,
    hintText: 'Active',
  );
}

//for inventory status
List<String> listOfInventoryStatus = ['Check-In', 'Check-Out'];
Widget getInventoryStatusContainer({
  required Function(String) function,
  double? width,
}) {
  return CustomDropDownContainer(
    width: width ?? double.maxFinite,
    function: function,
    listOfContents: listOfInventoryStatus,
    hintText: 'Check-In',
  );
}

List<String> listOfProperty = [
  'P001 109 Olney Street',
  'P002 108 Williams Street'
];

//for list of property

Widget getListOfPropertyContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: double.maxFinite,
    function: function,
    listOfContents: listOfProperty,
    hintText: 'P001 109 Olney Street',
  );
}

List<String> listOfFurnished = ['Furnished', 'Semi Furnished'];

//for list of furnished

Widget getListOfFurnishedContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: double.maxFinite,
    function: function,
    listOfContents: listOfFurnished,
    hintText: 'Furnished',
  );
}

List<String> listOfFloor = ['Ground Floor', '1st Floor', '2nd Floor'];

//for list of furnished

Widget getListOfFloorContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: double.maxFinite,
    function: function,
    listOfContents: listOfFloor,
    hintText: 'Ground Floor',
  );
}

List<String> listOfRoomType = ['Kitchen', 'Hall Room', 'Bedroom'];

//for list of furnished

Widget getListOfRoomTypeContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: double.maxFinite,
    function: function,
    listOfContents: listOfRoomType,
    hintText: 'Kitchen',
  );
}

//for list of dropdown unit
List<String> listOfDropdownUnit = [
  'U001 Apartment 01',
  'U002 Apartment 02',
];
Widget getListOfUnitContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: double.maxFinite,
    function: function,
    listOfContents: listOfDropdownUnit,
    hintText: 'U001 Apartment 01',
  );
}

//for list of tenant
List<String> listOfTenant = [
  'T001 Elizabeth Olsen',
  'T002 Elizabeth Olsen',
];
Widget getListOfTenantContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(281),
    function: function,
    listOfContents: listOfTenant,
    hintText: 'T001 Elizabeth Olsen',
  );
}

//for list of tenancy type
List<String> listOfTenancyType = [
  'Assured Shorthold Tenancy (AST)',
  'Assured Shorthold Tenancy (AST)',
];
Widget getListOfTenancyTypeContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(281),
    function: function,
    listOfContents: listOfTenancyType,
    hintText: 'Assured Shorthold Tenancy (AST)',
  );
}

//for list of contract frequency
List<String> listOfContractFrequency = [
  'Year',
  'Month',
  '3 month',
  '6 month',
];
Widget getListOfContractFrequencyContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(165),
    function: function,
    listOfContents: listOfContractFrequency,
    hintText: 'Year',
  );
}

//for list of rent cost frequency
List<String> listOfRentCostFrequency = [
  'Year',
  'Month',
  '3 month',
  '6 month',
];
Widget getListOfRentCostFrequencyContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(165),
    function: function,
    listOfContents: listOfRentCostFrequency,
    hintText: 'Year',
  );
}

List<String> listOfTaxRate = [
  '0%',
  '5%',
  '13%',
  '18%',
];
Widget getListOfTaxRateContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    width: getHorizontalSize(165),
    function: function,
    listOfContents: listOfTaxRate,
    hintText: '0%',
  );
}

//for list of Payment Term
List<String> listOfPaymentTerm = [
  'Advance infirst date',
  'Advance insecond date',
  'Advance inthird date',
];
Widget getListOfPaymentTermContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfPaymentTerm,
    hintText: 'Advance infirst date',
  );
}

//for list of Payment Frequency
List<String> listOfPaymentFrequency = [
  'Monthly',
  'Quarterly',
  'Yearly',
];
Widget getListOfPaymentFrequencyContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfPaymentFrequency,
    hintText: 'Monthly',
  );
}

//for list of Balance Type
List<String> listOfBalanceType = [
  'Arrears1',
  'Arrears2',
  'Arrears3',
];
Widget getListOfBalanceTypeContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfBalanceType,
    hintText: 'Arrears1',
    border: const Border.fromBorderSide(BorderSide.none),
  );
}

//for list of Charges Type
List<String> listOfChargesType = [
  'Security Deposit1',
  'Security Deposit2',
  'Security Deposit3',
];
Widget getListOfChargesTypeContainer({
  required Function(String) function,
  BoxBorder? border,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfChargesType,
    hintText: 'Security Deposit1',
    border: border ??
        Border.all(
          color: ColorsConstant.grey,
          width: getHorizontalSize(1),
        ),
  );
}

//for list of Bank Account Details
List<String> listOfSelectBank = [
  'Security One',
  'Security Two',
  'Security Three',
];
Widget getListOfSelectBankContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfSelectBank,
    hintText: 'Security One',
    border: const Border.fromBorderSide(BorderSide.none),
  );
}

//for list of late Fee Charges
List<String> listOfLateFeesCharge = [
  'Security One',
  'Security Two',
  'Security Three',
];
Widget getListOfLateFeesChargeContainer({
  required Function(String) function,
}) {
  return CustomDropDownContainer(
    function: function,
    listOfContents: listOfLateFeesCharge,
    hintText: 'Security One',
    border: const Border.fromBorderSide(BorderSide.none),
  );
}
