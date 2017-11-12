//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Karan Bhargava on 6/12/15.
//  Copyright (c) LiftLingo Inc. All rights reserved.
//

import Foundation
import UIKit

class EmojiDeatilViewController : UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = "💀"
    var emojiDefinition = "No definition my friend..."
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDefinitionLabel.text = self.emojiDefinition
    }
    
}
