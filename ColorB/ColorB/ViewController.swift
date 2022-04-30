//
//  ViewController.swift
//  ColorB
//
//  Created by Александр  Крайнев on 30.04.2022.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let v = UIView(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
//        //v.backgroundColor = UIColor.red
//       // v.backgroundColor = .yellow
//       // v.backgroundColor = UIColor(red: 0, green: 0.1, blue: 0.1, alpha: 1)
////        Use this trait to determine whether your interface should be configured with a dark or light appearance. The default value of this trait is set to the corresponding appearance setting on the user's device.
//        v.backgroundColor = UIColor {tc in
//            switch tc.userInterfaceStyle{
//            case .dark:
//                return .black
//            default:
//                return UIColor(red: 0, green: 0.1, blue: 0.1, alpha: 1)
//            }
//        }
//        self.view.addSubview(v)
//        // Do any additional setup after loading the view.
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let v = UIView(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
//        v.backgroundColor = UIColor.yellow
//        //видмость
//        //v.isHidden = false
//        //коэффициент прозрачности
//        //v.alpha = 0.2
//        //isOpaque как то влияет на производительность, по умолчанию true
//        self.view.addSubview(v)
//    }

//        override func viewDidLoad() {
//            super.viewDidLoad()
//            let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
//            v1.backgroundColor = .red
//            let v2 = UIView(frame: CGRect(x: 41, y: 56, width: 132, height: 194))
//            v2.backgroundColor = .yellow
//            let v3 = UIView(frame: CGRect(x: 43, y: 197, width: 160, height: 230))
//            v3.backgroundColor = .black
//            self.view.addSubview(v1)
//            v1.addSubview(v2)
//            self.view.addSubview(v3)
//
//        }
//    override func viewDidLoad() {
//        //создает две центрированные вьюшки друг в друге
//        super.viewDidLoad()
//        let v1 = UIView(frame: CGRect(x: 50, y: 50, width: 132, height: 194))
//        v1.backgroundColor = .red
//        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
//        v2.backgroundColor = .yellow
//        self.view.addSubview(v1)
//        v1.addSubview(v2)
//
//        }
    override func viewDidLoad() {
        //создает две центрированные вьюшки друг в друге
        super.viewDidLoad()
        let v1 = UIView(frame: CGRect(x: 113, y: 111, width: 132, height: 194))
        v1.backgroundColor = .red
        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        self.view.addSubview(v1)
        v1.addSubview(v2)
        v2.bounds.size.height += 20
        v2.bounds.size.width += 20
        

        }
}

