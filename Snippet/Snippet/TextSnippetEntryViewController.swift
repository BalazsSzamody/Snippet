//
//  TextSnippetEntryViewController.swift
//  Snippet
//
//  Created by Frequent Flyer on 06/03/17.
//  Copyright © 2017 Frequent Flyer. All rights reserved.
//

import Foundation
import UIKit

class TextSnippetEntryViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    var saveText: (_ text: String) -> Void = {(text:String) in }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //létrehozza a Keyboard toolbart
        textView.inputAccessoryView = createKeyboardToolbar()
        
        textView.becomeFirstResponder()
    }
    
    
    //Kexboard toolbar létrehozása
    func createKeyboardToolbar () -> UIView {
        //üres toolbar, méretmeghatározással
        let keyboardToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44))
        
        //flexible space létrehozása, hogy a gombunk majd balooldalon legyen
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        //Done gomb létrehozása, ami majd meghívja a selectorban lévő func-ot
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonPressed))
        
        //elhelyezzük az elemeket a toolbarban
        keyboardToolbar.setItems([flexSpace, doneButton], animated: false)
        
        //visszadja a kész toolbart
        return keyboardToolbar
    }
    
    //ezt a funkciót hívja meg a Done gomb
    func doneButtonPressed() {
        //Ha megnyomom a Done gombot, akkor visszalép a ViewControllerbe
        textView.resignFirstResponder()
    }
    
  }
    
    
    
    extension TextSnippetEntryViewController : UITextViewDelegate {
        func textViewDidEndEditing(_ textView: UITextView){
            saveText(textView.text)
            dismiss(animated: true, completion: nil)
        }
    }
