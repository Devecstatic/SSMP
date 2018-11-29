//
//  SSMPPanGestureRecognizer.swift
//  SSMP
//
//  Created by Ethan Lipnik on 11/26/18.
//  Copyright © 2018 Fetch. All rights reserved.
//

import UIKit

public class SSMPPanGestureRecognizer: UIPanGestureRecognizer {
	public var function: Selector!
	
	public override init(target: Any?, action: Selector?) {
		super.init(target: target, action: action)
		
		if let target = target, let action = action {
			self.addTarget(target, action: action)
			function = action
		}
	}
}
