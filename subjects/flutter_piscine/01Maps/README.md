Create an app where you can save the list of your favorite places and show them in the app.

In this raid, your app should implement an app which uses google map.

Implement following functionality: 

- Tabbar app with 3 screens:
    - Google maps screen [https://codelabs.developers.google.com/codelabs/google-maps-in-flutter#0](https://codelabs.developers.google.com/codelabs/google-maps-in-flutter#0)
    - List of your favorite places
    - Info about your app, see [https://api.flutter.dev/flutter/material/AboutDialog-class.html](https://api.flutter.dev/flutter/material/AboutDialog-class.html)

On map there must be:

- Your favorite places as markers (with infoView), it will be empty on launch
- When tap on any place at map, open dialog window with title and description textfields
- A button, which will navigate to current position of device
- Search bar to search for addresses, places, use google places API. When tap on a suggested address, navigate map to that place

On FavouritesList Screen:

- List of favorite places, which you can delete

On InfoPage Screen:

- Your names as developers, year, etc

don't forget about info.plist: 

```
NSLocationWhenInUseUsageDescription
NSLocationAlwaysUsageDescription
```

