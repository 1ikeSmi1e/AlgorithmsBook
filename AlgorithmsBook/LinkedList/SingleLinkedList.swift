//
//  SingleLinkedList.swift
//  AlgorithmsBook
//
//  Created by dandy_zhouli on 2021/1/27.
// 单向链表

import UIKit


class SingleLinkedNode {
    var val : Any?
    var next :SingleLinkedNode?
    
    init(val : Any?) {
        self.val = val
    }
}

class SingleLinkedList: NSObject {
    
    static func test()  {
        
        let linkList : SingleLinkedList = SingleLinkedList(1)
        linkList.addNode(nodeVals: 2, 3, 4, 5, 6)
        
        // 删除第3个节点
        linkList.deleteNode((linkList.head?.next?.next)!)

        /// 反转链表
        linkList.head = linkList.reverseLinkListUseRecursion(linkList.head)
        print(linkList.head ?? "反转后的节点为空")
        
        linkList.head = linkList.reverseLinkListUseCirculation(linkList.head)
        print(linkList.head ?? "反转后的节点为空")
        
    }
    
    /// 算法题：删除一个确定的节点
    func deleteNode(_ node: SingleLinkedNode) {
        node.val = node.next!.val
        node.next = node.next!.next
    }
    
    /// 剑指 Offer 24. 反转链表
    /// 输入: 1->2->3->4->5->NULL
    /// 输出: 5->4->3->2->1->NULL
    /// 方法一：递归法
    func reverseLinkListUseRecursion(_ head: SingleLinkedNode?) -> SingleLinkedNode?{
        if (head == nil) || (head?.next == nil) {
            return head
        }
        let nextHead = reverseLinkListUseRecursion(head?.next)
        head!.next?.next = head
        head!.next = nil
        return nextHead;
    }
    /// 方法二：循环迭代法
    func reverseLinkListUseCirculation(_ head: SingleLinkedNode?) -> SingleLinkedNode?{
        if (head == nil) || (head?.next == nil) {
            return head
        }
        var newHead : SingleLinkedNode?
        var curHead = head
        while curHead != nil {
            let temp = curHead!.next
            curHead!.next = newHead
            newHead = curHead
            curHead = temp
        }
        return newHead;
    }
    
    /// 以下是类的定义
    var head : SingleLinkedNode?
    
    init(_ headNodeVal: Any?) {
        head = SingleLinkedNode(val: headNodeVal)
    }
    
    
    /// 添加链表节点，可传多个值，添加多个
    /// - Parameter nodeVals: 可变参数，可以传多个一次性添加多个
    func addNode(nodeVals: Any?...) {

        var first = 0
        if self.head == nil {
            first = 1
            self.head = SingleLinkedNode(val: nodeVals.first as Any?)
        }
        var node : SingleLinkedNode = self.head!
        
        for i in first..<(nodeVals.count) {
            node.next = SingleLinkedNode(val: nodeVals[i] as Any?)
            node = node.next!
        }
    }
    

}
