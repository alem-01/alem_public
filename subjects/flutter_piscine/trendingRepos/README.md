## Introduction

Make a client for GitHub

- Json serialization
- List Tile, Infinite scroll (ListViewBuilder)
- Routing
- Auth
- Futures
- Work with api (GitHub)
- Shared Preferences
- Firebase

## Objective:

- Work with api
- Application flow
- Work with local storage
- Data flow

Make the GitHub client;

- Implement GitHub login using firebase
- Possibility to logout
- When user logs out app should open login page
- Main screen should display 30 trending repos (use of SilverList recommended https://api.flutter.dev/flutter/widgets/SliverList-class.html)
- Add a splash screen with GitHub icon at the center
- App should have repo.dart model, service class to fetch repos
- Implement refresh: when user pulls down screen, make api call, so that list of repos will update (https://api.flutter.dev/flutter/material/RefreshIndicator-class.html)

See :  
[https://firebase.google.com/docs/auth/web/github-auth](https://firebase.google.com/docs/auth/web/github-auth)  
https://api.github.com/search/repositories  
https://docs.github.com/en/rest  

### **Bonus**
    Make extra effort on the UI of the App.
