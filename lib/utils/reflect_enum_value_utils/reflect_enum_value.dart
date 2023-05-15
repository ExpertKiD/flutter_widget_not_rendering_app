String reflectEnumString(Enum enumValue) {
  return enumValue.toString().split('.').last;
}
