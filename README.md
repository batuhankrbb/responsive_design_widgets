# Flutter Widgets for Responsive Design

## DeterminerWidget
DeterminerWidget provides you to make different layouts for every device type and orientation.

Usage:

DeterminerWidget(
          portraitMobile: Text("Portrait Mobile"),
          landscapeMobile: Text("Landscape Mobile"),
          portraitTablet: Text("Portrait Tablet"),
          landscapeTablet: Text("Landscape Tablet"),
          desktop: Text("Desktop"),
        )
        
## InformerWidget
InformerWidget provides you all informations about screen.
Informations are currently provided:

Screen size
Parent widget's size
Device type (Mobile,tablet,desktop)
Screen orientation

Usage:

InformerWidget(
                onPageBuild: (context, information) {
                  return Container(
                    //return a widget with informations
                    child: Text(information.toString()),
                    height: information.boundsSize.height * 0.5,
                    width: information.customDeviceType == CustomDeviceType.mobile ? 100 : 300,
                  );
                },
              )
