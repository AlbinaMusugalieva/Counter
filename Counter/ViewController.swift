//
//  ViewController.swift
//  Counter
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var substractButton: UIButton!
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var changeHistoryTextView: UITextView!
    
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeHistoryTextView.isScrollEnabled = true
    }

    @IBAction func increasingCounter(_ sender: Any) {
        counter += 1
        resultLabel.text = "Значение счётчика: \(counter) "
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let formattedDate = dateFormatter.string(from: currentDate)
        changeHistoryTextView.text += "\n\(formattedDate): значение изменено на +1"
    }
    
    @IBAction func decreasingCounter(_ sender: Any) {
        if counter == 1 {
            counter = 0
            resultLabel.text = "Значение счётчика: \(counter) "
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
            let formattedDate = dateFormatter.string(from: currentDate)
            changeHistoryTextView.text += "\n\(formattedDate): значение изменено на -1"
        } else if counter < 1 {
            counter = 0
            resultLabel.text = "Значение счётчика: \(counter) "
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
            let formattedDate = dateFormatter.string(from: currentDate)
            changeHistoryTextView.text += "\n\(formattedDate): попытка уменьшить значение счётчика ниже 0"
        } else {
            counter -= 1
            resultLabel.text = "Значение счётчика: \(counter) "
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
            let formattedDate = dateFormatter.string(from: currentDate)
            changeHistoryTextView.text += "\n\(formattedDate): значение изменено на -1"
            
        }
    }
    
    @IBAction func resetCounter(_ sender: Any) {
        counter = 0
        resultLabel.text = "Значение счётчика: \(counter) "
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let formattedDate = dateFormatter.string(from: currentDate)
        changeHistoryTextView.text += "\n\(formattedDate): значение сброшено"
    }
    
  
}

