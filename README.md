# E-Commerce App

This is a Flutter-based E-Commerce app that allows users to browse and purchase products from various categories. The app utilizes the FakeStore API to fetch product data and manage user carts.

## Features

- View products categorized by different categories
- Add/Delete products to the cart
- View cart items
- Delete cart items
- Search for products

## Screenshots

<img src="https://github.com/HardikSJain/Ecomm-FakeStoreAPI/assets/81674309/c1820ac1-bc9e-4adf-9c19-451aae0cd336" width="200">
<img src="https://github.com/HardikSJain/Ecomm-FakeStoreAPI/assets/81674309/af67e94c-d164-4c91-904e-d570b1251190" width="200">
<img src="https://github.com/HardikSJain/Ecomm-FakeStoreAPI/assets/81674309/a30e53ee-0250-4d43-b30f-10fbd52326c9" width="200">
<img src="https://github.com/HardikSJain/Ecomm-FakeStoreAPI/assets/81674309/5fa70e4f-afcd-49c0-94b9-95ff5927da0f" width="200">
<img src="https://github.com/HardikSJain/Ecomm-FakeStoreAPI/assets/81674309/1ee40a62-686d-4125-b142-253e53a79c59" width="200">
<img src="https://github.com/HardikSJain/Ecomm-FakeStoreAPI/assets/81674309/edc0dcc6-684c-423c-a049-62018b9641cf" width="200">
<img src="https://github.com/HardikSJain/Ecomm-FakeStoreAPI/assets/81674309/def63e3c-e4bf-40d4-9f79-99b181f31ec6" width="200">


## Getting Started


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

- http: ^0.13.6

## Built With

- [Flutter](https://flutter.dev/) - UI toolkit
- [Dart](https://dart.dev/) - Programming language
- [Visual Studio Code](https://code.visualstudio.com/) - Code editor

