//
//  ViewController.swift
//  EntrepreneurQuotes
//
//  Created by Fernando Benavides on 19/10/22.
//

import UIKit

class RootViewController: UIViewController {
    
    // MARK: - Attributes
    
    private let quotesTableViewSegue = "QuotesTableViewSegue"
    
    @IBOutlet private var quotesTableViewController: QuotesTableViewController!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifer = segue.identifier else { return }
            switch identifer {
                case quotesTableViewSegue:
                    guard let destination = segue.destination as? QuotesTableViewController else {
                        fatalError("Unexpected destinations")
                    }
                    self.quotesTableViewController = destination
                    self.quotesTableViewController.quotes = quotes
                    
                    
                default:
                    break
            }
    }
}




let quotes = [
    Quote(content: "The best way to predict the future is to create it.", author: "Peter Drucker")
]


