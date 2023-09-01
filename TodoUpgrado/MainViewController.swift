//
//  MainViewController.swift
//  TodoUpgrado
//
//  Created by t2023-m0049 on 2023/08/30.
//

import Foundation
import UIKit

class MainViewController: ViewController {

    /** @brief 메인화면 투데이라벨 */
    @IBOutlet weak var lbToday: UILabel!
    
    /** @brief 메인화면 날짜라벨 */
    @IBOutlet weak var lbDay: UILabel!
    
    /** @brief 메인화면 테이블뷰 */
    @IBOutlet weak var tvMain: UITableView!
    
    
    @IBOutlet weak var btnAddMove: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
