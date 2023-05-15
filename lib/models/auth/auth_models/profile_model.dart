
class ProfileModel {
  String? id;
  SystemId? systemId;
  String? role;
  bool? allPropertyUnitAccess;
  List<dynamic>? properties;
  List<dynamic>? units;
  Granted? granted;
  bool? isArchived;
  bool? isDeleted;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? customerId;
  String? tenantId;

  ProfileModel({this.id, this.systemId, this.role, this.allPropertyUnitAccess, this.properties, this.units, this.granted, this.isArchived, this.isDeleted, this.createdAt, this.updatedAt, this.v, this.customerId, this.tenantId});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    systemId = json["systemID"] == null ? null : SystemId.fromJson(json["systemID"]);
    role = json["role"];
    allPropertyUnitAccess = json["ALL_PROPERTY_UNIT_ACCESS"];
    properties = json["properties"] ?? [];
    units = json["units"] ?? [];
    granted = json["granted"] == null ? null : Granted.fromJson(json["granted"]);
    isArchived = json["isArchived"];
    isDeleted = json["isDeleted"];
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
    v = json["__v"];
    customerId = json["customerID"];
    tenantId = json["tenantID"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    if(systemId != null) {
      _data["systemID"] = systemId?.toJson();
    }
    _data["role"] = role;
    _data["ALL_PROPERTY_UNIT_ACCESS"] = allPropertyUnitAccess;
    if(properties != null) {
      _data["properties"] = properties;
    }
    if(units != null) {
      _data["units"] = units;
    }
    if(granted != null) {
      _data["granted"] = granted?.toJson();
    }
    _data["isArchived"] = isArchived;
    _data["isDeleted"] = isDeleted;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    _data["customerID"] = customerId;
    _data["tenantID"] = tenantId;
    return _data;
  }
}

class Granted {
  String? id;
  String? name;
  String? role;
  bool? isSeed;
  bool? canEdit;
  bool? canDelete;
  List<dynamic>? properties;
  List<dynamic>? units;
  bool? isDeleted;
  bool? isArchived;
  Granted1? granted;
  String? createdAt;
  String? updatedAt;
  int? v;

  Granted({this.id, this.name, this.role, this.isSeed, this.canEdit, this.canDelete, this.properties, this.units, this.isDeleted, this.isArchived, this.granted, this.createdAt, this.updatedAt, this.v});

  Granted.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    name = json["name"];
    role = json["role"];
    isSeed = json["isSeed"];
    canEdit = json["canEdit"];
    canDelete = json["canDelete"];
    properties = json["properties"] ?? [];
    units = json["units"] ?? [];
    isDeleted = json["isDeleted"];
    isArchived = json["isArchived"];
    granted = json["granted"] == null ? null : Granted1.fromJson(json["granted"]);
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
    v = json["__v"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["name"] = name;
    _data["role"] = role;
    _data["isSeed"] = isSeed;
    _data["canEdit"] = canEdit;
    _data["canDelete"] = canDelete;
    if(properties != null) {
      _data["properties"] = properties;
    }
    if(units != null) {
      _data["units"] = units;
    }
    _data["isDeleted"] = isDeleted;
    _data["isArchived"] = isArchived;
    if(granted != null) {
      _data["granted"] = granted?.toJson();
    }
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    return _data;
  }
}

class Granted1 {
  bool? allPropertyUnitAccess;
  Auth? auth;
  Tenancy? tenancy;
  Rental? rental;
  Configuration? configuration;
  Document? document;
  Communication? communication;
  Inventory? inventory;
  Finance? finance;
  Candidate? candidate;
  Booking? booking;
  RepairAndMaintenance? repairAndMaintenance;
  Notes? notes;
  Task? task;
  Bank? bank;
  Tools? tools;
  bool? or;

