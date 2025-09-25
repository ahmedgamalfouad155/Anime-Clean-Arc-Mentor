# Animy Clean Architecture 🎬

A simple Flutter app built using **Clean Architecture** as the main approach for structuring the project.  
The app showcases how to apply Clean Architecture principles even with **local dummy data** (without APIs or backend).

---

## ✨ Features

- **Home Screen** 🏠  
  - Displays a list of anime series (with name, type, rating, and image).  
  - Shows popular characters with their names and the series they appeared in.  

- **Details Screen** 📖  
  - Shows more info about a selected anime series.  
  - Includes cover image, number of views, seasons, claps, and a short description.

- **Subscription Screen** 💳  
  - Simple UI for choosing between monthly or yearly subscription plans.  

---

## 🏛️ Clean Architecture Layers

The app follows **Clean Architecture** principles:

- **Domain Layer**
  - `Entities`: Core business objects (`AnimeSeries`, `AnimeCharacter`).  
  - `Repositories`: Abstract contracts that define the expected data operations.  
  - `UseCases`: Application-specific business rules (e.g., `GetAnimeSeries`, `GetAnimeCharacters`).

- **Data Layer**
  - `Models`: Extends domain entities and adds JSON/local mapping.  
  - `Local Data Source`: Provides local dummy data as if coming from an API.  
  - `Repository Implementation`: Implements domain contracts using the local data source.

- **Presentation Layer**
  - **State Management**: Implemented using **Cubit (Bloc)**.  
  - **UI Screens & Widgets**: Simple and responsive design to display series, characters, and details.

---

## 📂 Project Structure
```bash
lib/
│
├── core/ 
│
├── features/
│ └── home/
│ ├── domain/
│ │ ├── entities/
│ │ ├── repositories/
│ │ └── usecases/
│ │
│ ├── data/
│ │ ├── models/ 
│ │ ├── dummy_data/
│ │ ├── repositories/
│ │ └── datasources/
│ │
│ └── presentation/
│ ├── cubit/
│ ├── view/ 
│ └── widgets/
│
└── main.dart
```
