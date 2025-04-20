# Shared Navigation Example

This project demonstrates a shared navigation implementation using SwiftUI and the Swift Navigation library. It's structured as a multi-module project with separate Reader and Writer apps that share common navigation logic through a shared module.

## Project Structure

- `Shared/` - Contains the shared navigation logic and common components
- `Reader/` - The reader application module
- `Writer/` - The writer application module

## Requirements

- iOS 18.0+
- Xcode 15.0+
- Swift 6.1+

## Shared Navigation Implementation

The project implements a sophisticated shared navigation system using several key components:

### Navigation Stack
- Uses SwiftUI's NavigationStack with a shared path state
- Implements a shared navigation state that persists across both Reader and Writer apps
- Navigation state is stored in a shared app group container

### Key Components

1. **Destination Enum**
   - Defines all possible navigation destinations using a `@CasePathable` enum
   - Currently includes `details` and `comments` destinations

2. **Shared ViewModel**
   - Manages the navigation path state
   - Observable class that can be shared between apps
   - Implements Codable for persistence

3. **Shared Storage**
   - Uses app group containers for cross-app data sharing
   - Stores navigation state in a JSON file
   - Enables real-time synchronization between apps

### How It Works

1. **State Sharing**
   - Both apps read from and write to the same navigation state file
   - Changes in one app are immediately reflected in the other
   - Uses FileManager's containerURL for secure app group sharing

2. **Navigation Flow**
   - Apps maintain their own NavigationStack
   - Stack state is synchronized through the shared ViewModel
   - State restoration is supported

3. **Cross-App Coordination**
   - Apps can trigger navigation in each other
   - State changes are persisted and synchronized
   - Supports complex navigation scenarios across apps

## Current Issues

### Navigation State Persistence
- Navigation works only once and then stops responding
- The shared state synchronization mechanism needs improvement
- State updates are not properly propagated between apps after the initial navigation

## Demonstration

Watch the demonstration video to see the current implementation and its limitations:

<div align="center">
  <a href="https://youtu.be/OSJYcF504Ls">
    <img src="https://img.youtube.com/vi/OSJYcF504Ls/0.jpg" alt="Shared Navigation Demo">
  </a>
</div>

[Shared Navigation Demo](https://youtu.be/OSJYcF504Ls)