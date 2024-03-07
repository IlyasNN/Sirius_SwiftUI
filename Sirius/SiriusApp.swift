import SwiftUI

@main
struct SiriusApp: App {
//  @State var likeStorage = LikeStorage()

  var body: some Scene {
    WindowGroup {
      RootView()
    }
  }
}

struct LikeStorageKey: EnvironmentKey {
    static var defaultValue = LikeStorage()
}

extension EnvironmentValues {
    var likeStorage: LikeStorage {
        get { self[LikeStorageKey.self] }
        set { self[LikeStorageKey.self] = newValue }
    }
}
