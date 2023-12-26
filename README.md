# OhMyGif

`OhMyGif` is a Swift Package that provides a simple and efficient way to embed and display GIF animations in SwiftUI applications. It utilizes standard SwiftUI components and does not require any third-party libraries.

## Preview

![GIF Preview](https://github.com/ohmydeveloper/OhMyGif/blob/main/Image/preview.gif)

## Features

- Easily integrates into any SwiftUI application.
- Supports displaying GIF animations from the project's assets.
- Automatically manages memory and performance.
- Provides frame-per-second (FPS) settings to control animation speed.

## Installation

To add `OhMyGif` to your project, follow these steps:

1. Open your Xcode project.
2. Go to `File` > `Swift Packages` > `Add Package Dependency...`
3. Paste the URL of your Git repository.

## Usage

Here is an example of how to use `OhMyGif` in your SwiftUI view:

```swift
import SwiftUI
import OhMyGif

struct ContentView: View {
    var body: some View {
        OhMyGif(name: "your_gif_name", fps: 30)
    }
}
```

Remember to add your GIF file to your project's assets and specify the correct file name in the `OhMyGif` initializer.

## Contributing

If you would like to contribute to `OhMyGif`, please feel free to submit a pull request or create an issue.

## License

`OhMyGif` is distributed under the MIT license. See the [LICENSE](LICENSE.md) file for more details.
