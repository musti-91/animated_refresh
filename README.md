# animated_refresh

[![Flutter Community: animated_refresh](https://fluttercommunity.dev/_github/header/animated_refresh)](https://github.com/fluttercommunity/community)

Provide an easy way to add animated refresh functionality to your Flutter applications. This package offers customizable pull-to-refresh and loading indicators to enhance the user experience when refreshing content on top of the default pull to refresh by Flutter.

## Features

- Pull-to-refresh functionality with customizable animations.
- Customizable loading indicators while content is being refreshed.
- Easy-to-use API for integrating the package into your Flutter projects.

## Installation

To use the Animated Refresh package, follow these steps:

1. Add the package to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     animated_refresh: ^1.0.0
   ```

2. Install the package by running the following command:

   ```bash
   $ flutter pub get
   ```

3. Import the package in your Dart file:

   ```dart
   import 'package:animated_refresh/animated_refresh.dart';
   ```

## Usage

To use the Animated Refresh package, you need to wrap your content widget with the `AnimatedRefresh` widget and provide a refresh callback function. Here's a basic example:

```dart
AnimatedRefresh(
    onRefresh: () {
          return Future.delayed(const Duration(seconds: 3));
        },
    swipeChild: Icon(
          Icons.arrow_downward,
          color: Theme.of(context).canvasColor,
    ),
    refreshChild: Lottie.asset(
          'assets/refresh.json',
          fit: BoxFit.fill,
          width: 50,
          height: 50,
    ),
    child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
        return ListTile(
            title: Text(items[index]),
            );
        },
  ),
)
```

You can customize the appearance of the pull-to-refresh and loading indicators using the various options provided by the package.


## Issues and Contributions

If you encounter any issues with the Animated Refresh package or have any suggestions for improvement, please file an issue on the [GitHub repository](https://github.com/musti-91/animated_refresh). Contributions, such as bug fixes or new features, are welcome. Please follow the contribution guidelines outlined in the repository.

## License

The Animated Refresh package is released under the [MIT License](https://opensource.org/licenses/MIT). 
See the [LICENSE](https://github.com/example/animated_refresh_package/blob/main/LICENSE) file for more details.