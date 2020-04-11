//
//  SafeAreaValues.swift
//  OrientationResponsiveUI
//
//  Created by Prakhar Tripathi on 11/04/20.
//  Copyright © 2020 Prakhar. All rights reserved.
//

import Foundation
import UIKit

class SafeAreaValues {
    static func getLeftConstant() -> CGFloat {
        if #available(iOS 11.0, *) {
            return (UIApplication.shared.keyWindow?.safeAreaInsets.left ?? 0)
        } else {
            // Fallback on earlier versions
            return 0
        }
    }
    
    static func getRightConstant() -> CGFloat {
        if #available(iOS 11.0, *) {
            return (UIApplication.shared.keyWindow?.safeAreaInsets.right ?? 0)
        } else {
            // Fallback on earlier versions
            return 0
        }
    }
    
    static func getBottomConstant() -> CGFloat {
        if #available(iOS 11.0, *) {
            return (UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0)
        } else {
            // Fallback on earlier versions
            return 0
        }
    }
}
