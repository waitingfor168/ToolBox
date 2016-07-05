//
//  UIView+HJFrame.m
//  ToolBoxDemo
//
//  Created by whj on 16/7/5.
//  Copyright © 2016年 whj. All rights reserved.
//

#import "UIView+HJFrame.h"

static inline CGRect CGRectRound(CGRect rect) {
    
    return CGRectMake((NSInteger)rect.origin.x,
                      (NSInteger)rect.origin.y,
                      (NSInteger)rect.size.width,
                      (NSInteger)rect.size.height);
}


@implementation UIView (HJFrame)

#pragma mark - HJFrame Get

- (CGFloat)frameX {

    return self.frame.origin.x;
}

- (CGFloat)frameY {

    return self.frame.origin.y;
}

- (CGFloat)frameW {

    return self.frame.size.width;
}

- (CGFloat)frameH {

    return self.frame.size.height;
}

- (CGSize)frameSize {

    return self.frame.size;
}

- (CGPoint)frameOrigin {

    return self.frame.origin;
}

#pragma mark - HJFrame Set

- (void)setFrameX:(CGFloat)x {

    [self setFrame:CGRectRound(CGRectMake(x,
                                          CGRectGetMinY([self frame]),
                                          CGRectGetWidth([self frame]),
                                          CGRectGetHeight([self frame])))];
}

- (void)setFrameY:(CGFloat)y {

    [self setFrame:CGRectRound(CGRectMake(CGRectGetMinX([self frame]),
                                          y,
                                          CGRectGetWidth([self frame]),
                                          CGRectGetHeight([self frame])))];
}

- (void)setFrameW:(CGFloat)w {

    [self setFrame:CGRectRound(CGRectMake(CGRectGetMinX([self frame]),
                                          CGRectGetMinY([self frame]),
                                          w,
                                          CGRectGetHeight([self frame])))];
}

- (void)setFrameH:(CGFloat)h {

    [self setFrame:CGRectRound(CGRectMake(CGRectGetMinX([self frame]),
                                          CGRectGetMinY([self frame]),
                                          CGRectGetWidth([self frame]),
                                          h))];
}

- (void)setFrameSize:(CGSize)size {

    [self setFrame:CGRectMake(CGRectGetMinX([self frame]),
                              CGRectGetMinY([self frame]),
                              size.width,
                              size.height)];
}

- (void)setFrameOrigin:(CGPoint)origin {

    [self setFrameX:origin.x];
    [self setFrameY:origin.y];
}

@end
