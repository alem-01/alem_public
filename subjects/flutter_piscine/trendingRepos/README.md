## Introduction

Create an app, which shows a list of trending repositories on GitHub. You shuld use Firebase to implement a login redirect.
Also see https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple#changenotifier for more info on state management.

- JSON serialization
- List Tile, Infinite scroll (ListViewBuilder)
- Routing
- Auth
- Futures
- Work with API (GitHub)
- Shared Preferences
- Firebase

## Objective:

- Work with API
- Application flow
- Work with local storage
- Data flow

Make the GitHub client;

- Implement GitHub login using Firebase
- Possibility to logout
- When user logs out, app should open login page
- Main screen should display 30 trending repos (use of SilverList is recommended https://api.flutter.dev/flutter/widgets/SliverList-class.html)
- Add a splash screen with GitHub icon at the center
- App should have repo.dart model, service class to fetch repos
- Implement refresh: when user pulls down screen, make an API call, so that list of repos updates (https://api.flutter.dev/flutter/material/RefreshIndicator-class.html)

See :  
[https://firebase.google.com/docs/auth/web/github-auth](https://firebase.google.com/docs/auth/web/github-auth)  
https://api.github.com/search/repositories  
https://docs.github.com/en/rest  


### **Bonus**
    Make extra effort on the UI of the App.
