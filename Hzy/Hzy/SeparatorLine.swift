//
//  SeparatorLine.swift
//  Hzy
//
//  Created by huang.ziyang on 17/2/3.
//  Copyright © 2017年 Wushuputi. All rights reserved.
//

import UIKit

public enum HzySeparatorLinePosition: Int {
    case top // 颜色位于上面(水平的分割线)
    case horizontalCenter // 颜色位于水平居中(水平分割线)
    case bottom // 颜色位于下面 (水平分割线)
    case left // 颜色位于左边(竖直分割线)
    case verticalCenter // 颜色位于竖直居中 (竖直分割线)
    case right // 颜色位于右边(数值分割线)
}

class SeparatorLine: UIView {

    var separatorLineWidth:CGFloat = 0.0 // 线宽
    var color = UIColor.black // 分割线的颜色
    var separatorLinePosition:HzySeparatorLinePosition = HzySeparatorLinePosition.top // 分割线颜色的位置
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let context = UIGraphicsGetCurrentContext()!
        // 线条颜色
        context.setStrokeColor(self.color.cgColor)
        // 设置线条平滑，不需要两边像素宽
        context.setShouldAntialias(false)
        // 设置线条宽度
        context.setLineWidth(separatorLineWidth)
        
        switch self.separatorLinePosition {
        case .top:
            context.move(to: CGPoint(x: 0, y: self.separatorLineWidth / 2.0))
            context.addLine(to: CGPoint(x: self.bounds.size.width, y: self.separatorLineWidth / 2.0))
            break
        case .horizontalCenter:
            
            break
        case .bottom:
            break
        case .left:
            break
        case .verticalCenter:
            break
        case .right:
            break
        default: break
            
        }
        // 开始画线
        context.strokePath()
    }
    
 
    
    
    

}
