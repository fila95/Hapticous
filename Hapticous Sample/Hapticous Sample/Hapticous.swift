//
// Hapticous.swift
// Version 1.0
//
// Copyright (c) 2016 Giovanni Filaferro ( http://www.nanotek.it/ ). All Rights Reserved.
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.

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