  Granted1({this.allPropertyUnitAccess, this.auth, this.tenancy, this.rental, this.configuration, this.document, this.communication, this.inventory, this.finance, this.candidate, this.booking, this.repairAndMaintenance, this.notes, this.task, this.bank, this.tools, this.or});

  Granted1.fromJson(Map<String, dynamic> json) {
    allPropertyUnitAccess = json["ALL_PROPERTY_UNIT_ACCESS"];
    auth = json["AUTH"] == null ? null : Auth.fromJson(json["AUTH"]);
    tenancy = json["TENANCY"] == null ? null : Tenancy.fromJson(json["TENANCY"]);
    rental = json["RENTAL"] == null ? null : Rental.fromJson(json["RENTAL"]);
    configuration = json["CONFIGURATION"] == null ? null : Configuration.fromJson(json["CONFIGURATION"]);
    document = json["DOCUMENT"] == null ? null : Document.fromJson(json["DOCUMENT"]);
    communication = json["COMMUNICATION"] == null ? null : Communication.fromJson(json["COMMUNICATION"]);
    inventory = json["INVENTORY"] == null ? null : Inventory.fromJson(json["INVENTORY"]);
    finance = json["FINANCE"] == null ? null : Finance.fromJson(json["FINANCE"]);
    candidate = json["CANDIDATE"] == null ? null : Candidate.fromJson(json["CANDIDATE"]);
    booking = json["BOOKING"] == null ? null : Booking.fromJson(json["BOOKING"]);
    repairAndMaintenance = json["REPAIR_AND_MAINTENANCE"] == null ? null : RepairAndMaintenance.fromJson(json["REPAIR_AND_MAINTENANCE"]);
    notes = json["NOTES"] == null ? null : Notes.fromJson(json["NOTES"]);
    task = json["TASK"] == null ? null : Task.fromJson(json["TASK"]);
    bank = json["BANK"] == null ? null : Bank.fromJson(json["BANK"]);
    tools = json["TOOLS"] == null ? null : Tools.fromJson(json["TOOLS"]);
    or = json["OR"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ALL_PROPERTY_UNIT_ACCESS"] = allPropertyUnitAccess;
    if(auth != null) {
      _data["AUTH"] = auth?.toJson();
    }
    if(tenancy != null) {
      _data["TENANCY"] = tenancy?.toJson();
    }
    if(rental != null) {
      _data["RENTAL"] = rental?.toJson();
    }
    if(configuration != null) {
      _data["CONFIGURATION"] = configuration?.toJson();
    }
    if(document != null) {
      _data["DOCUMENT"] = document?.toJson();
    }
    if(communication != null) {
      _data["COMMUNICATION"] = communication?.toJson();
    }
    if(inventory != null) {
      _data["INVENTORY"] = inventory?.toJson();
    }
    if(finance != null) {
      _data["FINANCE"] = finance?.toJson();
    }
    if(candidate != null) {
      _data["CANDIDATE"] = candidate?.toJson();
    }
    if(booking != null) {
      _data["BOOKING"] = booking?.toJson();
    }
    if(repairAndMaintenance != null) {
      _data["REPAIR_AND_MAINTENANCE"] = repairAndMaintenance?.toJson();
    }
    if(notes != null) {
      _data["NOTES"] = notes?.toJson();
    }
    if(task != null) {
      _data["TASK"] = task?.toJson();
    }
    if(bank != null) {
      _data["BANK"] = bank?.toJson();
    }
    if(tools != null) {
      _data["TOOLS"] = tools?.toJson();
    }
    _data["OR"] = or;
    return _data;
  }
}

class Tools {
  bool? addMeterReading;
  bool? editMeterReading;
  bool? delMeterReading;
  bool? readMeterReading;
  bool? addTrip;
  bool? editTrip;
  bool? delTrip;
  bool? readTrip;

  Tools({this.addMeterReading, this.editMeterReading, this.delMeterReading, this.readMeterReading, this.addTrip, this.editTrip, this.delTrip, this.readTrip});

