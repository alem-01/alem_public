### Introduction:

Develop a **stateful app** that displays categories to choose from, i.e. history, pop culture, math, geography, etc (add name, and appropriate image).

Next, after tapping on the category the new route must show a corresponding image to the category, the question itself, true/false buttons. 

After the question has been answered, you must let the user know if the question was answered correctly. After the quiz is finished, user must see their result.

### Objective:

- Applying stateful widget
- Routing
- Structuring app
- State management
- Network image cache
- Splash screen
- Timer

### First Part:

### Categories page:

- Grid list view of categories with appropriate images and names. Make at least 5 categories and at least 10 questions to each quiz. Show 2 categories in a row.
- Your app should have models for Question and Categories:

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
  String imageUrl;
  List<Question> questions;

  Category(this.name, this.imageUrl, this.questions);
}
```

> Note: you can style the app as you want

> Note: only standard Dart package, package:flutter



<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.01.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>


### Second Part

### Navigation and routing:

- When tapping on category push screen to DetailedView, which shows appropriate image, question and true/false buttons
- Create a stateful widget, so you can change page's state. [Example](https://flutter.dev/docs/development/ui/interactive)
- When answering question change color of button or background, so the user know that answer is wrong or right


<p align="left">
<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.01.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.02.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>

</p>

## Third part

When all question are answered show the score on a new page

- It should have Text with score and button which returns user to the main page


<center>
<img src="https://github.com/alem-01/alem_public/blob/master/resources/quizApp.03.png?raw=true" style = "width: 210px !important; height: 420px !important;"/>
</center>

### **Bonus**
Add a timer to each question, so the user must answer a question in a fixed time
