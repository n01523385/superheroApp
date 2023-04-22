//
//  DetailsViewController.swift
//  SuperHeroApp
//
//  Created by Arunima Das on 2023-04-21.
//

import UIKit

class DetailsViewController: UIViewController {
    var power = ""
    var appearance = ""
    var work = ""
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var detailLabel: UILabel!
    var connections = ""
    var biography = ""
    var identifier = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        switch (identifier)  {
            case "b":
                detailLabel.text = biography
            case "p":
                detailLabel.text = power
            case "a":
                detailLabel.text = appearance
            case "w":
                detailLabel.text = work
            case "c":
                detailLabel.text = connections
            default:
            detailLabel.text = "Sorryy!!! \nTry Again"
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
