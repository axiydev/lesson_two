class Account {
  String? emailAddress;
  String? name;
  Account({this.emailAddress, this.name});

  get getEmailAddress => emailAddress;
  get getName => name;
  set setName(String? name) => this.name = name;
  set setEmailAddress(String? emailAddress) => this.emailAddress = emailAddress;
}

class AddressBook extends Account {
  @override
  String? name;
  Contact? contact;
  AddressBook({this.name, this.contact});

  @override
  get getName => name;

  @override
  set setName(String? name) => this.name = name;

  get getContact => contact;
  get getContacts =>
      List<Contact>.generate(10, (index) => contact!, growable: true);
  void insertContact(Contact? contact) {
    this.contact = contact;
  }
}

class ContactGroup extends AddressBook {
  @override
  String? name;

  @override
  get getName => name;

  @override
  set setName(String? name) => this.name = name;
}

class Contact extends AddressBook implements ContactGroup {
  @override
  String? emailAddress;
  String? faxNumber;
  @override
  String? name;
  String? primaryContactMethod;
  Contact(
      {this.faxNumber,
      this.emailAddress,
      this.primaryContactMethod,
      super.name,
      super.contact});
  @override
  get getName => name;

  @override
  set setName(String? name) => this.name = name;

  @override
  set setEmailAddress(String? emailAddress) => this.emailAddress = emailAddress;
  @override
  get getEmailAddress => emailAddress;

  get getFaxNumber => faxNumber;
  set setFaxNumber(String? faxNumber) => this.faxNumber = faxNumber;

  get getPrimaryContactMethod => primaryContactMethod;
  set setPrimaryContactMethod(String? primaryContactMethod) =>
      this.primaryContactMethod = primaryContactMethod;
}
