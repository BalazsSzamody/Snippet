//
//  ViewController.swift
//  Snippet
//
//  Created by Frequent Flyer on 03/03/17.
//  Copyright © 2017 Frequent Flyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data: [SnippetData] = [SnippetData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createNewSnippet(_ sender: Any) {
        let alert = UIAlertController(title: "Select a Snippet type", message: nil, preferredStyle: .actionSheet)
        
        let textAction = UIAlertAction(title: "Text", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.createNewTextSnippet()
        }
        let photoAction = UIAlertAction(title: "Photo", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.data.append(SnippetData(snippetType: .photo))
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(textAction)
        alert.addAction(photoAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    func createNewTextSnippet() {
        guard let textEntryVC = storyboard?.instantiateViewController(withIdentifier: "textSnippetEntry") as? TextSnippetEntryViewController else {
            print("TextSnippetEntryVC could'nt be instantiated from storyboard")
            return
        }
        
        textEntryVC.modalTransitionStyle = .coverVertical
        textEntryVC.saveText = { (text:String) in
            let newTextSnippet = TextData(text: text)
            self.data.append(newTextSnippet)
        }
        
        present(textEntryVC, animated: true, completion: nil)
    
    }
    
}

