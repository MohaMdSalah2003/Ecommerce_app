🛒 FluxStore | Advanced E-commerce Ecosystem
FluxStore is a high-performance, scalable E-commerce solution built with Flutter. The architecture is designed to handle hybrid data sources, fetching dynamic product catalogs via RESTful APIs while managing real-time user data, authentication, and synchronization through Firebase.

🏗 Key Engineering Highlights
Hybrid Data Layer: Seamless integration between REST APIs (for products/categories) and Firebase (for user profiles, favorites, and cart persistence).

Reactive State Management: Powered by Cubit, ensuring a lightweight memory footprint and predictable state transitions.

Dependency Injection: Utilizing Get_it for service location and decoupling business logic from the UI.

Error Handling: Implementation of the Either type (Dartz) for robust functional error handling and graceful UI feedback.

Caching Strategy: Image caching and local persistence to ensure a smooth UX under unstable network conditions.

🚀 Professional Features
   Dynamic Catalog: Real-time product fetching with support for pagination and filtering.

  Secure Checkout: Integrated cart management system with real-time price calculation.

  Unified Auth: Multi-channel authentication (Email/Password & Social) via Firebase.

  Wishlist & Favorites: Persistent storage for user preferences across devices.

  Search Engine: Optimized search functionality with debouncing for API efficiency.

🛠 Tech Stack
Framework: Flutter

  Backend as a Service: Firebase (Auth, Firestore, Cloud Storage)

  Networking: Dio (with Interceptors for logging and headers)

  State Management: Flutter_Bloc (Cubit)

  Local Storage: Hive or Shared Preferences

   Architecture: Clean Architecture (Data, Domain, Presentation layers)
   📂 Project Organization
Bash
lib/
├── core/
│   ├── api/            # API Endpoints and Dio configuration
│   ├── errors/         # Failures and UI exceptions
│   ├── theme/          # Design system and typography
│   └── usecases/       # Abstract base for business logic
├── features/
│   ├── shop/           # Product catalog, API integration
│   ├── cart/           # Cart logic and local/cloud sync
│   ├── auth/           # Firebase Authentication flow
│   └── profile/        # User data management
├── main.dart           # DI initialization and App entry
└── app.dart            # Router and Global Providers

