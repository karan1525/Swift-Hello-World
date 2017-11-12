//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Karan Bhargava on 6/05/15.
//  Copyright (c) LiftLingo Inc. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😄","😎","💩","🐜","💝","😜","⛪️","💃","🐶","⛄️","😳","💵","🐔","🏠","💈"]
    
    var emoji = "💀"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    // How many rows do we want?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    //What do you want in each row?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    //What happens when you tap on one?
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.performSegue(withIdentifier: "tableViewToEmojiSegue", sender: self)
    }
    
    //What happens when you tap on one (continued segue)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! EmojiDeatilViewController
        detailViewController.emoji = self.emoji

        if self.emoji == "😄" {
            detailViewController.emojiDefinition = "I'm better than you"
        }
        if self.emoji == "😎" {
            detailViewController.emojiDefinition = "I'm cooler than you"
        }
        if self.emoji == "💩" {
            detailViewController.emojiDefinition = "You're a pile of poo"
        }
        
        if self.emoji == "🐜" {
            detailViewController.emojiDefinition = "AAAAANTT"
        }
        
        if self.emoji == "⛄️" {
            detailViewController.emojiDefinition = "Do you wanna build a snowman?"
        }
    }
}

