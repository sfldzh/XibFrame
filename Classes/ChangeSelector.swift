//
//  ChangeSelector.swift
//  Player
//
//  Created by 施峰磊 on 2020/1/6.
//  Copyright © 2020 施峰磊. All rights reserved.
//

import Foundation

class ChangeSelector{
    
    static func exchangeInstanceMethod(objClass:AnyClass, originalSelector:Selector, swizzledSelector:Selector) -> Bool{
        if let originalMethod:Method = class_getInstanceMethod(objClass, originalSelector), let swizzledMethod:Method = class_getInstanceMethod(objClass, swizzledSelector) {
            if class_addMethod(objClass, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod)) {
                class_replaceMethod(objClass, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
            }else{
                method_exchangeImplementations(originalMethod, swizzledMethod);
            }
            return true;
        }else{
            return false;
        }
    }
    
    static func exchangeClassMethod(objClass:AnyClass, originalSelector:Selector, swizzledSelector:Selector) -> Bool{
        if let originalMethod:Method = class_getClassMethod(objClass, originalSelector), let swizzledMethod:Method = class_getClassMethod(objClass, swizzledSelector) {
            if class_addMethod(object_getClass(objClass), originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod)) {
                class_replaceMethod(object_getClass(objClass), swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
            }else{
                method_exchangeImplementations(originalMethod, swizzledMethod);
            }
            return true;
        }else{
            return false;
        }
    }
}

