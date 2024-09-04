import 'package:ecommerce_landing_page/core/home/page/home_page.dart';
import 'package:ecommerce_landing_page/utils/routes/routes_name.dart';
import 'package:go_router/go_router.dart';

class RoutesManage {
  RoutesManage._();

  static final routes = GoRouter(
    initialLocation: RoutesName.homePage,
    routes: [
      GoRoute(
        path: RoutesName.homePage,
        name: RoutesName.homePage,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
