# Doctors App👨🏻‍⚕️👩🏻‍⚕️


Doctors App is a Flutter-based mobile application designed to help users find and connect with doctors. It features user authentication, doctor search and filtering, and viewing doctor profiles. The application is built with a focus on clean architecture and efficient state management.

## ✨ Features

*   **User Authentication** 📲: Secure sign-up and sign-in functionality for users.
*   **Doctor Discovery**👨🏻‍⚕️: Browse a comprehensive list of available doctors.
*   **Specialization Filtering**👨🏻‍⚕️: Filter doctors based on their medical specialization.
*   **Doctor Search**: Quickly find doctors by name.
*   **Doctor Search**: Quickly find doctors by name.
*   **View Doctor Details**: Access detailed information about each doctor, including their schedule.
*   **Upcoming Appointments**: View a list of scheduled appointments.
*   **Offline Caching**: Utilizes Hive for local data storage, ensuring a smooth user experience even with intermittent network connectivity.

## 🏛️ Architecture

This project follows the principles of **Clean Architecture** to ensure a scalable, testable, and maintainable codebase. The code is organized into three main layers:

*   **Presentation**: Contains all UI-related components, such as widgets and screens. It uses the `flutter_bloc` package for state management, communicating with the domain layer through use cases.
*   **Domain**: The core of the application, containing the business logic. It includes entities, repository interfaces, and use cases that are independent of the other layers.
*   **Data**: Implements the repository interfaces defined in the domain layer. It is responsible for fetching data from remote sources (REST API using `Dio`) and local sources (caching with `Hive`).

Dependency injection is managed using the `get_it` package, which decouples the layers and facilitates testing.

## 🚀 Getting Started

### Prerequisites

*   Flutter SDK (version >=3.24.0)
*   Dart SDK (version >=3.5.3)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/RandEthar/Doctors-App.git
    ```

2.  **Navigate to the project directory:**
    ```bash
    cd doctors-app
    ```

3.  **Install the dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Run the code generation tool:**
    ```bash
    flutter pub run build_runner build
    ```

5.  **Run the application:**
    ```bash
    flutter run
    ```

## 📂 Project Structure

```
lib/
├── core/
│   ├── di/                   # Dependency Injection setup
│   ├── errors/               # Failure and exception classes
│   ├── helpers/              # Utility functions and constants
│   ├── services/             # API service and Dio setup
│   ├── use_case/             # Base use case classes
│   ├── util/                 # App-wide constants (colors, styles, routes)
│   └── widgets/              # Common shared widgets
│
└── feature/
    ├── auth/                 # Authentication feature
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    │
    ├── main/                 # Home/Main feature (doctor lists, categories)
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    │
    └── search/               # Search feature
        ├── data/
        ├── domain/
        └── presentation/
