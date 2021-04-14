## Introduction

### What is flutter?

Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. (c) [https://flutter.dev/](https://flutter.dev/)

### How to start?

You can build flutter apps using any text editor. It is recommended to use editors that have both dart and flutter plugins(Android Studio, IntelliJ, VS Code, or Emacs).

You already have all installed on school computer, but if you want to set up your pc, then follow the official [installation guide](https://flutter.dev/docs/get-started/install).

Before we start take a look at flutter's [official documentation](https://flutter.dev/docs)

Hint: You can see some flutter samples [here](https://flutter.github.io/samples/#?type=cookbook) 👩🏽‍🍳

## Making your first app

Bizz card is simple application which shows a static card with your personal information.

This subject is divided into 3 parts. Overall **objective** is:

- Learn about and apply the essence of Flutter - widgets.
- Basic structure of a Flutter app.
- How to run flutter app on physical device or android/ios emulator.

Note: only standard flutter packages and url_launcher are allowed

## First Part

In this part:

- Run flutter generated counter app
- Understand structure of the flutter app

To create first flutter application open Android Studio and follow the steps:

1. Open the IDE and select **Start a new Flutter project**.
2. Select **Flutter Application** as the project type. Then click **Next**.
3. Verify the Flutter SDK path specifies the SDK’s location
   (select **Install SDK…** if the text field is blank).
4. Enter a project name (for example, `myapp`). Then click **Next**.
5. Click **Finish**.
6. Wait for Android Studio to install the SDK and create the project.

See the Run the app section in [https://flutter.dev/docs/get-started/test-drive?tab=androidstudio#create-app](https://flutter.dev/docs/get-started/test-drive?tab=androidstudio#create-app) to run sample app.

The starter point in flutter app is in lib/main.dart. Change this file to change app's behavior.

## Second Part:

In this part:

- Build your first Hello World app

Change the content of lib/main.dart, so your app will look like:

<p align="center">
<img src="https://github.com/alem-01/alem_public/blob/master/resources/bizzCard.01.png" alt="drawing" width="210" height = "420"/>
</p>

## Third Part

In this part:

- Understanding standard layouts

Docs: https://flutter.dev/docs/development/ui/layout

- Upload assets to pubspec.yaml

Change the content of lib/main.dart, so your app will look like:

<center>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/bizzCard.02.png" alt="drawing" width="210" height = "420"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/bizzCard.03.png" alt="drawing" width="210" height = "420"/>

</center>

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/bizzCard.04.png" alt="drawing" width="420" height = "210"/>

</center>

Page should have:

- User.dart file for User model with parameters:

```
final String fullName;
final String phone;
final String mail;
final String age;
```

- AppBar
- Column to align text in a card
- Stack to place image on Container
- Padding to add paddings to Container
- Use DecorationImage inside BoxDecoration to style image
- Use InkWell and SnackBar to show snackbar with `Tapped on ${name}` on click

<center>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/bizzCard.05.png" alt="drawing" width="210" height = "420"/>

</center>

- Bonus : add a FloatingActionButton to make a call to a given number

Note: you can only import from package:flutter/ and from dart standard packages
