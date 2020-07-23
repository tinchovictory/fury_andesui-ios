## Unpublished
### 🚀 Features
- New component: AndesCard | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

## v3.7.0
### 🚀 Features
- New component: AndesThumbnail | Authors: [@alejoecheguia](https://github.com/alejoecheguia)

### 🛠 Bug fixes
- AndesSnackbar: Fixes snackbarsQueue logic when a snackbar is no longer visible| Authors: [@EdenTorres](https://github.com/mercadolibre/fury_andesui-ios) 

## v3.6.0
### 🚀 Features
- Andes Message: Now allows to have a `Link Action` in the place of primary button, it has the same function as a button with a new layout defined by Andes's UX. | Authors: [@lelalesi](https://github.com/lelalesi)

## v3.5.0
### 🚀 Features
- New component: AndesSnackbar | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- TextField/TextArea: allows for custom input views | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- TextField: add textFieldShouldReturn to public delegate | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- New component: AndesCheckbox |  Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- New component: AndesRadioButton| Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

### 🛠 Bug fixes
- AndesMessage: Constraints priority fix | Authors: [@MaxiTalenti](https://github.com/mercadolibre/fury_andesui-ios)
- AndesColor: Background color has alpha but has to be solid | Authors: [@jcenturion18](https://github.com/jcenturion18/)

# v3.4.0
### 🛠 Bug fixes
- TextField, TextArea: listen to resign and becomeFirstResponder | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

### 🦮 Accessibility
- Actions with accessibilty labels localized. | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

# v3.3.0

### 🚀 Features
- AndesTag: Simple variation | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

# v3.2.1

### 🛠 Bug fixes
- Duplicated Bundle ID: rename resources bundle to avoid a conflict with bundles generated in CocoaPods | Author: [@Itay Brenner](https://github.com/itaybre)

# v3.2.0

### 🚀 Features
- AndesBadge: Dot modifier | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- AndesButton: Accesibility support | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

# v3.1.0

### 🛠 Bug fixes
- AndesMessage, UILabel.SetAndesStyle: Spacing fix | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
### ⚙️ Other
- AndesFontStyle: lineHeight renamed to lineSpacing (soft break) | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

# v3.0.0
### 🚀 Features
- AndesButton and AndesMessage now show properties on interface builder | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- AndesButton and AndesMessage getters now work on ObjC | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

### ⚙️ Other
- [BREAKING] changed AndesButton and AndesMessage to use properties instead of setters | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

## v2.3.1
### 🛠 Bug fixes
- AndesButton: Fix support to emojis on title | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

## v2.3.0
### ⚙️ Other
- Remove modifier from AndesBadge | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

## v2.2.2
### 🛠 Bug fixes
- Icons: Some icons were not rendering as templates. | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

## v2.2.1
### 🛠 Bug fixes
- AndesTextField/Area: Helper text font weight on error state is always semibold. | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)

## v2.2.0
### 🚀 Features
- AndesBadge: Pill modifier | Authors: [@ignaguri](https://github.com/ignaguri)
- AndesTextField | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- AndesTextArea | Authors: [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- Public enums support string conversion (Swift only) [@Mobile-Arq](https://github.com/mercadolibre/fury_andesui-ios)
- Added icons to LocalIcons: [#49](https://github.com/mercadolibre/fury_andesui-ios/pull/49#issue-407571410) | Authors: [@ggiovanniniml](https://github.com/ggiovanniniml)

### ⚙️ Other
- internal factories don't store anything.

## v2.1.5:
### ⚙️ Other
- Temporary removal of ios11 color strategy for issue loading bundle with new build system

## v2.1.4:
### 🛠 Bug fixes
- AndesIconsProvider loadIcon signature fix. (success callbacks gets a non nullable UIImage instead of nullable)

### ⚙️ Other
- Change how the bundle is loaded.

## v2.1.3:
### 🛠 Bug fixes
- Change access level to AndesIconsProvider methods

## v2.1.2:
### 🛠 Bug fixes
- (iOS 10) mp accent colors
- AndesMessage line height in body

### 🚀 Features
- Local icons added to assets
- CocoaPods URL repo spec in order to use CDN

## v2.1.0:
### 🚀 Features
- Missing feedback colors on stylesheet

## v2.0.0:
### 🚀 Features
- AndesIconsProvider with local strategy to load icons from xcassets

### 🛠 Bug fixes
- AndesStylesheet updated to latest definitions
- AndesMessage: fixes in constraints when dismiss is hidden
- AndesMessage: updated button colors to new definition

## v1.3.1:
### 🛠 Bug fixes
- AndesMessage: fixed background quiet color.

## v1.3.0
### 🚀 Features
- AndesMessage: Support message with actions, primary and secondary.

## v1.2.1
### 🛠 Bug fixes
- AndesMessage: changed body from semibold to regular.

## v1.2.0
### 🚀 Features
- AndesButton now exposes getters for properties

### 🛠 Bug fixes
- AndesMessageHierarchy changed highlight to neutral

## v1.1.1
### 🛠 Bug fixes
- AndesMessage: when title is nil or empty center the body of the message.
- Fixed compile issues on xcode 10.2.1

## v1.1.0
### 🚀 Features
- AndesMessage basic
- AndesMessage dismissible

## v1.0.0
### 🚀 Features
- AndesButton
- AndesStylesheet
- Dark mode support
