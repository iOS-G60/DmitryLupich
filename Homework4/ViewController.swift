//
//  ViewController.swift
//  Homework4
//
//  Created by Дмитрий on 29.01.2018.
//  Copyright © 2018 Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appNumberOfUsersLabel: UILabel!
    @IBOutlet weak var appSizeLabel: UILabel!
    @IBOutlet weak var appMoneyEarnLabel: UILabel!
    @IBOutlet weak var addUsersTextField: UITextField!
    @IBOutlet weak var addSizeTextField: UITextField!
    @IBOutlet weak var addMoneyTextField: UITextField!
    @IBOutlet weak var numberOfFeaturesTextField: UILabel!
    @IBOutlet weak var imageAppView: UIImageView!

    let myApp = App(numberOfUsers: 1000, numberOfFeatures: 1, sizeOfApp: 55.5, typeOfDevice: .iPhone, moneyEarn: 10, plusOneFeature: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        updateDate()
        imageAppView.image = UIImage.init(named: "appIcon")
    }

    func updateDate () {
        appNumberOfUsersLabel.text = "\(myApp.numberOfUsers)"
        appSizeLabel.text = "\(myApp.sizeOfApp)"
        appMoneyEarnLabel.text = "\(myApp.moneyEarn)"
        numberOfFeaturesTextField.text = "\(myApp.numberOfFeatures)"
    }

    @IBAction func addUsers(_ sender: UIButton) {
        let users = addUsersTextField.text
        if let users = users {
            if let usersInt = Int(users) {
                myApp.appAudienceGrowth(newUsers: usersInt)
                updateDate()
            }
            else {
                print("Input correct number please")
            }

        }


    }

    @IBAction func addSize(_ sender: UIButton) {
        let size = addSizeTextField.text
        if let size = size {
            if let sizeDouble = Double(size) {
                myApp.appSizeGrowth(size: sizeDouble)
                updateDate()
            }
            else {
                print("Input correct size please")
            }
        }
    }

    @IBAction func addMoney(_ sender: UIButton) {
        let money = addMoneyTextField.text
        if let money = money {
            if let moneyDouble = Double(money) {
                myApp.appMoneyGrowth(money: moneyDouble)
                updateDate()
            }
            else {
                print("Input correct money please")
            }
        }
    }

    @IBAction func addFeatures(_ sender: UIButton) {
        myApp.addUsersAfterAddFeatures()
        updateDate()
    }

    @IBAction func clearAllData(_ sender: UIButton) {
        myApp.numberOfUsers = 1000
        myApp.numberOfFeatures = 1
        myApp.sizeOfApp = 55.5
        myApp.typeOfDevice = .iPhone
        myApp.moneyEarn = 10
        updateDate()
    }

}

