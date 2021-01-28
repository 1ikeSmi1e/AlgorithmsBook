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
    
    func test()  {
        
        let linkList : SingleLinkedList = SingleLinkedList(1)
        linkList.addNode(nodeVals: 2, 3, 4, 5, 6)
        
        // 删除第3个节点
        linkList.deleteNode((linkList.head?.next?.next)!)
        print(linkList)
    }
    
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
    
    
    func deleteNode(_ node: SingleLinkedNode) {
        node.val = node.next!.val
        node.next = node.next!.next
    }
    
}
