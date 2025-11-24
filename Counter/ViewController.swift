import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var subtractButton: UIButton!
    @IBOutlet private var sumButton: UIButton!
    @IBOutlet private var meaningOfCounterLabel: UILabel!
    @IBOutlet private var changeHistoryTextView: UITextView!
    
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func increasingCounter(_ sender: Any) {
        counter += 1
        meaningOfCounterLabel.text = "Значение счётчика: \(counter) "
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "DD.MM.YYYY HH:MM:SS"
        let formattedDate = dateFormatter.string(from: currentDate)
        changeHistoryTextView.text += "\n\(formattedDate): значение изменено на +1"
    }
    
    @IBAction private func decreasingCounter(_ sender: Any) {
        if counter == 1 {
            counter = 0
            meaningOfCounterLabel.text = "Значение счётчика: \(counter) "
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "DD.MM.YYYY HH:MM:SS"
            let formattedDate = dateFormatter.string(from: currentDate)
            changeHistoryTextView.text += "\n\(formattedDate): значение изменено на -1"
        } else if counter < 1 {
            counter = 0
            meaningOfCounterLabel.text = "Значение счётчика: \(counter) "
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "DD.MM.YYYY HH:MM:SS"
            let formattedDate = dateFormatter.string(from: currentDate)
            changeHistoryTextView.text += "\n\(formattedDate): попытка уменьшить значение счётчика ниже 0"
        } else {
            counter -= 1
            meaningOfCounterLabel.text = "Значение счётчика: \(counter) "
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "DD.MM.YYYY HH:MM:SS"
            let formattedDate = dateFormatter.string(from: currentDate)
            changeHistoryTextView.text += "\n\(formattedDate): значение изменено на -1"
            
        }
    }
    
    @IBAction private func resetCounter(_ sender: Any) {
        counter = 0
        meaningOfCounterLabel.text = "Значение счётчика: \(counter) "
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "DD.MM.YYYY HH:MM:SS"
        let formattedDate = dateFormatter.string(from: currentDate)
        changeHistoryTextView.text += "\n\(formattedDate): значение сброшено"
    }
    
    
}

