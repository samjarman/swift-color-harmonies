//: Playground - noun: a place where people can play

import UIKit

var inputColor = UIColor(red: (255.0/255.0), green: (89.0/255.0), blue: (12.0/255.0), alpha: 1.0)

extension UIColor {
    var complementary: UIColor {
        return self.color(withOffset: 6.0)
    }
    
    var triadic: [UIColor] {
        return [self, self.color(withOffset: 4.0), self.color(withOffset: 8.0)]
    }
    
    var analogous: [UIColor] {
        return [self, self.color(withOffset: 1.0), self.color(withOffset: 2.0)]
    }
    
    var splitComplementary: [UIColor] {
        return [self, self.color(withOffset: 2.0), self.color(withOffset: 5.0)]
    }
    
    var rectangle: [UIColor] {
        return [self, self.color(withOffset: 2.0), self.color(withOffset: 6.0), self.color(withOffset: 8.0)]
    }
    
    var square: [UIColor] {
        return [self, self.color(withOffset: 3.0), self.color(withOffset: 6.0), self.color(withOffset: 9.0)]
    }
    
    private func color(withOffset offset: CGFloat) -> UIColor {
        let hue =  (self.hsba.h + (offset * (1/12))).truncatingRemainder(dividingBy: 1.0)
        return UIColor(hue: hue, saturation: hsba.s, brightness: hsba.b, alpha: hsba.a)
    }
    
    private var hsba:(h: CGFloat, s: CGFloat, b: CGFloat, a: CGFloat) {
        var h: CGFloat = 0, s: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return (h: h, s: s, b: b, a: a)
    }
}


inputColor
inputColor.complementary




inputColor.triadic[0]
inputColor.triadic[1]
inputColor.triadic[2]




inputColor.analogous[0]
inputColor.analogous[1]
inputColor.analogous[2]




inputColor.splitComplementary[0]
inputColor.splitComplementary[1]
inputColor.splitComplementary[2]





inputColor.rectangle[0]
inputColor.rectangle[1]
inputColor.rectangle[2]
inputColor.rectangle[3]




inputColor.square[0]
inputColor.square[1]
inputColor.square[2]
inputColor.square[3]
