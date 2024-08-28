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
            
            Section("Effects") {
                NavigationLink(destination: AccentColorView()) { Text("Accent Color")}
                NavigationLink(destination: BlendModeView()) { Text("Blend Mode")}
                NavigationLink(destination: BlurView()) { Text("Blur")}
                NavigationLink(destination: BorderView()) { Text("Border")}
                NavigationLink(destination: BrightnessView()) { Text("Brightness")}
                NavigationLink(destination: ButtonBorderShapeView()) { Text("Button Border Shape")}
                NavigationLink(destination: ClipShapeView()) { Text("Clip Shape")}
                NavigationLink(destination: ClippedView()) { Text("Clipped")}
                NavigationLink(destination: ColorMultiplyView()) { Text("Color Multiply")}
                NavigationLink(destination: CompositingGroupView()) { Text("Compositing Group")}
                NavigationLink(destination: ContentShapeView()) { Text("Content Shape")}
                NavigationLink(destination: ContrastView()) { Text("Contrast")}
                NavigationLink(destination: CornerRadiusView()) { Text("Corner Radius")}
                NavigationLink(destination: DrawingGroupView()) { Text("Drawing Group")}
                NavigationLink(destination: ForegroundColorView()) { Text("Foreground Color")}
                NavigationLink(destination: ForegroundStyleView()) { Text("Foreground Style")}
                NavigationLink(destination: GrayscaleView()) { Text("Grayscale")}
                NavigationLink(destination: HoverEffectView()) { Text("Hover Effect")}
                NavigationLink(destination: HueRotationView()) { Text("HueRotation")}
                NavigationLink(destination: InvertView()) { Text("Invert")}
                NavigationLink(destination: LuminanceAlphaView()) { Text("Luminance Alpha")}
                NavigationLink(destination: MaskView()) { Text("Mask")}
                NavigationLink(destination: MatchedGeometryEffectView()) { Text("Matched Geometry Effect")}
                NavigationLink(destination: OpacityView()) { Text("Opacity")}
                NavigationLink(destination: PreferredColorSchemeView()) { Text("Preferred Color Scheme")}
                NavigationLink(destination: ProjectionView()) { Text("Projection")}
                NavigationLink(destination: Rotation3DEffectView()) { Text("Rotation 3D Effect")}
                NavigationLink(destination: RotationEffectView()) { Text("Rotation Effect")}
                NavigationLink(destination: SaturationView()) { Text("Saturation")}
                NavigationLink(destination: ScaleEffectView()) { Text("Scale Effect")}
                NavigationLink(destination: ShadowView()) { Text("Shadow")}
                NavigationLink(destination: ToolbarColorSchemeVIew()) { Text("Toolbar Color Scheme")}
                NavigationLink(destination: TransformView()) { Text("Transform")}
                NavigationLink(destination: VisualEffectView()) { Text("Visual Effect")}
            }
            
            Section("Layout") {
                NavigationLink(destination: AlignmentGuideView()) { Text("Alignment Guide")}
                NavigationLink(destination: AnchorPreferenceView()) { Text("Anchor Preference View")}
                NavigationLink(destination: AspectRatioView()) { Text("Aspect Ratio")}
                NavigationLink(destination: BackgroundView()) { Text("Background")}
                NavigationLink(destination: BackgroundPreferenceValueView()) { Text("Background Preference Value")}
                NavigationLink(destination: ContainerRelativeFrameView()) { Text("Container Relative Frame")}
                NavigationLink(destination: ContentMarginsView()) { Text("Content Margins")}
                NavigationLink(destination: CoordinateSpaceView()) { Text("Coordinate Space")}
                NavigationLink(destination: DigitalCrownAccessoryView()) { Text("Digital Crown Accessory")}
                NavigationLink(destination: EdgesIgnoringSafeAreaView()) { Text("Edges Ignoring Safe Area")}
                NavigationLink(destination: FixedSizeView()) { Text("Fixed Size")}
                NavigationLink(destination: FrameView()) { Text("Frame")}
                NavigationLink(destination: FullScreenCoverView()) { Text("Full Screen Cover")}
                NavigationLink(destination: GridCellAnchorView()) { Text("Grid Cell Anchor")}
                NavigationLink(destination: GridCellColumnsView()) { Text("Grid Cell Columns")}
                NavigationLink(destination: GridCellUnsizedAxesView()) { Text("Grid Cell Unsized Axes")}
                NavigationLink(destination: GridColumnAlignmentView()) { Text("Grid Column Alignment")}
                NavigationLink(destination: HiddenView()) { Text("Hidden")}
                NavigationLink(destination: IgnoresSafeAreaView()) { Text("Ignores Safe Area")}
                NavigationLink(destination: LabelsHiddenView()) { Text("Labels Hidden")}
                NavigationLink(destination: LayoutPriorityView()) { Text("Layout Priority")}
                NavigationLink(destination: MenuIndicatorView()) { Text("Menu Indicator")}
                NavigationLink(destination: MenuOrderView()) { Text("Menu Order")}
                NavigationLink(destination: NavigationSplitViewColumnWidthView()) { Text("Navigation Split View Column Width")}
                NavigationLink(destination: OverlayView()) { Text("Overlay")}
                NavigationLink(destination: OverlayPreferenceValueView()) { Text("Overlay Preference Value")}
                NavigationLink(destination: PaddingView()) { Text("Padding")}
                NavigationLink(destination: PositionView()) { Text("Position")}
                NavigationLink(destination: PresentationDetentsView()) { Text("Presentation Detents")}
                NavigationLink(destination: SafeAreaPaddingView()) { Text("Safe Area Padding")}
                NavigationLink(destination: ScaledtoFillView()) { Text("Scaled to Fill")}
                NavigationLink(destination: ScaledtoFitView()) { Text("Scaled to Fit")}
                NavigationLink(destination: ScenePaddingView()) { Text("Scene Padding")}
                NavigationLink(destination: ScrollContentBackgroundView()) { Text("Scroll Content Background")}
                NavigationLink(destination: ScrollDismissesKeyboardView()) { Text("Scroll Dismisses Keyboard")}
                NavigationLink(destination: ScrollIndicatorsView()) { Text("Scroll Indicators")}
                NavigationLink(destination: StatusBarHiddenView()) { Text("Status Bar Hidden")}
                NavigationLink(destination: ToolbarBackgroundView()) { Text("Toolbar Background")}
                NavigationLink(destination: ToolbarRoleView()) { Text("Toolbar Role")}
                NavigationLink(destination: TransformAnchorPreferenceView()) { Text("Transform Anchor Preference")}
                NavigationLink(destination: ZIndexView()) { Text("Z-Index")}
            }
            
            Section("Text") {
                NavigationLink(destination: TextLayoutView()) { Text("Text Layout")}
            }
            
            Section("Images") {
                NavigationLink(destination: ImageLayoutView()) { Text("Image Layout")}
            }
            
            Section("Other") {
                NavigationLink(destination: AllowsHitTesting()) { Text("Allows Hit Testing")}
                NavigationLink(destination: AnimationView()) { Text("Animation")}
                NavigationLink(destination: AppStorageView()) { Text("App Storage")}
                NavigationLink(destination: ContentTransitionView()) { Text("Content Transition")}
                NavigationLink(destination: DefersSystemGesturesView()) { Text("Defers System Gestures")}
                NavigationLink(destination: FocusStateView()) { Text("Focus State")}
                NavigationLink(destination: InspectorView()) { Text("Inspector")}
                NavigationLink(destination: InteractiveDismissDisabledView()) { Text("Interactive Dismiss Disabled")}
                NavigationLink(destination: KeyboardShortcutView()) { Text("Keyboard Shortcut")}
                NavigationLink(destination: LayoutValueView()) { Text("Layout Value")}
                NavigationLink(destination: PrivacySensitiveView()) { Text("Privacy Sensitive")}
                NavigationLink(destination: PreferenceView()) { Text("Preference")}
                NavigationLink(destination: RedactedView()) { Text("Redacted")}
                NavigationLink(destination: ScrollTransitionView()) { Text("Scroll Transition")}
                NavigationLink(destination: TransitionView()) { Text("Transition")}
                NavigationLink(destination: TransformPreferenceView()) { Text("Transform Preference")}
                NavigationLink(destination: TransactionView()) { Text("Transaction")}
                NavigationLink(destination: TintView()) { Text("Tint")}
                NavigationLink(destination: TagView()) { Text("Tag")}
                NavigationLink(destination: FlowerView()) { Text("Flower")}
            }
            
        }
    }
}

#Preview {
    ModifiersLibraryView()
}
