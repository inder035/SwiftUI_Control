//
//  ModifiersLibraryView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 19/07/24.
//

import SwiftUI

struct ModifiersLibraryView: View {
    var body: some View {
        List {
            Section("Controls") {
                NavigationLink(destination: ActionSheetView()) { Text("Action Sheet")}
                NavigationLink(destination: AlertView()) { Text("Alert")}
                NavigationLink(destination: BadgeView()) { Text("Badge")}
                NavigationLink(destination: ConfirmationDialogView()) { Text("Confirmation Dialog")}
                NavigationLink(destination: ContextMenuView()) { Text("Context Menu")}
                NavigationLink(destination: ControlSizeView()) { Text("Control Size")}
                NavigationLink(destination: DefaultFocusView()) { Text("Default Focus")}
                NavigationLink(destination: FocusedView()) { Text("Focused")}
                NavigationLink(destination: ItemProviderView()) { Text("Item Provider")}
                NavigationLink(destination: NavigationDestinationView(isShow: false)) { Text("Navigation Destination")}
                NavigationLink(destination: NavigationDocumentView()) { Text("Navigation Document")}
                NavigationLink(destination: PersistentSystemOverlaysView()) { Text("Persistent System Overlays")}
                NavigationLink(destination: PopoverView()) { Text("Popover")}
                NavigationLink(destination: PresentationDragIndicatorView()) { Text("Presentation Drag Indicator")}
                NavigationLink(destination: SafeAreaInsetView()) { Text("Safe Area Inset")}
                NavigationLink(destination: SheetView()) { Text("Sheet")}
                NavigationLink(destination: SubmitScopeView()) { Text("Submit Scope")}
                NavigationLink(destination: TabItemView()) { Text("Tab Item")}
                NavigationLink(destination: ToolbarView()) { Text("Toolbar")}
                NavigationLink(destination: ToolbarTitleMenuView()) { Text("Toolbar Title Menu")}
            }
        }
    }
}

#Preview {
    ModifiersLibraryView()
}
