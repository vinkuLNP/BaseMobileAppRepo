import 'package:clean_architecture/core/basecomponents/base_responsive_widget.dart';
import 'package:clean_architecture/core/utils/helpers/app_configurations_helper/app_configurations_helper.dart';
import 'package:clean_architecture/core/utils/helpers/extension_functions/size_extension.dart';
import 'package:clean_architecture/core/utils/helpers/responsive_ui_helper/responsive_config.dart';
import 'package:clean_architecture/features/weather_detail/presentation/weather_details/widgets/bottom_navigation_bar/bottom_navigation_custom_background.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key, this.navigateToAddScreen})
      : super(key: key);
  final Function()? navigateToAddScreen;

  @override
  Widget build(BuildContext context) {
    return BaseResponsiveWidget(
      buildWidget: (BuildContext context, ResponsiveUiConfig responsiveUiConfig,
          AppConfigurations appConfigurations) {
        return Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox(
              height: 80.w,
              width: responsiveUiConfig.screenWidth,
              child: CustomPaint(
                painter: BottomNavigationCustomBackground(), //3
              ),
            ),
            Positioned(
              bottom: 26.h,
              child: GestureDetector(
                onTap: () {
                  if (navigateToAddScreen != null) {
                    navigateToAddScreen!();
                  }
                },
                child: Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appConfigurations.appTheme.primaryColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.library_books_sharp,
                      color: appConfigurations.appTheme.backgroundGreyColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
