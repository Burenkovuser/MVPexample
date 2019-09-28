//
//  ViewController.swift
//  Test
//
//  Created by Vasilii on 27/09/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] vieModel in self.greetingLabel.text = self.viewModel.greeting
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tom", surname: "Cook")
        viewModel = GeetingViewModel(person: person)
    }

    @IBAction func showGreetingPressed() {
        viewModel.showGreeting()
    }
}



