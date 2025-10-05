# SwiftUI Complete Guide

## What is SwiftUI?

SwiftUI is Apple's modern declarative framework for building user interfaces across all Apple platforms. Launched in 2019, it represents a paradigm shift from UIKit's imperative approach to a declarative, reactive programming model.

## Key Aspects of SwiftUI

### 1. **Declarative Syntax**
Instead of telling the UI *how* to transition between states, you describe *what* the UI should look like in each state.

```swift
Text("Hello, SwiftUI!")
    .font(.title)
    .foregroundColor(.blue)
```

### 2. **View Protocol**
Everything in SwiftUI is a View. Views are value types (structs) that describe UI:

```swift
struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
```

### 3. **State Management**
SwiftUI provides property wrappers for reactive state:

- `@State`: Local view state
- `@Binding`: Two-way connection to state
- `@StateObject`: Reference type state ownership
- `@ObservedObject`: External state observation
- `@EnvironmentObject`: Shared state across view hierarchy

### 4. **Layout System**
SwiftUI uses a flexible box model with stacks:

- `VStack`: Vertical layout
- `HStack`: Horizontal layout
- `ZStack`: Layered layout
- `GeometryReader`: Adaptive layouts

### 5. **Modifiers**
Views are styled and configured through modifiers that return new views:

```swift
Text("Hello")
    .padding()
    .background(Color.blue)
    .cornerRadius(10)
```

## Project Setup

### Prerequisites

1. **Xcode**: Version 12.0 or later (preferably latest)
2. **macOS**: Big Sur (11.0) or later for latest features
3. **Apple Developer Account**: Free for testing, $99/year for App Store

### Creating a New SwiftUI Project

1. Open Xcode
2. File → New → Project
3. Choose "iOS" → "App"
4. Enter project details:
   - Product Name: SimpleApp
   - Organization Identifier: com.yourname
   - Interface: SwiftUI
   - Language: Swift
   - Use Core Data: No
   - Include Tests: Yes

### Project Structure

```
SimpleApp/
├── SimpleApp.swift          # App entry point
├── ContentView.swift        # Main view
├── Assets.xcassets/         # Images, colors, icons
├── Preview Content/         # Preview assets
└── Info.plist              # App configuration
```

### Key Files Explained

**SimpleApp.swift**: The app's entry point
```swift
@main
struct SimpleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

**ContentView.swift**: Your main UI
```swift
struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}
```

## Testing Your App

### 1. **SwiftUI Preview**
Real-time preview in Xcode:
```swift
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
- Press `Cmd + Option + P` to resume preview
- Click "Live Preview" for interactive mode

### 2. **Simulator Testing**

1. Select target device from Xcode toolbar
2. Press `Cmd + R` to build and run
3. Test on different devices:
   - iPhone SE (smallest screen)
   - iPhone 15 (standard)
   - iPhone 15 Pro Max (largest)
   - iPad (if universal app)

### 3. **Device Testing**

1. Connect iPhone/iPad via USB
2. Enable Developer Mode on device (Settings → Privacy & Security)
3. Trust your Mac when prompted
4. Select device in Xcode
5. Press `Cmd + R` to run

### 4. **Unit Testing**

Create test file in Tests folder:
```swift
import XCTest
@testable import SimpleApp

class SimpleAppTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(2 + 2, 4)
    }
}
```
Run tests with `Cmd + U`

### 5. **UI Testing**

```swift
class SimpleAppUITests: XCTestCase {
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssert(app.staticTexts["Hello, World!"].exists)
    }
}
```

## App Store Deployment

### Step 1: **Prepare Your App**

1. **App Icon**: Create 1024x1024 icon
2. **Screenshots**: Required sizes:
   - iPhone 6.7": 1290 × 2796
   - iPhone 6.5": 1242 × 2688
   - iPhone 5.5": 1242 × 2208
   - iPad 12.9": 2048 × 2732

