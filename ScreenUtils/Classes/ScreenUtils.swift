//
//  ScreenUtils.swift
//  CXSocial
//
//  Created by dulinshun on 2024/3/11.
//  Copyright © 2024 czc. All rights reserved.
//

import CoreGraphics
import Foundation

public class ScreenUtils {
    public static var designSize: CGSize = CGSize(width: 375, height: 667)
}

public protocol Zoomable: Numeric {
    var w: Self { get }
    var h: Self { get }
    var sp: Self { get }
}

public extension Zoomable {
    var sp: Self { w }
}

extension Int: Zoomable {
    public var w: Self {
        return Self(UIScreen.main.bounds.width / ScreenUtils.designSize.width) * self
    }

    public var h: Self {
        return Self(UIScreen.main.bounds.height / ScreenUtils.designSize.height) * self
    }
}

extension Double: Zoomable {
    public var w: Self {
        return Self(UIScreen.main.bounds.width / ScreenUtils.designSize.width) * self
    }

    public var h: Self {
        return Self(UIScreen.main.bounds.height / ScreenUtils.designSize.height) * self
    }
}

extension Float: Zoomable {
    public var w: Self {
        return Self(UIScreen.main.bounds.width / ScreenUtils.designSize.width) * self
    }

    public var h: Self {
        return Self(UIScreen.main.bounds.height / ScreenUtils.designSize.height) * self
    }
}

extension CGFloat: Zoomable {
    public var w: Self {
        return Self(UIScreen.main.bounds.width / ScreenUtils.designSize.width) * self
    }

    public var h: Self {
        return Self(UIScreen.main.bounds.height / ScreenUtils.designSize.height) * self
    }
}
