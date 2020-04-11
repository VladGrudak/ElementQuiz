//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Владислав Ралка on 11.04.2020.
//  Copyright © 2020 Grudak team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        if currentElementIndex < elementList.count - 1 {
            currentElementIndex += 1
        } else {
            currentElementIndex = 0
        }
        updateElement()
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    struct ChemicalElement {
        let symbol: String
        let name: String
        let atomicWeight: Int
        let imageName: String
    }
    
    
    func updateElement() {
        answerLabel.text = "?"
        imageView.image = UIImage(named: elementList[currentElementIndex])
    }
    
}

