import UIKit

class ViewController: UIViewController {
    var newGame : Game!
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    @IBOutlet var label_generated: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("VD")
        newGame = Game(startValue: 1, endValue: 50, rounds: 5)
        // Обновляем данные о текущем значении загаданного числа
       // updateLabelWithSecretNumber(newText: String(game.currentSecretValue))
    }
    
    
    
    
//    var number: Int = 0
//    var round: Int = 1
//    var points: Int = 0
//    @IBAction func checkNumber(){
//        game.calculate
//    }
    
}

