//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

public extension UIApplication {
    
    var rootViewControllerInKeyWindow: UIViewController? {
        return UIApplication.shared.connectedScenes
            .map { $0 as? UIWindowScene }
            .compactMap { $0 }
            .first?
            .windows
            .filter { $0.isKeyWindow }
            .first?
            .rootViewController
    }

    class func keyWindowTopViewController(on controller: UIViewController? = UIApplication.shared.rootViewControllerInKeyWindow) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return keyWindowTopViewController(on: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController,
            let selected = tabController.selectedViewController {
            return keyWindowTopViewController(on: selected)
        }
        if let presented = controller?.presentedViewController {
            return keyWindowTopViewController(on: presented)
        }
        return controller
    }

    class func topViewController() -> UIViewController? {
        guard let rootViewController = UIApplication.shared.rootViewControllerInKeyWindow else { return nil }
        var presentedViewController = rootViewController.presentedViewController
        if presentedViewController == nil {
            return rootViewController
        } else {
            while presentedViewController?.presentedViewController != nil {
                presentedViewController = presentedViewController?.presentedViewController
            }
            return presentedViewController
        }
    }
}
