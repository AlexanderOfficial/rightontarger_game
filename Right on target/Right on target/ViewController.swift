import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    var number: Int = 0
    var round: Int = 0
    var points: Int = 0
    @IBAction func checkNumber(){
        if self.round == 0{
            self.number = Int.random(in: 1...50)
            self.label.text = String(self.number)
            self.round = 1
        } else{
            //получаем значение на слайдере
            let numSlider = Int(self.slider.value.rounded())
            //сравниваем значение с загаднным и подсчитываем очки
            if numSlider > self.number {
                self.points += 50 - numSlider + self.number
            } else if numSlider < self.number {
                self.points += 50 - self.number + numSlider
            } else {
                self.points += 50
            }
            if self.round == 5 {
                // выводим информационное окно когда 5 раундов прошло либо выиграли сразу
                let alert = UIAlertController(
                    title: "Игра окончена", message: "Вы азарботали \(self.points) очков", preferredStyle: .alert
                )
                alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                self.round = 1
                self.points = 0
            }
            else {
                self.round += 1
            }
            self.number = Int.random(in: 1...50) //генерируем случайное число
            //передаем значение в label
            self.label.text = String(self.number)
            
        }
    }
    
}

