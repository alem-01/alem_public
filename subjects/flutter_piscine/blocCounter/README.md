### Inroduction

Implement simple counter app using Bloc Pattern.
When you will start writing your own application, you will need to structure your app first. Flutter supports multiple state management architectures, so you better see this [page](https://flutter.dev/docs/development/data-and-backend/state-mgmt/options#bloc--rx) and choose suitable for your case.

### Objective

In this subject you will implement Bloc pattern, which is created by Google.
BLoC pattern uses Reactive Programming to handle the flow of data within an app.

Bloc consist of 2 concepts : Strams and Sinks, which are provided by StramController.

See:

- [Architect your Flutter project using BLoC pattern](https://medium.com/flutterpub/architecting-your-flutter-project-bd04e144a8f1),
  by Sagar Suri

<img src="https://github.com/alem-01/alem_public/blob/master/resources/blocCounter.01.png?raw=true"/>

Documentation [https://bloclibrary.dev/#/gettingstarted](https://bloclibrary.dev/#/gettingstarted)

## Part 1:

- Create new flutter app, so it will generate sample Counter App
- Add flutter_bloc as a dependecy of your app
- App structure should be similar to:

```bash
  —lib
      —bloc
          —counter_bloc.dart
          —counter_event.dart
      -widgets
          —yourwidgets.dart
      —..
  —main.dart
```

## Part 2:

- add enum to bloc/couter_event.dart

```jsx
enum CounterEvent {
  increment
}
```

- go to bloc/counter_bloc.dart and create `CounterBloc` class which extends from `CounterBloc`

> 💡 note: you can generate bloc files using vscode extension

- implement override of `mapEventToState` function in `CounterBloc` class, so it will be switching between different events, and return value as an int. In our case we only have case with increment state

## Part 3 (UI and getting data):

- Inside MyApp class wrap your home page with BlocProvider class.

```jsx
return MaterialApp(
  home: BlocProvider<CounterBloc>(
    create: (context) => CounterBloc(),
    child: Home(),
  ),
);
```

- Inside Home class create instance of CounterBloc class
- Use BlocBuilder to state from CounterBloc
- Add "+" button to call CounterEvent.increment

## Bonus:

- add button and event to handle decrementing counter

<img src="https://github.com/alem-01/alem_public/blob/master/resources/blocCounter.02.png?raw=true"/>
