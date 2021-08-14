### Introduction:

Develop a **stateful app** that displays categories to choose from, i.e. history, pop culture, math, geography, etc (add name, and appropriate image).

Next, after tapping on the category the new route must show a corresponding image to the category, the question itself, true/false buttons. 

After the question has been answered, you must let the user understand if the question was answered correctly. After the quiz is finished, user must see their result.

### Objective:

- Applying stateful widget
- Routing
- Structuring app
- State management
- Network image cache
- Splash screen
- Timer

## First Part:

- Add a splash/launch screen as an entry point

<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.01.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

## Second Part:

### Categories page:

- Grid list view of categories with appropriate images and names. Make at least 5 categories and at least 10 questions to each quiz. Show 2 categories in a row.
- Your app should have models for Question and Categories:
- Cache images with cached_network_image package, show loading spinner when image until image not loaded

```jsx
//models/Question.dart
class Question {
  String question;
  bool answer;

  Question(this.question, this.answer);
}

//models/Category.dart

class Category {
  String name;
  Color color;
  String imageUrl;
  List<Question> questions;

  Category(this.name, this.color, this.imageUrl, this.questions);
}
```

Note: you can style app as you want

Note: only standard dart package, package:flutter



<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.02.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>


## Third Part

### Navigation and routing:

- When tapping on category push screen to DetailedView which shows appropriate image, question and true/false buttons
- Use imperative way of navigating through app
- Create a stateful widget, so you can change page's state [https://flutter.dev/docs/development/ui/interactive](https://flutter.dev/docs/development/ui/interactive)
- When answering question change color of button or background, so the user know that answer is wrong or right


<p align="left">
<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.03.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.04.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.05.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

## Fourth part

When all question answered show the score on a new page

- It should have Text with score and button which pushes to a list with categories


<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.06.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

- Bonus: add timer to question, so user can have fixed time to answer a question