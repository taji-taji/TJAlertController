/*
 MIT License
 
 Copyright (c) 2016 Yutaka
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */
import UIKit

public struct AlertController {
    
    /// UIViewController to present alert
    var target: UIViewController
    /// instance of UIAlertController
    public var alert: UIAlertController
    /// alert title
    public var title: String?
    /// alert message
    public var message: String?
    /// alert actions added
    public var actions: [UIAlertAction] {
        return self.alert.actions
    }
    
    public init(target: UIViewController, title: String?, message: String?) {
        self.target = target
        self.title = title
        self.message = message
        self.alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
    
    public func addAction(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = nil) -> AlertController {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        alert.addAction(action)
        return self
    }
    
    public func addCancelStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> AlertController {
        return addAction(title: title, style: .cancel, handler: handler)
    }
    
    public func addDefaultStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> AlertController {
        return addAction(title: title, style: .default, handler: handler)
    }

    public func addDestructiveStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> AlertController {
        return addAction(title: title, style: .destructive, handler: handler)
    }
    
    public func show(animated: Bool = true, completion: (() -> Void)? = nil) {
        target.present(self.alert, animated: animated, completion: nil)
    }
    
}

public struct ActionSheetController {

    /// UIViewController to present alert
    var target: UIViewController
    /// instance of UIAlertController
    public var alert: UIAlertController
    /// alert title
    public var title: String?
    /// alert message
    public var message: String?
    /// alert actions added
    public var actions: [UIAlertAction] {
        return self.alert.actions
    }
    public var sourceView: UIView? {
        return self.alert.popoverPresentationController?.sourceView
    }
    public var sourceRect: CGRect? {
        return self.alert.popoverPresentationController?.sourceRect
    }
    
    public init(target: UIViewController, title: String?, message: String?) {
        self.target = target
        self.title = title
        self.message = message
        self.alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    }
    
    public func addAction(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?) -> ActionSheetController {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        alert.addAction(action)
        return self
    }
    
    public func addCancelStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> ActionSheetController {
        return addAction(title: title, style: .cancel, handler: handler)
    }
    
    public func addDefaultStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> ActionSheetController {
        return addAction(title: title, style: .default, handler: handler)
    }
    
    public func addDestructiveStyleAction(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> ActionSheetController {
        return addAction(title: title, style: .destructive, handler: handler)
    }
    
    public func show(animated: Bool = true, completion: (() -> Void)? = nil) {
        target.present(self.alert, animated: animated, completion: nil)
    }
    
    public func setSourceView(_ view: UIView) -> ActionSheetController {
        alert.popoverPresentationController?.sourceView = view
        return self
    }
    
    public func setSourceRect(_ rect: CGRect) -> ActionSheetController {
        alert.popoverPresentationController?.sourceRect = rect
        return self
    }
}
