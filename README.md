ABDesignSystem
==============

Theme
-----

Theme acts as the central design system for the app. It provides a cohesive design language by defining colors, fonts, spacing, and other UI constants.

Colors
------

The AppColor structure holds the color palette used throughout the app to ensure consistency.

### Primary Colors

*   **Primary**: Used for buttons, headers, or main accents.
    
    *   Dark mode: #303030
        
    *   Light mode: #2461FA
        
*   **Secondary**: Used for secondary buttons or accents.
    

### Background Colors

*   **Background**: Adapts to light/dark mode.
    
    *   Dark mode: #000000
        
    *   Light mode: #FFFFFF
        
*   **Secondary Background**: Used for cards or list items.
    
    *   Dark mode: #A9A9A9
        
    *   Light mode: #D3D3D3
        
*   **Tertiary Background**: Used for subtle backgrounds or borders.
    
    *   Dark mode: #808080
        
    *   Light mode: #FFFFFF
        

### Text Colors

*   **Primary**:
    
    *   Dark mode: #FFFFFF
        
    *   Light mode: #000000
        
*   **Secondary**:
    
    *   Dark mode: #D3D3D3
        
    *   Light mode: #A9A9A9
        
*   **Tertiary**:
    
    *   Dark mode: #808080
        
    *   Light mode: #D3D3D3
        

### System Colors

*   **Success**: Green (systemGreen)
    
*   **Warning**: Yellow (systemYellow)
    
*   **Error**: Red (systemRed)
    
*   **Info**: Blue (systemBlue)
    

### Other Colors

*   **Border**:
    
    *   Dark mode: #D3D3D3
        
    *   Light mode: #A9A9A9
        
*   **Accent**: From the asset catalog (AccentColor)
    
*   **Muted Accent**:
    
    *   Dark mode: #A9A9A9
        
    *   Light mode: #D3D3D3
        
*   **Interactive Colors**:
    
    *   Selected: Blue (_light mode_), Dark Gray (_dark mode_)
        
    *   Hover: Light Gray (_light mode_), Dark Gray (_dark mode_)
        
    *   Disabled: Light Gray (_light mode_), Gray (_dark mode_)
        

Fonts
-----

Theme.Fonts provides a consistent typography system using the Poppins font family.

### Available Font Variants

*   Thin
    
*   Bold
    
*   Light
    
*   Black
    
*   Medium
    
*   Regular
    
*   SemiBold
    
*   ExtraBold
    
*   ExtraLight
    

### Usage

Call Fonts.registerFonts() during app initialization to ensure custom fonts are registered. Fonts are loaded from the app's main bundle and registered programmatically.

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   Theme.Fonts.registerFonts()   `

Spacing
-------

Theme.Spacing ensures consistent spacing for margins, padding, and gaps across the app.

### Standard Spacing Values

*   **Extra Small**: 4
    
*   **Small**: 8
    
*   **Medium**: 16
    
*   **Large**: 32
    
*   **Extra Large**: 64
    
*   **Ultra Large**: 128
    

### Dynamic Spacing

Adjusts spacing based on screen size:

*   Small screens (e.g., iPhone SE): base \* 0.8
    
*   Medium screens (e.g., iPhone 13): base
    
*   Large screens (e.g., iPads): base \* 1.2
    

### Accessible Spacing

Accommodates accessibility settings by scaling the base spacing value:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   Theme.Spacing.accessibleSpacing(base: CGFloat, isAccessibilityEnabled: Bool)   `

CornerRadius
------------

Provides standardized corner radius values to ensure consistent rounded corners.

### Corner Radius Values

*   **Small**: 4
    
*   **Medium**: 8
    
*   **Large**: 16
    
*   **Extra Large**: 24
    
*   **Full**: 9999
    

Example Usage
-------------

Here is an example of how to use Theme values in your SwiftUI views:

Plain textANTLR4BashCC#CSSCoffeeScriptCMakeDartDjangoDockerEJSErlangGitGoGraphQLGroovyHTMLJavaJavaScriptJSONJSXKotlinLaTeXLessLuaMakefileMarkdownMATLABMarkupObjective-CPerlPHPPowerShell.propertiesProtocol BuffersPythonRRubySass (Sass)Sass (Scss)SchemeSQLShellSwiftSVGTSXTypeScriptWebAssemblyYAMLXML`   import SwiftUI  struct ContentView: View {      var body: some View {          VStack(spacing: Theme.Spacing.medium) {              Text("Welcome")                  .font(.custom(Theme.Fonts.bold.rawValue, size: 24))                  .foregroundColor(Theme.Colors.textPrimary)              Button(action: {}) {                  Text("Get Started")                      .padding()                      .background(Theme.Colors.primary)                      .foregroundColor(Theme.Colors.textPrimary)                      .cornerRadius(Theme.CornerRadius.medium)              }          }          .padding(Theme.Spacing.large)          .background(Theme.Colors.background)      }  }   `

License
-------

ABDesignSystem is available under the MIT license. See the LICENSE file for more information.
