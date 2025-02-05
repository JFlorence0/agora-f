# Development Log - Agora Frontend  

This document tracks the development progress of the Agora frontend, built with SwiftUI. Each entry includes key decisions, progress made, and challenges encountered.  

---

## February 2, 2025 - Project Initialization  

### What I Did  
- Created the **Agora Frontend** project using **SwiftUI**.  
- Removed default navigation and list components.   
- Committed the initial project setup to GitHub.  

### Why I Chose Swift  
- Pushing myself as a developer: I’m comfortable in React Native, so I intentionally chose Swift for the frontend and Java for the backend to step outside my comfort zone.  
- Slower development at first, faster in the long run: Learning SwiftUI will take time initially, but mastering it will improve my ability to work across multiple tech stacks.  
- Native code: I've read that performance is better and that there's more flexibilty in using native code and would like to see the difference.

---

## Next Steps  
1. Call the backend API and fetch data.  
2. Display the data on the Home Screen.  
3. Figure out the app’s flow, but prioritize getting the backend fully functional first.  

##February 5, 2025 - API Integration & Displaying Data

### What I Did
- Set up API calls by creating UserService.swift to handle network requests.
- Defined DEV_BASE_URL inside Constants.swift for a reusable API base URL.
- Created a User model using Codable to parse API responses into structured Swift objects.
- Built UserViewModel.swift to fetch and store user data reactively using @ObservableObject.
- Updated Home.swift to display users dynamically in a list.

### Why I Structured It This Way
- Separation of concerns: I structured the app using Services, ViewModels, and Models to keep API logic separate from UI components, similar to how I use Context in React Native.
- SwiftUI’s declarative approach: Instead of manually managing state like in React Native, SwiftUI uses @StateObject and @Published to automatically update the UI when data changes.
- Async/await for networking: Unlike useEffect() in React, SwiftUI requires .task {} or .onAppear {} to handle API requests efficiently within views.
---

## Next Steps

1. Improve error handling to display messages when API requests fail.
2. Format timestamps to show human-readable createdAt dates.
3. Expand API functionality by fetching data from another endpoint.
