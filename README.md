# Swift-UIKit-Exercises

## Overview

This repository contains a collection of small Swift and UIKit exercises. These projects represent my first steps in iOS development, focusing on learning the basics of building apps with UIKit. Later on, I expanded my knowledge by learning SwiftUI in university.

## Why I Created This Repository
These exercises represent my first practical experiences in iOS development. They helped me understand the core components of UIKit, such as view controllers, table views, navigation controllers, and more. This was before I transitioned to SwiftUI during my university studies.

Feel free to explore the projects for basic UIKit functionalities.

## Table of Contents

Each folder represents a separate exercise or mini-project, demonstrating a specific feature or concept in iOS development. All exercises are built in Xcode and target iOS devices.

1. [Adressformular](#adressformular)
2. [IconDrag](#icondrag)
3. [NSData_Rest](#nsdata_rest)
4. [NumberGuess](#numberguess)

---

### Adressformular

This project demonstrates how to build a simple address form in Swift using `UITextField` and `UIButton`. Users can input and save their address data (First Name, Last Name, Street, and City), and the form displays the entered information.

**Key Features:**
- Text field input handling.
- Button interaction for saving data.
- Displaying user-entered information on another screen.

[More details and screenshots here.](./Adressformular/README.md)

---

### IconDrag

The **IconDrag** project showcases how to drag and move an image (a kangaroo image in this case) around the screen using gesture recognizers in UIKit.

**Key Features:**
- Image handling with `UIImageView`.
- Gesture recognition for dragging an image using `UIPanGestureRecognizer`.
- Demonstrates handling touch gestures in UIKit.

[More details and screenshots here.](./IconDrag/README.md)

---

### NSData_Rest

The **NSData_Rest** project focuses on consuming a REST API using `URLSession` to fetch data from a JSON placeholder API. It parses the data and displays it in a `UITableView`. This exercise highlights working with networking and data parsing in Swift.

**Key Features:**
- Fetching JSON data from a REST API.
- Parsing the JSON into Swift objects.
- Displaying the parsed data in a table view.

[More details and screenshots here.](./NSData_Rest/README.md)

---

### NumberGuess

**NumberGuess** is a simple number guessing game. The app generates a random number between 1 and 99, and the user tries to guess it. The game gives hints (higher or lower), and all guesses are displayed in a list with the correct guess highlighted.

**Key Features:**
- Random number generation.
- Managing game state and tracking guesses.
- Displaying guesses in a `UITableView`.
- Highlighting correct guesses in a different color.

[More details and screenshots here.](./NumberGuess/README.md)

---

## How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/benjamingolic/Swift-UIKit-Excercises.git
   ````
2. Open the project folder of the desired exercise in Xcode.
3. Select a simulator or device to run the project.
4. Build and run the project to see the exercise in action.

---
## License

This repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.