  Tools.fromJson(Map<String, dynamic> json) {
    addMeterReading = json["ADD_METER_READING"];
    editMeterReading = json["EDIT_METER_READING"];
    delMeterReading = json["DEL_METER_READING"];
    readMeterReading = json["READ_METER_READING"];
    addTrip = json["ADD_TRIP"];
    editTrip = json["EDIT_TRIP"];
    delTrip = json["DEL_TRIP"];
    readTrip = json["READ_TRIP"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_METER_READING"] = addMeterReading;
    _data["EDIT_METER_READING"] = editMeterReading;
    _data["DEL_METER_READING"] = delMeterReading;
    _data["READ_METER_READING"] = readMeterReading;
    _data["ADD_TRIP"] = addTrip;
    _data["EDIT_TRIP"] = editTrip;
    _data["DEL_TRIP"] = delTrip;
    _data["READ_TRIP"] = readTrip;
    return _data;
  }
}

class Bank {
  bool? addBank;
  bool? editBank;
  bool? delBank;
  bool? readBank;

  Bank({this.addBank, this.editBank, this.delBank, this.readBank});

  Bank.fromJson(Map<String, dynamic> json) {
    addBank = json["ADD_BANK"];
    editBank = json["EDIT_BANK"];
    delBank = json["DEL_BANK"];
    readBank = json["READ_BANK"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_BANK"] = addBank;
    _data["EDIT_BANK"] = editBank;
    _data["DEL_BANK"] = delBank;
    _data["READ_BANK"] = readBank;
    return _data;
  }
}

class Task {
  bool? addTask;
  bool? editTask;
  bool? delTask;
  bool? readTask;

  Task({this.addTask, this.editTask, this.delTask, this.readTask});

  Task.fromJson(Map<String, dynamic> json) {
    addTask = json["ADD_TASK"];
    editTask = json["EDIT_TASK"];
    delTask = json["DEL_TASK"];
    readTask = json["READ_TASK"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_TASK"] = addTask;
    _data["EDIT_TASK"] = editTask;
    _data["DEL_TASK"] = delTask;
    _data["READ_TASK"] = readTask;
    return _data;
  }
}

class Notes {
  bool? addNotes;
  bool? editNotes;
  bool? delNotes;
  bool? readNotes;

  Notes({this.addNotes, this.editNotes, this.delNotes, this.readNotes});

  Notes.fromJson(Map<String, dynamic> json) {
    addNotes = json["ADD_NOTES"];
    editNotes = json["EDIT_NOTES"];
    delNotes = json["DEL_NOTES"];
    readNotes = json["READ_NOTES"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_NOTES"] = addNotes;
    _data["EDIT_NOTES"] = editNotes;
    _data["DEL_NOTES"] = delNotes;
    _data["READ_NOTES"] = readNotes;
    return _data;
  }
}

class RepairAndMaintenance {
  bool? addRepairAndMaintenance;
  bool? editRepairAndMaintenance;
  bool? delRepairAndMaintenance;
  bool? readRepairAndMaintenance;

  RepairAndMaintenance({this.addRepairAndMaintenance, this.editRepairAndMaintenance, this.delRepairAndMaintenance, this.readRepairAndMaintenance});

  RepairAndMaintenance.fromJson(Map<String, dynamic> json) {
    addRepairAndMaintenance = json["ADD_REPAIR_AND_MAINTENANCE"];
    editRepairAndMaintenance = json["EDIT_REPAIR_AND_MAINTENANCE"];
    delRepairAndMaintenance = json["DEL_REPAIR_AND_MAINTENANCE"];
    readRepairAndMaintenance = json["READ_REPAIR_AND_MAINTENANCE"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_REPAIR_AND_MAINTENANCE"] = addRepairAndMaintenance;
    _data["EDIT_REPAIR_AND_MAINTENANCE"] = editRepairAndMaintenance;
    _data["DEL_REPAIR_AND_MAINTENANCE"] = delRepairAndMaintenance;
    _data["READ_REPAIR_AND_MAINTENANCE"] = readRepairAndMaintenance;
    return _data;
  }
}

class Booking {
  bool? addBooking;
  bool? editBooking;
  bool? delBooking;
  bool? readBooking;

