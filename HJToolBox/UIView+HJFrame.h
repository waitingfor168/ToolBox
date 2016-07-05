//
//  UIView+HJFrame.h
//  ToolBoxDemo
//
//  Created by whj on 16/7/5.
//  Copyright © 2016年 whj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HJFrame)

- (CGFloat)frameX;
- (CGFloat)frameY;
- (CGFloat)frameW;
- (CGFloat)frameH;
- (CGSize)frameSize;
- (CGPoint)frameOrigin;

- (void)setFrameX:(CGFloat)x;
- (void)setFrameY:(CGFloat)y;
- (void)setFrameW:(CGFloat)w;
- (void)setFrameH:(CGFloat)h;
- (void)setFrameSize:(CGSize)size;
- (void)setFrameOrigin:(CGPoint)origin;

@end
