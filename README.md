# payflow 💳
Flutter app to manage your pendent bills and then relax with the rest.

You can find the full layout design at Figma project [here][figma].

# Getting Started
```bash
# clone this project
$ git clone https://github.com/cristianprochnow/payflow.git

# enter folder
$ cd payflow/

# download dependencies
$ flutter pub get

# start project
$ flutter run
```
# What I Learned

## Themes

- [x] Set custom colors at project using hexadecimal (to use hexadecimal colors, you need turn "#" into a integer character (`0xFF`), because Flutter do not recognize this symbol)
- [x] Set custom fonts with `google_fonts` package
- [x] Use custom assets in project

## Packages

- [x] Install a package into project
- [x] Set Firebase functionalities for Android app
- [x] Install packages needed for social login with Google
- [x] Configure and use social login with Google

## Concepts

### `_variable`
Insert `_` before variables is a semantic way to define class variables as private. They have not private strict behavior, perhaps it is a good way to turn it distinct from rest.

## Widgets

### `Stack()`

Stack is a component that allows you to insert a widget above other one. The case needed for this app, for example, is at Splash Screen, where we must insert a image above other image, to complete the logo.

### `Positionated()`

Like the `position` property from CSS, this widget follow the same principle. Using settings as `top`, `right`, `bottom` and `left`, it offer to you a quick form to center and align elements regardless of your layer.

### `Padding()` and `Expanded()`

Widgets that customize spacement of widgets. A quick way to set space between these elements.

### `InkWell()`

Widget that can be used to represent button functionalities, giving to you the oportunity to create several button types.

> `GestureDetector()` seem equal to this widget, but offer a lot more events to handle.

### `BoxDecoration()`, `BoxShadow()`, `Border()` and `BorderRadius`

Elements focused to custom box appearance, and then your able to add several styles to a simple container, transforming the way you create a custom component.

[figma]: https://www.figma.com/community/file/991337911070600335/PayFlow
