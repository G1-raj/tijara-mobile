import 'package:get/route_manager.dart';
import 'package:tijara/routes/route_name.dart';
import 'package:tijara/views/auth/login/login_view.dart';
import 'package:tijara/views/chat/chat_list_view.dart';
import 'package:tijara/views/chat/chat_view.dart';
import 'package:tijara/views/create_listing/create_listing_view.dart';
import 'package:tijara/views/create_listing/real_estate_listing/real_estate_listing_view.dart';
import 'package:tijara/views/create_listing/vehicle_listing/vehicle_listing_view.dart';
import 'package:tijara/views/home/home_view.dart';
import 'package:tijara/views/listing/listing_detail_view.dart';
import 'package:tijara/views/listing/listing_view.dart';
import 'package:tijara/views/notifications/notifications_page.dart';
import 'package:tijara/views/product/products_view.dart';
import 'package:tijara/views/profile/my_profile_view.dart';
import 'package:tijara/views/profile/profile_view.dart';
import 'package:tijara/views/settings/settings_view.dart';
import 'package:tijara/views/splash_screen/splash_screen_view.dart';

class AppRoutes {
  static appRoutes() => [

    GetPage(
      name: RouteName.splashScreenView,
      page: () => SplashScreenView()
    ),

    GetPage(
      name: RouteName.loginScreenView,
      page: () => LoginView()
    ),

    GetPage(
      name: RouteName.chatListScreenView,
      page: () => ChatListView(),
    ),

    GetPage(
      name: RouteName.chatScreenView,
      page: () => ChatView()
    ),

    GetPage(
      name: RouteName.createListingScreenView,
      page: () => CreateListingView(),
    ),

    GetPage(
      name: RouteName.vehicleListingScreenView,
      page: () => VehicleListingView()
    ),

    GetPage(
      name: RouteName.realEstateListingScreenView,
      page: () => RealEstateListingView()
    ),

    GetPage(
      name: RouteName.homeScreenView,
      page: () => HomeView(),
    ),

    GetPage(
      name: RouteName.listingScreenView,
      page: () => ListingView()
    ),

    // GetPage(
    //   name: RouteName.listingDetailScreenView,
    //   page: () => ListingDetailView(productId: productId)
    // )

    GetPage(
      name: RouteName.notificationScreenView,
      page: () => NotificationsPage()
    ),

    GetPage(
      name: RouteName.productScreenView,
      page: () => ProductsView()
    ),

    GetPage(
      name: RouteName.settingsScreenView,
      page: () => SettingsView()
    ),

    GetPage(
      name: RouteName.profileScreenView,
      page: () => ProfileView()
    ),

    GetPage(
      name: RouteName.editProfileScreenView,
      page: () => MyProfileView()
    ),

  ];
}