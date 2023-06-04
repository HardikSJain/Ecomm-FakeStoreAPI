# E-Commerce App

This is a Flutter-based E-Commerce app that allows users to browse and purchase products from various categories. The app utilizes the FakeStore API to fetch product data and manage user carts.

## Features

- View products categorized by different categories
- Add/Delete products to the cart
- View cart items
- Delete cart items
- Search for products

## Screenshots


## Getting Started

These instructions will help you set up and run the project on your local machine.

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio / Xcode (for running on emulators or physical devices)

### Installing

1. Clone the repository to your local machine:

2. Navigate to the project directory:

3. Install the dependencies:


### Running

1. Connect your Android/iOS device or start an emulator.

2. Run the app:


## API Integration

The app integrates with the FakeStore API to fetch product data and manage carts. The API base URL is `https://fakestoreapi.com`.

API Endpoints:

- Fetch all products: `GET /products`
- Fetch single product: `GET /products/{id}`
- Create a cart: `PUT /carts/{userId}`
- Fetch cart: `GET /carts/{userId}`
- Delete cart: `DELETE /carts/{userId}`

## Dependencies

- http: ^0.13.3

## Built With

- [Flutter](https://flutter.dev/) - UI toolkit
- [Dart](https://dart.dev/) - Programming language
- [Visual Studio Code](https://code.visualstudio.com/) - Code editor

