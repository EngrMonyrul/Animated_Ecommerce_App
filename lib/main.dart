import 'package:ecommerce_landing_page/utils/enums/device_orientation_enum.dart';
import 'package:ecommerce_landing_page/utils/routes/routes_manage.dart';
import 'package:ecommerce_landing_page/utils/themes/base_theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  /*<<----------->> initial flutter engine <<----------->>*/
  WidgetsFlutterBinding.ensureInitialized();

  /*<<----------->> set fixed rotation <<----------->>*/
  SystemChrome.setPreferredOrientations(
    DeviceOrientationEnum.portrait.orientation!,
  );

  /*<<----------->> running root app <<----------->>*/
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        392.72727272727275,
        803.6363636363636,
      ),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Ecommerce UI",
        theme: BaseThemeConfig.lightBaseThemeConfig,
        routerConfig: RoutesManage.routes,
      ),
    );
  }
}
