//
//  ViewController.swift
//  ColorHarmonies
//
//  Created by Sam Jarman on 12/03/18.
//  Copyright © 2018 Sam Jarman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var harmonyType: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        recalculateColors();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func recalculateColors() {
        let color1 = UIColor(red: CGFloat(self.redSlider.value), green: CGFloat(self.greenSlider.value), blue: CGFloat(self.blueSlider.value), alpha: 1)
        
        resetColors()
        
        switch self.harmonyType.selectedSegmentIndex {
        case 0:
            self.view2.backgroundColor = color1.complementary
        case 1:
            self.view2.backgroundColor = color1.triadic[1]
            self.view3.backgroundColor = color1.triadic[2]
        case 2:
            self.view2.backgroundColor = color1.analogous[1]
            self.view3.backgroundColor = color1.analogous[2]
        case 3:
            self.view2.backgroundColor = color1.splitComplementary[1]
            self.view3.backgroundColor = color1.splitComplementary[2]
        case 4:
            self.view2.backgroundColor = color1.rectangle[1]
            self.view3.backgroundColor = color1.rectangle[2]
            self.view4.backgroundColor = color1.rectangle[3]
        case 5:
            self.view2.backgroundColor = color1.square[1]
            self.view3.backgroundColor = color1.square[2]
            self.view4.backgroundColor = color1.square[3]
        default:
            resetColors()
        }
        self.view1.backgroundColor = color1;
    }
    
    func resetColors() {
        view1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1);
        view2.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1);
        view3.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1);
        view4.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1);
    }

    @IBAction func changeColorSlider(_ sender: Any) {
        recalculateColors()
    }
    
    @IBAction func selectHarmonyType (_ sender: Any) {
        recalculateColors()
    }
}

