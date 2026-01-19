
            Start editing…# 🎬 Movie App (Flutter Assignment)
A Flutter-based movie browsing application developed as part of a student internship coding assignment.
The app allows users to explore movies, view details, mark favorites, manage a watchlist, and fetch real-time movie data using the TMDB API.

## 📱 Features

🚀 Splash Screen
🧭 Bottom Navigation with:

Movies
Favorites
Watchlist


🎥 Movies Listing (from TMDB API)
🔍 Search movies by name
📄 Movie Detail Screen with:

Movie Banner
Title
Genre
Release Date
Description
User Rating (Circular Progress Bar)


⭐ Add / Remove Favorites
🔖 Add / Remove Watchlist
▶️ Play Now button with in-app notification
⏳ Loading State
❌ Error State
📭 Empty State handling
📱 Responsive UI for common phone sizes


## 🛠 Tech Stack

Flutter (Dart)
TMDB API (v3 authentication)
Material Design
In-memory state management (no authentication)


## 🔑 API Used

The Movie Database (TMDB) API

Endpoint: /movie/popular
Authentication: API Key (v3 auth)




⚠️ Note: The TMDB API key is included locally for demo and assignment purposes only.
Access tokens (v4) are not required for this application.


## 📂 Project Structure
lib/
├── models/
│   └── movie.dart
├── screens/
│   ├── splash_screen.dart
│   ├── home_screen.dart
│   ├── movies_screen.dart
│   ├── movie_detail_screen.dart
│   ├── favourites_screen.dart
│   └── watchlist_screen.dart
├── services/
│   └── tmdb_service.dart
├── state/
│   └── app_state.dart
└── main.dart


## ⚙️ Setup Instructions
### Prerequisites

Flutter SDK (stable channel)
Android Studio / VS Code
Android Emulator or physical device


### Steps to Run Locally


Clone the repository:
git clone &lt;GITHUB_REPO_LINK&gt;



Navigate to the project directory:
cd lenskartproject



Install dependencies:
flutter pub get



Run the application:
flutter run




## 📦 Build APK (Optional)
To generate a debug APK:
flutter build apk

The APK will be available at:
build/app/outputs/flutter-apk/app-debug.apk


## 🧠 Assumptions &amp; Notes

No user authentication is implemented.
Favorites and Watchlist are stored in-memory per app session.
API key is hardcoded for demo purposes.
Internet connection is required to load movie data.
This project is intended only for learning and evaluation, not commercial use.


## ✅ Assignment Compliance

✔ Android / Flutter platform
✔ Clean folder structure
✔ Runnable locally
✔ Loading / Empty / Error states
✔ Responsive UI
✔ Consistent typography and spacing
✔ Original work


## 👤 Author
Om Patil
Student – MS Ramaiah Institute of Technology

## 📄 License
This project is for educational and evaluation purposes only.