  Booking({this.addBooking, this.editBooking, this.delBooking, this.readBooking});

  Booking.fromJson(Map<String, dynamic> json) {
    addBooking = json["ADD_BOOKING"];
    editBooking = json["EDIT_BOOKING"];
    delBooking = json["DEL_BOOKING"];
    readBooking = json["READ_BOOKING"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_BOOKING"] = addBooking;
    _data["EDIT_BOOKING"] = editBooking;
    _data["DEL_BOOKING"] = delBooking;
    _data["READ_BOOKING"] = readBooking;
    return _data;
  }
}

class Candidate {
  bool? addCandidate;
  bool? editCandidate;
  bool? delCandidate;
  bool? readCandidate;

  Candidate({this.addCandidate, this.editCandidate, this.delCandidate, this.readCandidate});

  Candidate.fromJson(Map<String, dynamic> json) {
    addCandidate = json["ADD_CANDIDATE"];
    editCandidate = json["EDIT_CANDIDATE"];
    delCandidate = json["DEL_CANDIDATE"];
    readCandidate = json["READ_CANDIDATE"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_CANDIDATE"] = addCandidate;
    _data["EDIT_CANDIDATE"] = editCandidate;
    _data["DEL_CANDIDATE"] = delCandidate;
    _data["READ_CANDIDATE"] = readCandidate;
    return _data;
  }
}

class Finance {
  bool? addLoanAndMortgage;
  bool? editLoanAndMortgage;
  bool? delLoanAndMortgage;
  bool? readLoanAndMortgage;
  bool? addInvoice;
  bool? editInvoice;
  bool? delInvoice;
  bool? readInvoice;
  bool? reconciliation;
  bool? viewStatement;
  bool? accessReport;
  bool? accessTrash;

  Finance({this.addLoanAndMortgage, this.editLoanAndMortgage, this.delLoanAndMortgage, this.readLoanAndMortgage, this.addInvoice, this.editInvoice, this.delInvoice, this.readInvoice, this.reconciliation, this.viewStatement, this.accessReport, this.accessTrash});

  Finance.fromJson(Map<String, dynamic> json) {
    addLoanAndMortgage = json["ADD_LOAN_AND_MORTGAGE"];
    editLoanAndMortgage = json["EDIT_LOAN_AND_MORTGAGE"];
    delLoanAndMortgage = json["DEL_LOAN_AND_MORTGAGE"];
    readLoanAndMortgage = json["READ_LOAN_AND_MORTGAGE"];
    addInvoice = json["ADD_INVOICE"];
    editInvoice = json["EDIT_INVOICE"];
    delInvoice = json["DEL_INVOICE"];
    readInvoice = json["READ_INVOICE"];
    reconciliation = json["RECONCILIATION"];
    viewStatement = json["VIEW_STATEMENT"];
    accessReport = json["ACCESS_REPORT"];
    accessTrash = json["ACCESS_TRASH"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_LOAN_AND_MORTGAGE"] = addLoanAndMortgage;
    _data["EDIT_LOAN_AND_MORTGAGE"] = editLoanAndMortgage;
    _data["DEL_LOAN_AND_MORTGAGE"] = delLoanAndMortgage;
    _data["READ_LOAN_AND_MORTGAGE"] = readLoanAndMortgage;
    _data["ADD_INVOICE"] = addInvoice;
    _data["EDIT_INVOICE"] = editInvoice;
    _data["DEL_INVOICE"] = delInvoice;
    _data["READ_INVOICE"] = readInvoice;
    _data["RECONCILIATION"] = reconciliation;
    _data["VIEW_STATEMENT"] = viewStatement;
    _data["ACCESS_REPORT"] = accessReport;
    _data["ACCESS_TRASH"] = accessTrash;
    return _data;
  }
}

class Inventory {
  bool? addInventory;
  bool? editInventory;
  bool? delInventory;
  bool? readInventory;

