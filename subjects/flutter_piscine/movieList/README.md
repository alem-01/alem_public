### Introduction:

Develop an app to work with json. You must display top rated movies on the first page. By tapping at a movie, a new route with more detailed information regarding the movie must be displayed. Searching for a movie via search bar must be included. Searching is done by movie name, entered string must be completely within movie name, i.e. if "vatar" is searched, "Avatar" must be included in the response. Not case sensitive. No more than 8 movies should be in each page, therefore you have to make a pagination.

## Objective

- **Infinite scroll -** no audit questions, either delete this, or add to audits?

- ListView/GridView
- Json Serialization
- Routes/Push
- Delegates (Search Delegate)
- AppBar actions
- Images
- Futures, async

## Part 1

Create ListView which will show the Image, title and description from Json file;

Create a class with properties:

```jsx
class Movie {
  final String genre;
  final String imdbRating;
  final String title;
  final String poster;

  Movie(this.genre, this.imdbRating, this.title, this.poster);
}
```

add fromJson method to make a json serialization, see more on [https://flutter.dev/docs/development/data-and-backend/json](https://flutter.dev/docs/development/data-and-backend/json)

Your ListView should use FutureBuilder to firstly wait for data from json and then show it when it loads.

<center>
<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/59bfc0fd-317c-4aeb-991e-5a8160ddcd68/Screenshot_1617635464.png" alt="drawing" style="width:200px !important"/>
</center>

## Part 2:

Create a detailed view of a movie:

<center>
<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0c278b75-4bae-475e-a7f6-2a8985eeb9c0/Screenshot_1617635515.png" alt="drawing" style="width:200px !important"/>
</center>

It should have an image and minimum 5 parameters from the film's info; use scroll bar if the info don't fit in one page;

The appbar should have a name of the film and button to go back

Visit  [https://flutter.dev/docs/cookbook/navigation/named-routes](https://flutter.dev/docs/cookbook/navigation/named-routes) to see how to implement routing.

## Part 3:

Implement Seach

<center>
<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/30afb0e8-d1b8-4a85-8e0d-907c21adf81a/Screenshot_1617635464.png" alt="drawing" style="width:200px !important"/>

<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/efbc653e-28b1-40f8-b7f9-d28294150e5e/Screenshot_1617635828.png"/>

<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fcef2ae9-fd5d-485e-b778-a3632a5a4597/Screenshot_1617635814.png"/>
</center>

When click on a search icon in appBar, it must be ability to write a query to search, to achieve that you should use SearchDelegate.

When start typing, user should see filtered result

Right close button should clear the search query, back button should close the searchbar

When no text typed, show all the items

Bonus: Application UI

[https://flutter.dev/docs/resources/platform-adaptations](https://flutter.dev/docs/resources/platform-adaptations)