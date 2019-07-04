//
//  ViewController.swift
//  ocApp
//
//  Created by Kalin Balabanov on 10/06/2019.
//  Copyright © 2019 Kalin Balabanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyTime: UILabel!
    //numbers array
    let numberArr = ["1", "2", "3", "4", "5","6", "7", "8", "9", "10"]
    //array for higher than 1, plural
    let timePeriodsArrMulti = ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    // array for number 1, singular
    let timePeriodsArrUni = ["DAY", "WEEK", "MONTH", "YEAR"]
    
    
// dwell on the past function
    @IBAction func past() {
        //choose a random number from the number array
        let randNumberIndex = intptr_t(arc4random_uniform(UInt32(numberArr.count)))
        let number = numberArr[randNumberIndex]
        
        //if the number is 1 then
        if randNumberIndex == 0 {
            
            let timePeriodIndex = intptr_t(arc4random_uniform(UInt32(timePeriodsArrUni.count)))
            let time = timePeriodsArrUni[timePeriodIndex]
            
            // generate the prompt in singular
        storyTime.text = ("WHAT WERE YOU DOING " + number + " " + time + " AGO?")
        } else {
            //if the number is > 1 then
            let timePeriodIndex = intptr_t(arc4random_uniform(UInt32(timePeriodsArrMulti.count)))
            let time = timePeriodsArrMulti[timePeriodIndex]
            
            //generatea prompt thats is in plural
            storyTime.text = ("WHAT WERE YOU DOING " + number + " " + time + " AGO?")
        }
    }
    
    //dream of the future function
    @IBAction func future() {
        //choose a random number from the number array
        let randNumberIndex = intptr_t(arc4random_uniform(UInt32(numberArr.count)))
        let number = numberArr[randNumberIndex]
        
        //if the number is 1 then
        if randNumberIndex == 0 {
            
            let timePeriodIndex = intptr_t(arc4random_uniform(UInt32(timePeriodsArrUni.count)))
            let time = timePeriodsArrUni[timePeriodIndex]
            
            // generate the prompt in singular
            storyTime.text = ("WHAT DO YOU WANT TO DO IN " + number + " " + time + " TIME?")
        } else {
            
            let timePeriodIndex = intptr_t(arc4random_uniform(UInt32(timePeriodsArrMulti.count)))
            let time = timePeriodsArrMulti[timePeriodIndex]
            
            //generatea prompt thats is in plural
            storyTime.text = ("WHAT DO YOU WANT TO DO IN " + number + " " + time + " TIME?")
        }
    }
    //next player function
    @IBAction func nextPlayer() {
        //choose a random number from numbers array
        let randPlayerIndex = intptr_t(arc4random_uniform(UInt32(numberArr.count)))
        let randPlayer = numberArr[randPlayerIndex]
        //generate a prompt for the next player
        storyTime.text = ("THE NEXT PLAYER IS NUMBER " + randPlayer )
        
    }
}