  Inventory({this.addInventory, this.editInventory, this.delInventory, this.readInventory});

  Inventory.fromJson(Map<String, dynamic> json) {
    addInventory = json["ADD_INVENTORY"];
    editInventory = json["EDIT_INVENTORY"];
    delInventory = json["DEL_INVENTORY"];
    readInventory = json["READ_INVENTORY"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_INVENTORY"] = addInventory;
    _data["EDIT_INVENTORY"] = editInventory;
    _data["DEL_INVENTORY"] = delInventory;
    _data["READ_INVENTORY"] = readInventory;
    return _data;
  }
}

class Communication {
  bool? sendMessage;
  bool? sendNotification;

  Communication({this.sendMessage, this.sendNotification});

  Communication.fromJson(Map<String, dynamic> json) {
    sendMessage = json["SEND_MESSAGE"];
    sendNotification = json["SEND_NOTIFICATION"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["SEND_MESSAGE"] = sendMessage;
    _data["SEND_NOTIFICATION"] = sendNotification;
    return _data;
  }
}

class Document {
  bool? addDocument;
  bool? editDocument;
  bool? delDocument;
  bool? readDocument;

  Document({this.addDocument, this.editDocument, this.delDocument, this.readDocument});

  Document.fromJson(Map<String, dynamic> json) {
    addDocument = json["ADD_DOCUMENT"];
    editDocument = json["EDIT_DOCUMENT"];
    delDocument = json["DEL_DOCUMENT"];
    readDocument = json["READ_DOCUMENT"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_DOCUMENT"] = addDocument;
    _data["EDIT_DOCUMENT"] = editDocument;
    _data["DEL_DOCUMENT"] = delDocument;
    _data["READ_DOCUMENT"] = readDocument;
    return _data;
  }
}

class Configuration {
  bool? addAdministrativeSetup;
  bool? editAdministrativeSetup;
  bool? delAdministrativeSetup;
  bool? readAdministrativeSetup;
  bool? manageNotification;
  bool? viewSubscription;
  bool? manageSettings;

  Configuration({this.addAdministrativeSetup, this.editAdministrativeSetup, this.delAdministrativeSetup, this.readAdministrativeSetup, this.manageNotification, this.viewSubscription, this.manageSettings});

  Configuration.fromJson(Map<String, dynamic> json) {
    addAdministrativeSetup = json["ADD_ADMINISTRATIVE_SETUP"];
    editAdministrativeSetup = json["EDIT_ADMINISTRATIVE_SETUP"];
    delAdministrativeSetup = json["DEL_ADMINISTRATIVE_SETUP"];
    readAdministrativeSetup = json["READ_ADMINISTRATIVE_SETUP"];
    manageNotification = json["MANAGE_NOTIFICATION"];
    viewSubscription = json["VIEW_SUBSCRIPTION"];
    manageSettings = json["MANAGE_SETTINGS"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_ADMINISTRATIVE_SETUP"] = addAdministrativeSetup;
    _data["EDIT_ADMINISTRATIVE_SETUP"] = editAdministrativeSetup;
    _data["DEL_ADMINISTRATIVE_SETUP"] = delAdministrativeSetup;
    _data["READ_ADMINISTRATIVE_SETUP"] = readAdministrativeSetup;
    _data["MANAGE_NOTIFICATION"] = manageNotification;
    _data["VIEW_SUBSCRIPTION"] = viewSubscription;
    _data["MANAGE_SETTINGS"] = manageSettings;
    return _data;
  }
}

class Rental {
  Property? property;
  Unit? unit;
  Owner? owner;

  Rental({this.property, this.unit, this.owner});

