### Introduction:

Develop an app to work with JSON. You must display top rated movies on the first page. By tapping at a movie, a new route with more detailed information regarding the movie must be displayed. Searching for a movie via search bar must be included. Searching is done by movie name, entered string must be completely within movie name, i.e. if "vatar" is searched, "Avatar" must be included in the response. Not case sensitive.

### Objective:

- Infinite scroll
- ListView
- Json Serialization
- Routes/Push
- AppBar actions
- Images
- Futures, async
- Search Delegate

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

add fromJson method to make a json serialization, see more on [https://flutter.dev/docs/development/data-and-backend/json](https://flutter.dev/docs/development/data-and-backend/json)
https://api.flutter.dev/flutter/foundation/Factory-class.html

Your ListView should use FutureBuilder to wait for data from JSON file and then show it once it is loaded.

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/movieList.01.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

### Part 2:

Create a page with detailed info of a movie:

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/movieList.02.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

It should have an image and minimum 5 parameters from the film's info; use scroll bar if the info doesn't fit in one page;

The appbar should have a name of the film and go back button.

Visit  [https://flutter.dev/docs/cookbook/navigation/named-routes](https://flutter.dev/docs/cookbook/navigation/named-routes) to see how to implement routing.

### Part 3:

Implement Search


<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/movieList.03.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/movieList.04.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/movieList.05.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

On a click on a search icon in the appBar user can search for the particular movie. To implement this feature you need to use SearchDelegate. 

Close button (X mark) should clear the search query. Back button should close the searchbar.

When search bar has no text, show all the items.

### **Assets**
  [movies.json](https://github.com/alem-01/alem_public/blob/master/subjects/flutter_piscine/movieList/movies.json)


### **Bonus**
  Make extra effort on the UI of the App.

[https://flutter.dev/docs/resources/platform-adaptations](https://flutter.dev/docs/resources/platform-adaptations)
