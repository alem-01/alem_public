The app library. You should create your own gallery, where you can load images from phone library or take a picture and immediately upload it.

package allowed: image_picker

## First Part:

- Create an appbar with IconButton
- When click on a button you should see 2 options: open camera or a gallery
- See the usage of  image_picker package [https://pub.dev/packages/image_picker](https://pub.dev/packages/image_picker)
- Don't forget to add special keys to Info.plist file under ios folder to access the camera and gallery, see : [https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/AboutInformationPropertyListFiles.html](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/AboutInformationPropertyListFiles.html)
- Show some text when no image is chosen

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/imageLibrary.01.png?raw=true" style = "width: 620px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/imageLibrary.02.png?raw=true" style = "width: 620px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/imageLibrary.03.png?raw=true" style = "width: 620px !important; height: 420px !important;"/>
</center>

## Second Part:

- When user is done picking image or taking picture it should be added to GridList
- When tapping on image user should see the whole image
- Add an ability to zoom in, zoom out the image, see [https://api.flutter.dev/flutter/widgets/InteractiveViewer-class.html](https://api.flutter.dev/flutter/widgets/InteractiveViewer-class.html)

Bonus: UI of the app

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/imageLibrary.04.png?raw=true" style = "width: 620px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/imageLibrary.05.png?raw=true" style = "width: 620px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/imageLibrary.06.png?raw=true" style = "width: 620px !important; height: 420px !important;"/>
</center>