  Rental.fromJson(Map<String, dynamic> json) {
    property = json["PROPERTY"] == null ? null : Property.fromJson(json["PROPERTY"]);
    unit = json["UNIT"] == null ? null : Unit.fromJson(json["UNIT"]);
    owner = json["OWNER"] == null ? null : Owner.fromJson(json["OWNER"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(property != null) {
      _data["PROPERTY"] = property?.toJson();
    }
    if(unit != null) {
      _data["UNIT"] = unit?.toJson();
    }
    if(owner != null) {
      _data["OWNER"] = owner?.toJson();
    }
    return _data;
  }
}

class Owner {
  bool? addOwner;
  bool? editOwner;
  bool? delOwner;
  bool? readOwner;

  Owner({this.addOwner, this.editOwner, this.delOwner, this.readOwner});

  Owner.fromJson(Map<String, dynamic> json) {
    addOwner = json["ADD_OWNER"];
    editOwner = json["EDIT_OWNER"];
    delOwner = json["DEL_OWNER"];
    readOwner = json["READ_OWNER"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_OWNER"] = addOwner;
    _data["EDIT_OWNER"] = editOwner;
    _data["DEL_OWNER"] = delOwner;
    _data["READ_OWNER"] = readOwner;
    return _data;
  }
}

class Unit {
  bool? addUnit;
  bool? editUnit;
  bool? delUnit;
  bool? readUnit;
  bool? addListingUnit;
  bool? editListingUnit;
  bool? delListingUnit;
  bool? readListingUnit;

  Unit({this.addUnit, this.editUnit, this.delUnit, this.readUnit, this.addListingUnit, this.editListingUnit, this.delListingUnit, this.readListingUnit});

  Unit.fromJson(Map<String, dynamic> json) {
    addUnit = json["ADD_UNIT"];
    editUnit = json["EDIT_UNIT"];
    delUnit = json["DEL_UNIT"];
    readUnit = json["READ_UNIT"];
    addListingUnit = json["ADD_LISTING_UNIT"];
    editListingUnit = json["EDIT_LISTING_UNIT"];
    delListingUnit = json["DEL_LISTING_UNIT"];
    readListingUnit = json["READ_LISTING_UNIT"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_UNIT"] = addUnit;
    _data["EDIT_UNIT"] = editUnit;
    _data["DEL_UNIT"] = delUnit;
    _data["READ_UNIT"] = readUnit;
    _data["ADD_LISTING_UNIT"] = addListingUnit;
    _data["EDIT_LISTING_UNIT"] = editListingUnit;
    _data["DEL_LISTING_UNIT"] = delListingUnit;
    _data["READ_LISTING_UNIT"] = readListingUnit;
    return _data;
  }
}

class Property {
  bool? addProperty;
  bool? editProperty;
  bool? delProperty;
  bool? readProperty;

  Property({this.addProperty, this.editProperty, this.delProperty, this.readProperty});

  Property.fromJson(Map<String, dynamic> json) {
    addProperty = json["ADD_PROPERTY"];
    editProperty = json["EDIT_PROPERTY"];
    delProperty = json["DEL_PROPERTY"];
    readProperty = json["READ_PROPERTY"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_PROPERTY"] = addProperty;
    _data["EDIT_PROPERTY"] = editProperty;
    _data["DEL_PROPERTY"] = delProperty;
    _data["READ_PROPERTY"] = readProperty;
    return _data;
  }
}

class Tenancy {
  bool? addTenant;
  bool? editTenant;
  bool? delTenant;
  bool? readTenant;
  bool? addTenancy;
  bool? editTenancy;
  bool? delTenancy;
  bool? readTenancy;

  Tenancy({this.addTenant, this.editTenant, this.delTenant, this.readTenant, this.addTenancy, this.editTenancy, this.delTenancy, this.readTenancy});

  Tenancy.fromJson(Map<String, dynamic> json) {
    addTenant = json["ADD_TENANT"];
    editTenant = json["EDIT_TENANT"];
    delTenant = json["DEL_TENANT"];
    readTenant = json["READ_TENANT"];
    addTenancy = json["ADD_TENANCY"];
    editTenancy = json["EDIT_TENANCY"];
    delTenancy = json["DEL_TENANCY"];
    readTenancy = json["READ_TENANCY"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_TENANT"] = addTenant;
    _data["EDIT_TENANT"] = editTenant;
    _data["DEL_TENANT"] = delTenant;
    _data["READ_TENANT"] = readTenant;
    _data["ADD_TENANCY"] = addTenancy;
    _data["EDIT_TENANCY"] = editTenancy;
    _data["DEL_TENANCY"] = delTenancy;
    _data["READ_TENANCY"] = readTenancy;
    return _data;
  }
}

class Auth {
  bool? addRole;
  bool? editRole;
  bool? delRole;
  bool? readRole;
  bool? assignRole;
  bool? addUser;
  bool? editUser;
  bool? delUser;
  bool? readUser;
  bool? accessSignature;

  Auth({this.addRole, this.editRole, this.delRole, this.readRole, this.assignRole, this.addUser, this.editUser, this.delUser, this.readUser, this.accessSignature});

  Auth.fromJson(Map<String, dynamic> json) {
    addRole = json["ADD_ROLE"];
    editRole = json["EDIT_ROLE"];
    delRole = json["DEL_ROLE"];
    readRole = json["READ_ROLE"];
    assignRole = json["ASSIGN_ROLE"];
    addUser = json["ADD_USER"];
    editUser = json["EDIT_USER"];
    delUser = json["DEL_USER"];
    readUser = json["READ_USER"];
    accessSignature = json["ACCESS_SIGNATURE"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ADD_ROLE"] = addRole;
    _data["EDIT_ROLE"] = editRole;
    _data["DEL_ROLE"] = delRole;
    _data["READ_ROLE"] = readRole;
    _data["ASSIGN_ROLE"] = assignRole;
    _data["ADD_USER"] = addUser;
    _data["EDIT_USER"] = editUser;
    _data["DEL_USER"] = delUser;
    _data["READ_USER"] = readUser;
    _data["ACCESS_SIGNATURE"] = accessSignature;
    return _data;
  }
}

class SystemId {
  String? id;
  Name? name;
  String? email;
  String? phone;
  String? companyName;
  String? vatRegistration;
  String? companyRegistration;
  bool? isDeleted;
  bool? isActive;
  bool? forceLogout;
  String? createdAt;
  String? updatedAt;
  int? v;

  SystemId({this.id, this.name, this.email, this.phone, this.companyName, this.vatRegistration, this.companyRegistration, this.isDeleted, this.isActive, this.forceLogout, this.createdAt, this.updatedAt, this.v});

  SystemId.fromJson(Map<String, dynamic> json) {
    id = json["_id"];
    name = json["name"] == null ? null : Name.fromJson(json["name"]);
    email = json["email"];
    phone = json["phone"];
    companyName = json["companyName"];
    vatRegistration = json["vatRegistration"];
    companyRegistration = json["companyRegistration"];
    isDeleted = json["isDeleted"];
    isActive = json["isActive"];
    forceLogout = json["forceLogout"];
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
    v = json["__v"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    if(name != null) {
      _data["name"] = name?.toJson();
    }
    _data["email"] = email;
    _data["phone"] = phone;
    _data["companyName"] = companyName;
    _data["vatRegistration"] = vatRegistration;
    _data["companyRegistration"] = companyRegistration;
    _data["isDeleted"] = isDeleted;
    _data["isActive"] = isActive;
    _data["forceLogout"] = forceLogout;
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    return _data;
  }
}

class Name {
  String? first;
  String? last;

  Name({this.first, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    first = json["first"];
    last = json["last"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["first"] = first;
    _data["last"] = last;
    return _data;
  }
}