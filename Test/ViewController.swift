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
    private var presenter: GreetingViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tom", surname: "Cook")
        presenter = GreetingPresenter(view: self, preson: person)
    }

    @IBAction func showGreetingPressed() {
        presenter.showGreeting()
    }
}

extension ViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
    
    
}
