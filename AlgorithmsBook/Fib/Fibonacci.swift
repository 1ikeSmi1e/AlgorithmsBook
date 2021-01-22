//
//  Fibonacci.swift
//  AlgorithmsBook
//
//  Created by dandy_zhouli on 2021/1/22.
//

import UIKit

///斐波那契数列数列算法: 0, 1, 2, 3, 5, 13...
class Fibonacci: NSObject {
    /// 第一种方式：递归--》效率低的算法：在month很大的时候需要计算时间很长64
    /// - Parameter month: 第month月份
    /// - Returns: 第month月会有的斐波那契
    class func recursionCal(_ month:Int) -> NSInteger{
        if month <= 1 {
            return month;
        }
        return recursionCal(month - 1) + recursionCal(month - 2)
    }
    
    static func forCal(_ month: Int) -> NSInteger{
        if month < 2 {
            return month
        }
        
        var first = 0
        var second = 1
        for _ in 0 ..< (month-1) {
            let sum =  first + second
            first = second
            second = sum
        }
        return second
    }
}
