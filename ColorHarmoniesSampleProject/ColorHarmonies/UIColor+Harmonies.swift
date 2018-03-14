//
//  UIColor+Harmonies.swift
//  ColorHarmonies
//
//  Created by Sam Jarman on 12/03/18.
//  Copyright © 2018 Sam Jarman. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    var complementary:UIColor {
        return self.colorWithOffset(offset: 6.0)
    }
    
    var triadic:[UIColor] {
        return [self, self.colorWithOffset(offset: 4.0), self.colorWithOffset(offset: 8.0)]
    }
    
    var analogous:[UIColor] {
        return [self, self.colorWithOffset(offset: 1.0), self.colorWithOffset(offset: 2.0)]
    }
    
    var splitComplementary:[UIColor] {
        return [self, self.colorWithOffset(offset: 2.0), self.colorWithOffset(offset: 5.0)]
    }
    
    var rectangle:[UIColor] {
        return [self, self.colorWithOffset(offset: 2.0), self.colorWithOffset(offset: 6.0), self.colorWithOffset(offset: 8.0)]
    }
    
    var square:[UIColor] {
        return [self, self.colorWithOffset(offset: 3.0), self.colorWithOffset(offset: 6.0), self.colorWithOffset(offset: 9.0)]
    }
    
    private func colorWithOffset(offset: CGFloat) -> UIColor {
        let hue =  (self.hsba.h + (offset * (1/12))).truncatingRemainder(dividingBy: 1.0)
        return UIColor(hue: hue, saturation: hsba.s, brightness: hsba.b, alpha: hsba.a)
    }
    
    private var hsba:(h: CGFloat, s: CGFloat, b: CGFloat, a: CGFloat) {
        var h: CGFloat = 0, s: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return (h: h, s: s, b: b, a: a)
    }
}
