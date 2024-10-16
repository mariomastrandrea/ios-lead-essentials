//
//  UIView+Shimmering.swift
//  EssentialFeed
//
//  Created by Mario Mastrandrea on 16/10/24.
//

import UIKit

extension UIView {
    public var isShimmering: Bool {
        return layer.mask?.animation(forKey: shimmerAnimationKey) != nil
    }
    
    private var shimmerAnimationKey: String {
        return "shimmer"
    }
    
    func startShimmering() {
        layer.mask = ShimmeringLayer(size: bounds.size)
    }
    
    func stopShimmering() {
        layer.mask = nil
    }
}

private class ShimmeringLayer: CAGradientLayer {
    private var observer: Any?
    private var animation: CABasicAnimation?
    
    convenience init(size: CGSize) {
        self.init()
        
        let white = UIColor.white.cgColor
        let alpha = UIColor.white.withAlphaComponent(0.75).cgColor
        
        colors = [alpha, white, alpha]
        startPoint = CGPoint(x: 0.0, y: 0.4)
        endPoint = CGPoint(x: 1.0, y: 0.6)
        locations = [0.4, 0.5, 0.6]
        frame = CGRect(x: -size.width, y: 0, width: size.width*3, height: size.height)
        
        let animation = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.locations))
        animation.fromValue = [0.0, 0.1, 0.2]
        animation.toValue = [0.8, 0.9, 1.0]
        animation.duration = 1.25
        animation.repeatCount = .infinity
        add(animation, forKey: animationKey)
        self.animation = animation
        
        observer = NotificationCenter.default.addObserver(
            forName: UIApplication.willEnterForegroundNotification,
            object: nil,
            queue: nil
        ) { [weak self] _ in
            self?.addAnimation()
        }
    }
    
    func addAnimation() {
        if let animation {
            add(animation, forKey: animationKey)
        }
    }
    
    var animationKey: String {
        "shimmer"
    }
}

