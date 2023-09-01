//
//  File.swift
//  TodoUpgrado
//
//  Created by t2023-m0049 on 2023/08/30.
//

import Foundation
import UIKit


class AddViewController: ViewController {

    
    /** @brief 추가버튼 */
    @IBOutlet weak var btnAdd: UIButton!
    
    /** @brief 완료버튼 */
    @IBOutlet weak var btnComplete: UIButton!
    
    /** @brief 캘린더버튼 */
    @IBOutlet weak var btnCallender: UIButton!
    
    /** @brief 추가화면 테이블뷰 */
    @IBOutlet weak var tvAdd: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    @IBAction func btnPlus(_ sender: Any)  {
        // 1. UIAlertController 생성
        let alertController = UIAlertController(title: "날짜 선택", message: "\n\n\n\n\n\n\n", preferredStyle: .alert)
        // 2. Text Field 생성
        let textField = UITextField(frame: CGRect(x: 8, y: 40, width: 250, height: 30))
        textField.placeholder = "Write your todo XD"
        textField.textAlignment = .center
        alertController.view.addSubview(textField)
        // 3. DatePicker 생성
        let datePicker = UIDatePicker(frame: CGRect(x: -85, y: 70, width: 270, height: 200))
        datePicker.datePickerMode = .time
        alertController.view.addSubview(datePicker)
        // 4. 확인 버튼 추가
        let confirmAction = UIAlertAction(title: "done", style: .default) { (_) in
            let selectedDate = datePicker.date
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            let formattedDate = dateFormatter.string(from: selectedDate)
            textField.text = formattedDate
        }
        alertController.addAction(confirmAction)
        // 5. 취소 버튼 추가
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        // 6. UIAlertController를 현재 뷰 컨트롤러에서 표시
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func btnComplete(_ sender: Any) {
        
        
        
    }
    
    
    
    
    
    
    
    
}

