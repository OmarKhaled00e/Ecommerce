import 'package:ecommerce/Features/main/data/models/address_model.dart';

class AddressRepo {
  List<AddressModel> getAddresses() {
    return [
      AddressModel(
        id: '1',
        label: 'Home',
        fullAdderss: '123 Main Street , Apt 48',
        city: 'New Your',
        state: 'NY',
        zipCode: '10001',
        isDefault: true,
        type: AddressType.home,
      ),
      AddressModel(
        id: '2',
        label: 'Offive',
        fullAdderss: '324 Business Ave , Suite 200',
        city: 'New Your',
        state: 'NY',
        zipCode: '10002',
        type: AddressType.office,
      ),
    ];
  }

  AddressModel? getDefaultAddress() {
    return getAddresses().firstWhere((address) => address.isDefault,
    orElse: () => getAddresses().first,
    );
  }
}
