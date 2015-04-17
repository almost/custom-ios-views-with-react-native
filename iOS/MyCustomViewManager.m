//
//  MyCustomViewManager.m
//  demo
//
//  Created by Thomas Parslow on 01/04/2015.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "MyCustomViewManager.h"
#import "MyCustomView.h"
#import <UIKit/UIKit.h>

@implementation MyCustomViewManager

RCT_EXPORT_MODULE();

RCT_EXPORT_VIEW_PROPERTY(isRed, BOOL)

- (UIView *)view
{
    MyCustomView * theView;
    theView = [[MyCustomView alloc] initWithFrame:CGRectMake(0,0,10,10)];
    return theView;
}

@end
