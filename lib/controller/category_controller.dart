import 'package:get/get.dart';

class CategoryController extends GetxController {
  var selectedCategory = 'All'.obs;
  var products = <Map<String, String>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadAllProducts();
  }

  void selectCategory(String category) {
    selectedCategory.value = category;
    switch (category) {
      case 'Shirts':
        loadShirts();
        break;
      case 'Pants':
        loadPants();
        break;
      case 'Shoes':
        loadShoes();
        break;
      case 'Accessories':
        loadAccessories();
        break;
      case 'Bags':
        loadBags();
        break;
      case 'Jackets':
        loadJackets();
        break;
      default:
        loadAllProducts();
    }
  }

  void loadAllProducts() {
    products.value = [
      {
        'image': 'assets/images/shirts/bentayan_flannel.jpg',
        'title': 'BENTAYAN FLANNEL',
        'price': 'Rp. 439.000',
        'category': 'Shirts'
      },
      {
        'image': 'assets/images/pants/ws_brawler_pants.jpg',
        'title': 'WS BRAWLER PANTS',
        'price': 'Rp. 749.000',
        'category': 'Pants'
      },
      {
        'image': 'assets/images/accessories/odospeed_anachrono.jpg',
        'title': 'ODOSPEED ANACHRONO',
        'price': 'Rp. 1.149.000',
        'category': 'Accessories'
      },
      {
        'image': 'assets/images/shoes/ares.jpg',
        'title': 'ARES',
        'price': 'Rp. 979.000',
        'category': 'Shoes'
      },
      {
        'image': 'assets/images/bags/strato_50_hauler_bag.jpg',
        'title': 'STRATO 50 HAULER BAG',
        'price': 'Rp. 789.000',
        'category': 'Bags'
      },
      {
        'image': 'assets/images/jackets/raintour_jacket_hoodie.jpg',
        'title': 'RAINTOUR JACKET HOODIE',
        'price': 'Rp. 749.000',
        'category': 'Jackets'
      },
    ];
  }

  void loadShirts() {
    products.value = [
      {
        'image': 'assets/images/shirts/bentayan_flannel.jpg',
        'title': 'BENTAYAN FLANNEL',
        'price': 'Rp. 439.000',
        'category': 'Shirts'
      },
      {
        'image': 'assets/images/shirts/ethno_shirt_ls.jpg',
        'title': 'ETHNO SHIRT LS',
        'price': 'Rp. 419.000',
        'category': 'Shirts'
      },
      {
        'image': 'assets/images/shirts/poza_rica_flannel_shirt.jpg',
        'title': 'POZA RICA FLANNEL SHIRT',
        'price': 'Rp. 399.000',
        'category': 'Shirts'
      },
      {
        'image': 'assets/images/shirts/rawson_ss_shirt.jpg',
        'title': 'RAWSON SS SHIRT',
        'price': 'Rp. 319.000',
        'category': 'Shirts'
      },
      {
        'image': 'assets/images/shirts/rivendell_shirt.jpg',
        'title': 'RIVENDELL SHIRT',
        'price': 'Rp. 349.000',
        'category': 'Shirts'
      },
      {
        'image': 'assets/images/shirts/towsend_f1.jpg',
        'title': 'TOWSEND F1',
        'price': 'Rp. 399.000',
        'category': 'Shirts'
      },
    ];
  }

  void loadPants() {
    products.value = [
      {
        'image': 'assets/images/pants/alto_hike_pants.jpg',
        'title': 'ALTO HIKE PANTS',
        'price': 'Rp. 649.000',
        'category': 'Pants'
      },
      {
        'image': 'assets/images/pants/attack_trainer_pants.jpg',
        'title': 'ATTACK TRAINER PANTS',
        'price': 'Rp. 519.000',
        'category': 'Pants'
      },
      {
        'image': 'assets/images/pants/ws_brawler_pants.jpg',
        'title': 'WS BRAWLER PANTS',
        'price': 'Rp. 749.000',
        'category': 'Pants'
      },
      {
        'image': 'assets/images/pants/ws_kalla_jegging.jpg',
        'title': 'WS KALLA JEGGING',
        'price': 'Rp. 449.000',
        'category': 'Pants'
      },
      {
        'image': 'assets/images/pants/x-stormseeker_pants.jpg',
        'title': 'X-STORMSEEKER PANTS',
        'price': 'Rp. 609.000',
        'category': 'Pants'
      },
      {
        'image': 'assets/images/pants/x-trekfaster_1.0_pants.jpg',
        'title': 'X-TREKFASTER 1.0 PANTS',
        'price': 'Rp. 519.000',
        'category': 'Pants'
      },
    ];
  }

  void loadShoes() {
    products.value = [
      {
        'image': 'assets/images/shoes/ares.jpg',
        'title': 'ARES',
        'price': 'Rp. 979.000',
        'category': 'Shoes'
      },
      {
        'image': 'assets/images/shoes/ferret.jpg',
        'title': 'FERRET',
        'price': 'Rp. 829.000',
        'category': 'Shoes'
      },
      {
        'image': 'assets/images/shoes/jr_finland_pre_school.jpg',
        'title': 'JR FINLAND PRE SCHOOL',
        'price': 'Rp. 499.000',
        'category': 'Shoes'
      },
      {
        'image': 'assets/images/shoes/salvage_slip_on.jpg',
        'title': 'SALVAGE SLIP ON',
        'price': 'Rp. 1.049.000',
        'category': 'Shoes'
      },
      {
        'image': 'assets/images/shoes/tigerclaw_2.5.jpg',
        'title': 'TIGERCLAW 2.5',
        'price': 'Rp. 759.000',
        'category': 'Shoes'
      },
      {
        'image': 'assets/images/shoes/z-ras_dashen.jpg',
        'title': 'Z-RAS DASHEN',
        'price': 'Rp. 719.000',
        'category': 'Shoes'
      },
    ];
  }

  void loadAccessories() {
    products.value = [
      {
        'image': 'assets/images/accessories/geval_phonecase_1.0.jpg',
        'title': 'GEVAL PHONECASE 1.0',
        'price': 'Rp. 179.000',
        'category': 'Accessories'
      },
      {
        'image': 'assets/images/accessories/odospeed_anachrono.jpg',
        'title': 'ODOSPEED ANACHRONO',
        'price': 'Rp. 1.149.000',
        'category': 'Accessories'
      },
      {
        'image': 'assets/images/accessories/pandoera_bracelet.jpg',
        'title': 'PANDOERA BRACELET',
        'price': 'Rp. 109.000',
        'category': 'Accessories'
      },
      {
        'image': 'assets/images/accessories/raintour_s-g.jpg',
        'title': 'RAINTOUR S-G',
        'price': 'Rp. 389.000',
        'category': 'Accessories'
      },
      {
        'image': 'assets/images/accessories/velox_tac.jpg',
        'title': 'VELOX_TAC',
        'price': 'Rp. 49.000',
        'category': 'Accessories'
      },
      {
        'image': 'assets/images/accessories/ws_sweven_card_wallet.jpg',
        'title': 'WS SWEVEN CARD WALLET',
        'price': 'Rp. 129.000',
        'category': 'Accessories'
      },
    ];
  }

  void loadBags() {
    products.value = [
      {
        'image': 'assets/images/bags/borderpass_wheel_pack.jpg',
        'title': 'BORDERPASS WHEEL PACK',
        'price': 'Rp. 1.899.000',
        'category': 'Bags'
      },
      {
        'image': 'assets/images/bags/forlough_15l.jpg',
        'title': 'FORLOUGH 15L',
        'price': 'Rp. 319.000',
        'category': 'Bags'
      },
      {
        'image': 'assets/images/bags/strato_50_hauler_bag.jpg',
        'title': 'STRATO 50 HAULER BAG',
        'price': 'Rp. 789.000',
        'category': 'Bags'
      },
      {
        'image': 'assets/images/bags/striker.jpg',
        'title': 'STRIKER',
        'price': 'Rp. 699.000',
        'category': 'Bags'
      },
      {
        'image': 'assets/images/bags/ws_spacious_waist_bag_1a.jpg',
        'title': 'WS SPACIOUS WAIST BAG 1A',
        'price': 'Rp. 259.000',
        'category': 'Bags'
      },
      {
        'image': 'assets/images/bags/z-rookie_tunnel_bag.jpg',
        'title': 'Z-ROOKIE TUNNEL BAG',
        'price': 'Rp. 569.000',
        'category': 'Bags'
      },
    ];
  }

  void loadJackets() {
    products.value = [
      {
        'image': 'assets/images/jackets/alpinist_warmer_jacket.jpg',
        'title': 'ALPINIST WARMER JACKET',
        'price': 'Rp. 569.000',
        'category': 'Jackets'
      },
      {
        'image': 'assets/images/jackets/attack_bdu_jacket.jpg',
        'title': 'ATTACK BDU JACKET',
        'price': 'Rp. 939.000',
        'category': 'Jackets'
      },
      {
        'image': 'assets/images/jackets/ms_equator_windproof_jkt_f1.jpg',
        'title': 'MS EQUATOR WINDPROOF JKT F1',
        'price': 'Rp. 659.000',
        'category': 'Jackets'
      },
      {
        'image': 'assets/images/jackets/raintour_jacket_hoodie.jpg',
        'title': 'RAINTOUR JACKET HOODIE',
        'price': 'Rp. 749.000',
        'category': 'Jackets'
      },
      {
        'image': 'assets/images/jackets/vigorous_convertible_jacket.jpg',
        'title': 'VIGOROUS CONVERTIBLE JACKET',
        'price': 'Rp. 599.000',
        'category': 'Jackets'
      },
      {
        'image': 'assets/images/jackets/x-hasten_insulated_jacket.jpg',
        'title': 'X-HASTEN INSULATED JACKET',
        'price': 'Rp. 979.000',
        'category': 'Jackets'
      },
    ];
  }
}
