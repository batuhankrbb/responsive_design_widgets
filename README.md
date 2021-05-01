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

![responsive_desing_example_photo | height: 100](https://user-images.githubusercontent.com/59976112/116780489-d7a1a780-aa85-11eb-8639-435cfcdd3ed7.png)
