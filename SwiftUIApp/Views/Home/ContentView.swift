//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List {
            Section("Controls") {
                NavigationLink(destination: ButtonView()) { Text("Button")}
                NavigationLink(destination: ColorPickerView()) { Text("Color Picker")}
                NavigationLink(destination: DatePickerView()) { Text("Date Picker")}
                NavigationLink(destination: DisclosureGroupView()) { Text("Disclosure Group")}
                NavigationLink(destination: EditButtonView()) { Text("Edit Button")}
                NavigationLink(destination: FormView()) { Text("Form")}
                NavigationLink(destination: GaugeView()) { Text("Gauge")}
                NavigationLink(destination: GroupBoxView()) { Text("Group Box")}
                NavigationLink(destination: LabelView()) { Text("Label")}
                NavigationLink(destination: LabeledContentView()) { Text("Labeled Content")}
                NavigationLink(destination: LinkView()) { Text("Link")}
                NavigationLink(destination: ListView()) { Text("List")}
                NavigationLink(destination: MenuView()) { Text("Menu")}
                NavigationLink(destination: MultiDatePickerView()) { Text("Multi Date Picker")}
                NavigationLink(destination: NavigationLinkView()) { Text("Navigation Link")}
                NavigationLink(destination: NavigationSplitViewExample()) { Text("Navigation Split View")}
                NavigationLink(destination: NavigationStackView()) { Text("Navigation Stack")}
                NavigationLink(destination: NavigationViewExample()) { Text("Navigation View")}
                NavigationLink(destination: OutlineGroupView()) { Text("Outline Group")}
                NavigationLink(destination: PasteButtonView()) { Text("Paste Button")}
                NavigationLink(destination: PickerView()) { Text("Picker")}
                NavigationLink(destination: ProgressViewExample()) { Text("Progress View")}
                NavigationLink(destination: RenameButtonView()) { Text("Rename Button")}
                NavigationLink(destination: ScrollViewExample()) { Text("Scroll View")}
                NavigationLink(destination: SectionView()) { Text("Section")}
                NavigationLink(destination: SecureFieldView()) { Text("Secure Field")}
                NavigationLink(destination: ShareLinkView()) { Text("Share Link")}
                NavigationLink(destination: SigninAppleView()) { Text("Sign In With Apple Button")}
                NavigationLink(destination: SliderView()) { Text("Slider")}
                NavigationLink(destination: StepperView()) { Text("Stepper")}
                NavigationLink(destination: TabViewExample()) { Text("Tab View")}
                NavigationLink(destination: TableView()) { Text("Table")}
                NavigationLink(destination: TextView()) { Text("Text")}
                NavigationLink(destination: TextEditorView()) { Text("Text Editor")}
                NavigationLink(destination: TextFieldView()) { Text("Text Field")}
                NavigationLink(destination: ToggleView()) { Text("Toggle")}
            }
            Section("Layout") {
                NavigationLink(destination: ControlGroupView()) { Text("Control Group")}
                NavigationLink(destination: DepthStackView()) { Text("Depth Stack")}
                NavigationLink(destination: GeometryReaderView()) { Text("Geometry Reader")}
                NavigationLink(destination: HorizontalStackView()) { Text("Horizontal Stack")}
                NavigationLink(destination: LazyHorizontalGridView()) { Text("Lazy Horizontal Grid")}
                NavigationLink(destination: LazyHorizontalStackView()) { Text("Lazy Horizontal Stack")}
                NavigationLink(destination: LazyVerticalGridView()) { Text("Lazy Vertical Grid")}
                NavigationLink(destination: LazyVerticalStackView()) { Text("Lazy Vertical Stack")}
                NavigationLink(destination: ScrollViewReaderView()) { Text("Scroll View Reader")}
                NavigationLink(destination: SpacerView()) { Text("Spacer")}
                NavigationLink(destination: VerticalStackView()) { Text("Vertical Stack")}
                NavigationLink(destination: ViewThatFitsView()) { Text("View That Fits")}
            }
            
            Section("Paint") {
                NavigationLink(destination: AngularGradientView()) { Text("Angular Gradient")}
                NavigationLink(destination: EllipticalGradientView()) { Text("Elliptical Gradient")}
                NavigationLink(destination: LinearGradientView()) { Text("Linear Gradient")}
                NavigationLink(destination: RadialGradientView()) { Text("Radial Gradient")}
            }
            
            Section("Other") {
                NavigationLink(destination: AsyncImageView()) { Text("Async Image")}
                NavigationLink(destination: CanvasView()) { Text("Canvas")}
                NavigationLink(destination: CapsuleView()) { Text("Capsule")}
                NavigationLink(destination: CircleView()) { Text("Circle")}
                NavigationLink(destination: ColorView()) { Text("Color")}
                NavigationLink(destination: ContainerRelativeShapeView()) { Text("Container Relative Shape")}
                NavigationLink(destination: ContentUnavailableViewExample()) { Text(" Content Unavailable View")}
                NavigationLink(destination: DividerView()) { Text("Divide")}
                NavigationLink(destination: EllipseView()) { Text("Ellipse")}
                NavigationLink(destination: EmptyViewExample()) { Text("EmptyView")}
                NavigationLink(destination: GroupView()) { Text("Group")}
                NavigationLink(destination: ImageView()) { Text(" Image")}
                NavigationLink(destination: PathView()) { Text("Path")}
                NavigationLink(destination: RectangleView()) { Text("Rectangle")}
                NavigationLink(destination: RoundedRectangleView()) { Text("Rounded Rectangle")}
                NavigationLink(destination: TimelineViewExample()) { Text("Timeline View")}
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ContentView()
}
