# Contributing to SwiftUI Playground

First off, thank you for considering contributing to SwiftUI Playground! It's people like you that make SwiftUI Playground such a great tool.

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues as you might find out that you don't need to create one. When you are creating a bug report, please include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps to reproduce the problem**
- **Provide specific examples to demonstrate the steps**
- **Describe the behavior you observed and expected**
- **Include screenshots if possible**
- **Include your environment details** (iOS version, Xcode version, device)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, please include:

- **Use a clear and descriptive title**
- **Provide a detailed description of the suggested enhancement**
- **Provide specific examples to demonstrate the enhancement**
- **Describe the current behavior and expected behavior**
- **Explain why this enhancement would be useful**

### Pull Requests

1. Fork the repo and create your branch from `main`
2. Make your changes following our coding standards
3. Ensure your code compiles without warnings
4. Test your changes thoroughly
5. Update documentation if needed
6. Issue that pull request!

## Development Process

1. **Fork & Clone**: Fork the repository and clone it locally
2. **Branch**: Create a branch for your feature or fix
3. **Code**: Make your changes following Swift best practices
4. **Test**: Run the app and test your changes
5. **Commit**: Commit with a clear message
6. **Push**: Push your changes to your fork
7. **PR**: Submit a pull request

## Swift Style Guide

### Code Formatting

- Use 4 spaces for indentation
- Keep lines under 120 characters when possible
- Use meaningful variable and function names
- Follow SwiftUI conventions

### SwiftUI Best Practices

- Prefer composition over inheritance
- Keep views small and focused
- Use `@State` for local state only
- Extract complex views into separate structs
- Use preview providers for all views

### Example

```swift
struct CustomButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(8)
        }
    }
}
```

## Commit Messages

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests liberally after the first line

### Examples

```
Add dark mode support for ContentView

- Update color scheme handling
- Add adaptive colors to Assets
- Test on both light and dark modes

Fixes #123
```

## Testing

- Test on multiple device sizes (iPhone SE, iPhone 15, iPhone 15 Pro Max)
- Test on both light and dark modes
- Test on minimum supported iOS version
- Include unit tests for any business logic

## Documentation

- Update README.md if you change functionality
- Comment complex code sections
- Update inline documentation for public APIs
- Include examples in documentation when helpful

## Questions?

Feel free to open an issue with your question or reach out to the maintainers directly.

Thank you for contributing! 🎉