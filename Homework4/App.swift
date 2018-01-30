//
//  App.swift
//  Homework4
//
//  Created by Дмитрий on 29.01.2018.
//  Copyright © 2018 Dima. All rights reserved.
//

import Foundation

class App {

    var numberOfUsers: Int
    var numberOfFeatures: Int
    var sizeOfApp: Double
    var typeOfDevice: TypeOfDevice
    var moneyEarn: Double
    private var plusOneFeature: Int

    init(numberOfUsers: Int,
         numberOfFeatures: Int,
         sizeOfApp: Double,
         typeOfDevice: TypeOfDevice,
         moneyEarn: Double, plusOneFeature: Int) {

        self.numberOfUsers = numberOfUsers
        self.numberOfFeatures = numberOfFeatures
        self.sizeOfApp = sizeOfApp
        self.typeOfDevice = typeOfDevice
        self.moneyEarn = moneyEarn
        self.plusOneFeature = plusOneFeature
    }

    func appAudienceGrowth(newUsers: Int) {
        numberOfUsers += newUsers
        moneyEarn += Double(newUsers/100)
    }

    func appSizeGrowth(size: Double) {
        sizeOfApp += size
    }

    func appMoneyGrowth(money: Double) {
        moneyEarn += money
    }
    private func appAddOneFeature() -> Int {
        numberOfFeatures += plusOneFeature
        return numberOfFeatures
    }

    func addUsersAfterAddFeatures () {
        let feature = appAddOneFeature()
        numberOfUsers += 100*feature
        sizeOfApp += 25.0
    }

}

enum TypeOfDevice {
    case iPhone
    case iPad
    case Both
}
