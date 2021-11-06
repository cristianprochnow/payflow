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

[x] Set custom colors at project using hexadecimal (to use hexadecimal colors, you need turn "#" into a integer character (`0xFF`), because Flutter do not recognize this symbol)

[x] Set custom fonts with `google_fonts` package

[x] Use custom assets in project

## Packages

[x] Install a package into project

## Widgets

### `Stack()`

Stack is a component that allows you to insert a widget above other one. The case needed for this app, for example, is at Splash Screen, where we must insert a image above other image, to complete the logo.

[figma]: https://www.figma.com/community/file/991337911070600335/PayFlow
