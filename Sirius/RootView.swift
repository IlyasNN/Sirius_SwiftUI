import SwiftUI

struct RootView: View {
    var body: some View {
      TabView {
        CatsView()
          .tabItem {
            Label("Cats", systemImage: "cat.circle")
          }
        PresentationsView()
          .tabItem {
            Label("Examples", systemImage: "bell.circle.fill")
          }
      }
    }
}

#Preview {
    RootView()
}
