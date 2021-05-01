# Flutter Widgets for Responsive Design

**FEEL FREE TO CONTRIBUTE**

## DeterminerWidget
DeterminerWidget provides you to make different layouts for every device type and orientation.

Usage:

```dart
DeterminerWidget(
          portraitMobile: Text("Portrait Mobile"), //Portrait Mobile must be provided. Others can be optional.
          landscapeMobile: Text("Landscape Mobile"),
          portraitTablet: Text("Portrait Tablet"),
          landscapeTablet: Text("Landscape Tablet"),
          desktop: Text("Desktop"),
        )
 ```
       
       
## InformerWidget
InformerWidget provides you all informations about screen.
Informations are currently provided:

- Screen size
- Parent widget's size
- Device type (Mobile,tablet,desktop)
- Screen orientation

Usage:

```dart
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
```

<img src="https://user-images.githubusercontent.com/59976112/116780677-dd4bbd00-aa86-11eb-9866-896be8e0fb92.png" alt="Example photo" width="400" height="700">

