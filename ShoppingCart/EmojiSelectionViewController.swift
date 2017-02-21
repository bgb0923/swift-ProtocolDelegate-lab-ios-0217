//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var emojiSelectorTxtBx1: UITextField!
    @IBOutlet weak var emojiSelectorTxtBx2: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    @IBAction func saveSelectedEmojis(_ sender: UIButton) {
        guard let value1 = self.emojiSelectorTxtBx1.text else {return}
        guard let value2 = self.emojiSelectorTxtBx2.text else {return}
        self.emojiDelegate?.create(emojiGroup: (value1, value2))
        dismiss(animated:true, completion: nil)
    }
}
