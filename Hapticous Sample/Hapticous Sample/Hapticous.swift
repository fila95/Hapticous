//
//  Hapticous.swift
//  Hapticous Sample
//
//  Created by Giovanni Filaferro on 27/09/16.
//  Copyright © 2016 Giovanni Filaferro. All rights reserved.
//

import UIKit

public class Hapticous: NSObject {
    
    // MARK: Public
    static let shared : Hapticous = {
        let instance = Hapticous()
        return instance
    }()
    
    public func triggerSelectionFeedback() {
        selectionFeedbackGenerator!.prepare()
        selectionFeedbackGenerator!.selectionChanged()
    }
    
    public func triggerImpactFeedback(_ style: UIImpactFeedbackStyle) {
        impactFeedbackGenerator = UIImpactFeedbackGenerator(style: style)
        impactFeedbackGenerator!.prepare()
        impactFeedbackGenerator!.impactOccurred()
        impactFeedbackGenerator = nil
    }
    
    public func triggerNotificationFeedback(_ style: UINotificationFeedbackType) {
        notificationFeedbackGenerator!.prepare()
        notificationFeedbackGenerator!.notificationOccurred(style)
    }
    
    
    
    // MARK: Private
    private var selectionFeedbackGenerator : UISelectionFeedbackGenerator? = nil
    private var impactFeedbackGenerator : UIImpactFeedbackGenerator? = nil
    private var notificationFeedbackGenerator : UINotificationFeedbackGenerator? = nil
    
    
    override init() {
        super.init()
        selectionFeedbackGenerator = UISelectionFeedbackGenerator()
        notificationFeedbackGenerator = UINotificationFeedbackGenerator()
    }

}
