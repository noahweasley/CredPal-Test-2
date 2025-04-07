import 'package:credpal_test/models/merchant/merchant.dart';
import 'package:credpal_test/models/products/products.dart';

class Dummy {
  static List<Product> getProducts() {
    return [
      Product(
        name: 'Nokia G20',
        promoPrice: '₦39,780',
        image: 'assets/images/nokia_g20.png',
        price: '₦88,000',
        companyLogo: 'assets/images/slot.png',
        hasPercent: true,
      ),
      Product(
        name: 'iPhone XS Max 4GB',
        promoPrice: '₦295,999',
        image: 'assets/images/iphone_xs_max.png',
        price: '₦315,000',
        companyLogo: 'assets/images/oga_bassey.png',
        hasPercent: false,
      ),
      Product(
        name: 'Anker Soundcore',
        promoPrice: '₦39,780',
        image: 'assets/images/anker.png',
        price: '₦88,000',
        companyLogo: 'assets/images/okay_fones.png',
        hasPercent: false,
      ),
      Product(
        name: 'iPhone 12 Pro',
        promoPrice: '₦490,500',
        image: 'assets/images/iphone_12_pro.png',
        price: '₦515,000',
        companyLogo: 'assets/images/imate_stores.png',
        hasPercent: false,
      ),
    ];
  }

  static List<Product> getProducts2() {
    return [
      Product(
        name: 'Anker Soundcore',
        promoPrice: '₦39,780',
        image: 'assets/images/anker.png',
        price: '₦88,000',
        companyLogo: 'assets/images/okay_fones.png',
        hasPercent: false,
      ),
      Product(
        name: 'iPhone 12 Pro',
        promoPrice: '₦490,500',
        image: 'assets/images/iphone_12_pro.png',
        price: '₦515,000',
        companyLogo: 'assets/images/imate_stores.png',
        hasPercent: false,
      ),
      Product(
        name: 'iPhone XS Max 4GB',
        promoPrice: '₦295,999',
        image: 'assets/images/iphone_xs_max.png',
        price: '₦315,000',
        companyLogo: 'assets/images/oga_bassey.png',
        hasPercent: false,
      ),
    ];
  }

  static List<Merchant> getMerchants() {
    return [
      Merchant(
        image: 'assets/images/slot.png',
        isActive: true,
        name: 'Slot',
      ),
      Merchant(
        image: 'assets/images/pointek.png',
        isActive: true,
        name: 'Pointek',
      ),
      Merchant(
        image: 'assets/images/dreamworks.png',
        isActive: true,
        name: 'Dreamworks',
      ),
      Merchant(
        image: 'assets/images/hubmart.png',
        isActive: true,
        name: 'Hubmart',
      ),
      Merchant(
        image: 'assets/images/slot.png',
        isActive: true,
        name: 'Slot',
      ),
      Merchant(
        image: 'assets/images/pointek.png',
        isActive: true,
        name: 'Pointek',
      ),
      Merchant(
        image: 'assets/images/dreamworks.png',
        isActive: true,
        name: 'Dreamworks',
      ),
      Merchant(
        image: 'assets/images/hubmart.png',
        isActive: true,
        name: 'Hubmart',
      ),
    ];
  }
}
