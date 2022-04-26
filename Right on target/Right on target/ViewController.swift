import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("VD")
        self.number = Int.random(in: 1...50)
        self.label.text = String(self.number)
        self.label_generated.text = String("Сгенерированное число \(number)")
        // Do any additional setup after loading the view.
    }
    override func loadView() {
        super.loadView()
        print("LoadView")
        
        //создаем метку для вывода номера версии
       // let versionLabel = UILabel(frame: CGRect(x: 20, y: 10, width: 200, height:20))
        //изменяет текст метки
       // versionLabel.text = String("Версия 1.1")
        //добавляем метку в родителський view
        //self.view.addSubview(versionLabel)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewWillDisappear")
    }
    
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    @IBOutlet var label_generated: UILabel!
    var number: Int = 0
    var round: Int = 1
    var points: Int = 0
    @IBAction func checkNumber(){
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
        self.label_generated.text = String(number)
        self.label_generated.text = String("Сгенерированное число \(number)")
    }
    //ленивое свойство для хранения View Controller
    lazy var secondViewController: SecondViewController = getSecondViewController()
    
    //приватный метод загрудащий вью контроллер
    private func getSecondViewController()->SecondViewController{
        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        let viewController = storyboard.instantiateViewController(identifier: "SecondViewController")
        return viewController as! SecondViewController
    }
    @IBAction func showNextScreen(){
//        //загрузка storyboard
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        //загрузка вью контроллера и его сцены со сторибоарды
//        let viewController = storyboard.instantiateViewController(identifier: "SecondViewController")
//        //отображение сцены на экране
        self.present(secondViewController, animated: true, completion: nil)
    }
}