3. **Version & Build Numbers**:
   - Version: User-facing (1.0.0)
   - Build: Internal tracking (1)

### Step 2: **Apple Developer Account**

1. Visit [developer.apple.com](https://developer.apple.com)
2. Enroll in Apple Developer Program ($99/year)
3. Accept agreements in App Store Connect

### Step 3: **Configure App ID & Certificates**

1. In Xcode, select project → Signing & Capabilities
2. Enable "Automatically manage signing"
3. Select your team
4. Xcode creates provisioning profiles automatically

### Step 4: **Create App Store Connect Record**

1. Go to [appstoreconnect.apple.com](https://appstoreconnect.apple.com)
2. My Apps → "+" → New App
3. Fill in:
   - Platform: iOS
   - Name: Your app name
   - Primary Language
   - Bundle ID: Select from dropdown
   - SKU: Unique identifier
   - User Access: Full Access

### Step 5: **Archive and Upload**

1. Select "Any iOS Device" as target
2. Product → Archive
3. Wait for build to complete
4. Organizer window opens automatically
5. Click "Distribute App"
6. Choose "App Store Connect"
7. Upload → Automatically manage signing
8. Upload complete!

### Step 6: **App Store Metadata**

In App Store Connect:

1. **App Information**:
   - Category
   - Content rights
   - Age rating

2. **Pricing**: Free or select tier

3. **App Privacy**:
   - Privacy policy URL
   - Data collection practices

4. **Version Information**:
   - Description
   - Keywords
   - Support URL
   - Marketing URL
   - Screenshots
   - App Preview (optional video)

### Step 7: **Submit for Review**

1. Select build from TestFlight section
2. Answer export compliance questions
3. Add review notes (optional)
4. Submit for Review

### Step 8: **Review Process**

- **Timeline**: Usually 24-48 hours
- **Common rejection reasons**:
  - Crashes or bugs
  - Broken links
  - Placeholder content
  - Guideline violations
  - Poor performance

### Step 9: **Release**

Once approved, choose:
- **Manual Release**: You control when
- **Automatic Release**: Immediately after approval

## Testing Checklist

- [ ] All UI elements visible on smallest iPhone
- [ ] No text truncation
- [ ] Proper keyboard handling
- [ ] Dark mode support
- [ ] Landscape orientation (if supported)
- [ ] Memory leaks check
- [ ] Network error handling
- [ ] Accessibility (VoiceOver)
- [ ] Performance on older devices

## Common SwiftUI Patterns

### Navigation
```swift
NavigationView {
    NavigationLink("Next", destination: DetailView())
}
```

### Lists
```swift
List(items) { item in
    Text(item.name)
}
```

### Forms
```swift
Form {
    TextField("Name", text: $name)
    Toggle("Enabled", isOn: $isEnabled)
}
```

### Alerts
```swift
.alert("Title", isPresented: $showAlert) {
    Button("OK") { }
}
```

## Performance Tips

1. Use `@StateObject` for reference types
2. Avoid unnecessary view updates with `EquatableView`
3. Use `LazyVStack` for long lists
4. Profile with Instruments
5. Minimize use of `GeometryReader`

## Resources

- [Apple SwiftUI Documentation](https://developer.apple.com/documentation/swiftui/)
- [SwiftUI by Example](https://www.hackingwithswift.com/quick-start/swiftui)
- [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

## Troubleshooting

### Preview Not Working
- Clean build: `Cmd + Shift + K`
- Reset preview: `Cmd + Option + P`
- Delete derived data

### Archive Grayed Out
- Ensure "Any iOS Device" selected
- Check signing certificates

### App Rejected
- Read rejection notes carefully
- Respond via Resolution Center
- Fix issues and resubmit

---

This guide covers the essential aspects of SwiftUI development from concept to App Store. SwiftUI's declarative nature makes it powerful yet approachable for creating beautiful, native iOS apps.