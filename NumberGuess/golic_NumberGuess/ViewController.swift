//
//  ViewController.swift
//  golic_NumberGuess
//
//  Created by Benjamin Golic on 15.10.20.
//

import UIKit

class ViewController: UIViewController {
  var model = Model()
  var rightGuess = false
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var guessInput: UITextField!
  
  
  //performSegue(withIdentifier: "done", sender: self)
  
  @IBAction func onClick(_ sender: Any) {
    let text = guessInput.text
    let number = Int(text!)
    if(guessInput.text?.isEmpty)! {
      titleLabel.text = "Please enter a valid number!"
      titleLabel.textColor = UIColor.red
    } else {
      if (number == model.randomNumber) {
        if(!rightGuess) {
          model.guesses.append(number!)
          rightGuess=true;
        }
        performSegue(withIdentifier: "done", sender: self)
      } else if (number! < model.randomNumber) {
        titleLabel.textColor = UIColor.black
        titleLabel.text = "Guess higher"
        model.guesses.append(number!)
      }
      else if (number! > model.randomNumber) {
        titleLabel.textColor = UIColor.black
        titleLabel.text = "Guess lower"
        model.guesses.append(number!)
      }
    }
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  override func prepare(for done: UIStoryboardSegue, sender: Any?) {
    print ("prepare \(done.destination)")
    let tableViewController = done.destination as! TableViewController
    
    tableViewController.model = self.model
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
  }
  
  @IBAction func onClickNewGame(_ sender: UIButton) {
    model.clearGuesses()
    model.newRandomNumber()
    titleLabel.text = "Guess the Number!"
    guessInput.text = ""
  }
}

