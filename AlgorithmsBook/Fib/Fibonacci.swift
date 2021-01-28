//
//  Fibonacci.swift
//  AlgorithmsBook
//
//  Created by dandy_zhouli on 2021/1/22.
//

import UIKit

///斐波那契数列数列算法: 0, 1, 2, 3, 5, 13...
class Fibonacci: NSObject {
    
    func test() {
        
        let Count64 = Fibonacci.recursionCal(4)
        let Count64_ = Fibonacci.forCal(64)
        let Count64__ = Fibonacci.mathEquation(64)
        
        print("第64个月的兔子数：recursionCal:\(Count64)，forCalL:\(Count64_)，mathEquation:\(Count64__)")
    }
    /// 时间复杂度：O(2^n)
    /// 第一种方式：递归--》效率低的算法：在month很大的时候需要计算时间很长64
    /// - Parameter month: 第month月份
    /// - Returns: 第month月会有的斐波那契
    class func recursionCal(_ month:Int) -> NSInteger{
        if month <= 1 {
            return month;
        }
        return recursionCal(month - 1) + recursionCal(month - 2)
    }
    
    
    /// 第二种方式：使用for循环进行计算，时间复杂度：O(n)
    static func forCal(_ month: Int) -> NSInteger{
        if month < 2 {
            return month
        }
        
        var first = 0
        var second = 1
        for _ in 0 ..< (month-1) {
            second =  first + second
            first = second - first
        }
        return second
    }
    
    
    static func mathEquation(_ month: Int) -> NSInteger{
        let c :Double = sqrt(5)
        return (Int)((pow((1+c)/2, Double(month)) - pow((1-c)/2, Double(month)))/c)
    }
}
