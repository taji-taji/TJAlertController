[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](#carthage)
![Swift version](https://img.shields.io/badge/swift-3.0-orange.svg)

# What is this?

By using this library, you can write method chaining to add UIAlertAction to the UIAlertController and display it.

# Usage

This library supports `UIAlertControllerStyle.alert` and `UIAlertControllerStyle.acitonSheet`

## In your ViewController

```swift

// UIAlertControllerStyle.alert
AlertController(
    target: self,
    title: "test",
    message: "message desu"
    )
    .addDefaultStyleAction(
        title: "OK",
        handler: { (action) -> Void in
            print("OK")
    })
    .addCancelStyleAction(title: "Cancel")
    .show()

// UIAlertControllerStyle.acitonSheet
ActionSheetController(
    target: self,
    title: "test",
    message: "message desu"
    )
    .addDefaultStyleAction(
        title: "OK",
        handler: { (action) -> Void in
            print("OK")
    })
    .addCancelStyleAction(title: "Cancel")
    .setSourceRect(myRect)
    .setSourceView(myView)
    .show()

```

After create instance, you can use method chaining to add UIAlertAction.

- `.addAction(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = default)`
- `.addDefaultStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = default)`
- `.addCancelStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = default)`
- `.addDestructiveStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = default)`

Finally, you can present UIAlertController by using `.show()` method.

Additionaly, `ActionSheetController` has 2 methods for `popoverPresentationController`.

- `.setSourceRect(_ rect: CGRect)`
- `.setSourceView(_ view: UIView)`

# Installation

## Carthage

Just add to your Cartfile:

```
github "taji-taji/TJAlertController"
```

# License
MIT