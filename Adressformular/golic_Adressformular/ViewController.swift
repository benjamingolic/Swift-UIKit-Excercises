//
//  ViewController.swift
//  golic_Adressformular
//
//  Created by Benjamin Golic on 01.10.20.
//

import UIKit

class ViewController: UIViewController {
    var model = Model();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var vNameF: UITextField!
    @IBOutlet weak var nNameF: UITextField!
    @IBOutlet weak var strasseF: UITextField!
    @IBOutlet weak var ortF: UITextField!
    
    @IBAction func onClick(_ sender: Any) {
        model.vorname = vNameF.text!;
        model.nachname = nNameF.text!;
        model.strasse = strasseF.text!;
        model.ort = ortF.text!;
        
        print(model.vorname);
        print(model.nachname);
        print(model.strasse);
        print(model.ort);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print ("prepare \(segue.destination)")
        let detailViewController = segue.destination as! DetailViewController
        
            detailViewController.model = self.model
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
    
}

