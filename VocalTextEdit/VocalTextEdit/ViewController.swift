//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Erik Uecke on 4/18/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        print("I should speak \(textView.string)")
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        print("The stop button was clicked")
    }

}

