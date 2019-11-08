//
//  NewSegue.swift
//  Swift_Study_09
//
//  Created by DohyunKim on 08/11/2019.
//  Copyright © 2019 DohyunKim. All rights reserved.
//

import UIKit
class NewSegue: UIStoryboardSegue {
    
    override func perform() {
        let srcUVC = self.source
        let destUVC = self.destination
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}
