//
//  ViewController.swift
//  Hapticous Sample
//
//  Created by Giovanni Filaferro on 27/09/16.
//  Copyright © 2016 Giovanni Filaferro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectionTriggered(_ sender: AnyObject) {
        Hapticous.shared.triggerSelectionFeedback()
    }
    
    @IBAction func lightImpactTriggered(_ sender: AnyObject) {
        Hapticous.shared.triggerImpactFeedback(.light)
    }
    @IBAction func mediumImpactTriggered(_ sender: AnyObject) {
        Hapticous.shared.triggerImpactFeedback(.medium)
    }
    @IBAction func highImpactTriggered(_ sender: AnyObject) {
        Hapticous.shared.triggerImpactFeedback(.heavy)
    }
    
    @IBAction func successNotificationTriggered(_ sender: AnyObject) {
        Hapticous.shared.triggerNotificationFeedback(.success)
    }
    @IBAction func warningNotificationTriggered(_ sender: AnyObject) {
        Hapticous.shared.triggerNotificationFeedback(.warning)
    }
    @IBAction func errorNotificationTriggered(_ sender: AnyObject) {
        Hapticous.shared.triggerNotificationFeedback(.error)
    }
    
    

}

