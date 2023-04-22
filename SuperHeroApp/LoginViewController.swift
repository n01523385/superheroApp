//
//  ViewController.swift
//  SuperHeroApp
//
//  Created by Arunima Das on 2023-04-19.
//

import UIKit

class LoginViewController: UIViewController  {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var username: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if username.text == ""{
            let alert = UIAlertController(title: "Error", message: "Please enter your name.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
        else{
            let pickVC = segue.destination as! PickViewController
            pickVC.uname = username.text!
        }
    }
}

