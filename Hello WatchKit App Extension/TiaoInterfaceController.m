//
//  TiaoInterfaceController.m
//  watchDemo
//
//  Created by LiHanlun on 16/7/5.
//  Copyright © 2016年 LiHanlun. All rights reserved.
//

#import "TiaoInterfaceController.h"
#import "MyTableCell.h"

@interface TiaoInterfaceController ()

@property (strong , nonatomic) NSArray *techNameArray;

@end

@implementation TiaoInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self table];
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

-(void)table{
    self.techNameArray = @[@"安卓", @"ios", @"java", @"php", @"c++"];
    [self.interfaceTableView setNumberOfRows:self.techNameArray.count withRowType:@"default"];
    [self.techNameArray enumerateObjectsUsingBlock:^(NSString * techName, NSUInteger idx, BOOL * _Nonnull stop) {
        MyTableCell * tableRow = [self.interfaceTableView rowControllerAtIndex:idx];
        [tableRow.titleLabel setText:techName];
    }];
    
}

-(void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    NSLog(@"点了");
}


@end



