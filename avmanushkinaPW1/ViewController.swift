//
//  ViewController.swift
//  avmanushkinaPW1
//
//  Created by Анастасия on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views: [UIView]!
    // MARK: Max corner radius
    let maxRadius: CGFloat = 25
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK: Function, called on the user pressing the button
    @IBAction func buttonWasPressed(_ sender: Any) {
        let button = sender as? UIButton
        button?.isEnabled = false
        var set = Set<UIColor>()
         while set.count < views.count {
         set.insert(
         UIColor(
         red: .random(in: 0...1),
         green: .random(in: 0...1),
         blue: .random(in: 0...1),
         alpha: 1
         )
         )
         }
        // MARK: Color change animation
        UIView.animate(
            withDuration: 1,
                    animations: {
                        for view in self.views{
                            view.backgroundColor = set.popFirst()
                            view.layer.cornerRadius = CGFloat.random(
                                in: 0...self.maxRadius
                            )
                        }
                    }) { completion in
                        button?.isEnabled = true
                    }
    }
    
}

