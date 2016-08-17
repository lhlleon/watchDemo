//
//  InterfaceController.m
//  Hello WatchKit App Extension
//
//  Created by LiHanlun on 16/7/5.
//  Copyright © 2016年 LiHanlun. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    _hellp.text = @"北京信息网";
    [_hellp setTextColor:[UIColor cyanColor]];
    
    
    [_button setTitle:@"更多新闻"];
    
    // Configure interface objects here.
}
- (IBAction)push {
    NSLog(@"点我了呢~");
  [self presentControllerWithName:@"TiaoInterfaceController" context:nil];
//    [self presentControllerWithName:@"TiaoInterfaceController" context:nil];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    
    
}


@end



