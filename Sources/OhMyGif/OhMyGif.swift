import SwiftUI
import ImageIO

public struct OhMyGif: View {
    private let images: [UIImage]
    private let interval: TimeInterval
    @State private var currentIndex = 0
    @State private var timer: Timer?

    public init(name: String, fps: Double = 30) {
        self.images = OhMyGif.extractFrames(from: name)
        self.interval = 1 / fps
    }

    public var body: some View {
        Image(uiImage: images[currentIndex])
            .resizable()
            .scaledToFit()
            .onAppear {
                timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
                    currentIndex = (currentIndex + 1) % images.count
                }
            }
            .onDisappear {
                timer?.invalidate()
                timer = nil
            }
    }

    fileprivate static func extractFrames(from gifName: String) -> [UIImage] {
        guard let asset = NSDataAsset(name: gifName),
              let source = CGImageSourceCreateWithData(asset.data as CFData, nil) else {
            return []
        }

        var images = [UIImage]()
        let count = CGImageSourceGetCount(source)
        for i in 0..<count {
            if let cgImage = CGImageSourceCreateImageAtIndex(source, i, nil) {
                images.append(UIImage(cgImage: cgImage))
            }
        }
        return images
    }
}

