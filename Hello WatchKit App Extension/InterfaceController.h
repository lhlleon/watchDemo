//
//  InterfaceController.h
//  Hello WatchKit App Extension
//
//  Created by LiHanlun on 16/7/5.
//  Copyright © 2016年 LiHanlun. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *hellp;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *button;

@end
