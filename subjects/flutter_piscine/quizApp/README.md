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
<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2ad4f11d-eab2-40fd-94af-1ecd02ccd830/Screenshot_1617091285.png" alt="drawing" style="width:200px !important"/>
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
<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/681edf00-e815-424b-a4ba-fdae9b59db54/Screenshot_1616930628.png" alt="drawing" style="width:200px !important"/>
</center>

## Third Part

### Navigation and routing:

- When tapping on category push screen to DetailedView which shows appropriate image, question and true/false buttons
- Use imperative way of navigating through app
- Create a stateful widget, so you can change page's state [https://flutter.dev/docs/development/ui/interactive](https://flutter.dev/docs/development/ui/interactive)
- When answering question change color of button or background, so the user know that answer is wrong or right


<center>
<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/de671ce2-26eb-4d6f-9380-52ab2963f581/Screenshot_1617022125.png" alt="drawing" style="width:200px !important"/>

<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5167a76c-c306-45c1-9768-b5ca50cffc60/Screenshot_1617022172.png" alt="drawing" style="width:200px !important"/>

<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/078d2983-813e-430f-bf74-7acf85aee7fb/Screenshot_1617022361.png" alt="drawing" style="width:200px !important"/>
</center>

## Fourth part

When all question answered show the score on a new page

- It should have Text with score and button which pushes to a list with categories

<center>
<img src="https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e8a8f44e-d04f-4360-9b09-f940248d477c/Screenshot_1617022182.png" alt="drawing" style="width:200px !important"/>
</center>

- Bonus: add timer to question, so user can have fixed time to answer a question