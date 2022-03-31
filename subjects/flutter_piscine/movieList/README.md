# MovieList

### Introduction

When developign a fullly functional app, you will most likely use some external files to display on your app. One of the most popular file types is JSON.  
Develop an app to work with JSON. You are given a file with information about different movies.
You must display top rated movies on the first page of the app. By tapping at a movie, a new route with more detailed information regarding the movie must be displayed.  
Searching for a movie via search bar must be included. Searching is done by movie name, entered string must be completely within movie name, i.e. if "vatar" is searched, "Avatar" must be included in the response. Basically, search must work like SQL's ***ilike*** comparision.

### Objective

- Infinite scroll
- ListView
- Json Serialization
- Routes/Push
- AppBar actions
- Images
- Futures, async
- Provider

### Part 1

Create a ListView which will show the image, title and description from JSON file (see Assets section);

Create a class with properties:

```
class Movie {
  final String genre;
  final String imdbRating;
  final String title;
  final String poster;

  Movie(this.genre, this.imdbRating, this.title, this.poster);
}
```

Add fromJson method to make a json serialization, see more on [https://flutter.dev/docs/development/data-and-backend/json](https://flutter.dev/docs/development/data-and-backend/json)
https://api.flutter.dev/flutter/foundation/Factory-class.html

Your ListView should use FutureBuilder to wait for data from JSON file and then show it once it is loaded.

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/movieList.01.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

### Part 2

Create a page with detailed information of the movie.

It should have an image and minimum 5 parameters from the film's information; use scroll bar if the info doesn't fit in one page;

The appbar should have a name of the film and go back button.

Visit  [https://flutter.dev/docs/cookbook/navigation/named-routes](https://flutter.dev/docs/cookbook/navigation/named-routes) to see how to implement routing.

### Part 3

Implement Search using [Provider](https://pub.dev/packages/provider).

On click on a search icon show the TextField. 

When click on enter filter filmes by text entered in TextField.

Pass date between screens using provider package.

### **Assets**
  [movies.json](https://github.com/alem-01/alem_public/blob/master/subjects/flutter_piscine/movieList/movies.json)


### **Bonus**
  Make extra effort on the UI of the App.

[https://flutter.dev/docs/resources/platform-adaptations](https://flutter.dev/docs/resources/platform-adaptations)
