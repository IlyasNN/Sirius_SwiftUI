import SwiftUI

struct PresentationsView: View {
  @State var isAlertShown = false
  @State var isSheetShown = false
  @State var isActionSheetShown = false

  var body: some View {
    VStack {

      Text("Example how to use sheetView an Alert")
        .bold()
        .padding()

      // Alert
      Button {
        isAlertShown.toggle()
      } label: {
        HStack {
          Text("Show alert")
          Image(systemName: "bell.circle.fill")
        }
      }
      .buttonStyle(.bordered)
      .padding()

      // Sheet
      Button {
        isSheetShown.toggle()
      } label: {
        HStack {
          Text("Show sheet")
          Image(systemName: "square.and.arrow.up.fill")
        }
      }
      .buttonStyle(.bordered)
      .padding()

      // Action sheet
      Button {
        isActionSheetShown.toggle()
      } label: {
        HStack {
          Text("Show action sheet")
          Image(systemName: "square.and.arrow.up.on.square.fill")
        }
      }
      .buttonStyle(.bordered)
      .padding()

      Spacer()

    }

    .alert(isPresented: $isAlertShown) {
      Alert(
        title: Text("ExampleAlert"),
        message: Text("You can put any text you want here."),
        dismissButton: .cancel(Text("Close"), action: {
          // do something when dismissed
        }))
    }

    .sheet(isPresented: $isSheetShown) {
      SheetView()
        .presentationDetents([.medium, .large])
    }

    .actionSheet(isPresented: $isActionSheetShown) {
      exampleActionSheet()
    }
  }

  private func exampleActionSheet() -> ActionSheet {
    let pictureButton = ActionSheet.Button.default(Text("Change Profile Picture")) {
      // Action
    }
    let profileButton = ActionSheet.Button.default(Text("Edit Profile Information")) {
      // Action
    }
    let logOutButton = ActionSheet.Button.destructive(Text("Log Out")) {
      // Action
    }
    let cancelButton = ActionSheet.Button.cancel(Text("Cancel")) { 
      // Action
    }

    let buttons: [ActionSheet.Button] = [
      pictureButton,
      profileButton,
      logOutButton,
      cancelButton
    ]

    return ActionSheet(title: Text("Change Your Profile"),
                       message: Text(""),
                       buttons: buttons)
  }
}

#Preview {
  PresentationsView()
}
