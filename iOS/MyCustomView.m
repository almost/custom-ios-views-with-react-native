//
//  MyCustomView.m
//  demo
//
//  Created by Thomas Parslow on 01/04/2015.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "MyCustomView.h"

@implementation MyCustomView
{
    UIColor *squareColor;
}

- (void)setIsRed:(BOOL)isRed
{
    squareColor= (isRed)  ? [UIColor redColor] : [UIColor greenColor];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    [squareColor setFill];
    CGContextFillRect(UIGraphicsGetCurrentContext(), rect);
}

@end
