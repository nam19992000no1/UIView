//
//  DemoColor.m
//  AllOfUIView
//
//  Created by Nam Titan on 9/4/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "DemoColor.h"
#import "UIColor+Extend.h"
@interface DemoColor()
@end
@implementation DemoColor
-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel*label = [[UILabel alloc] initWithFrame:CGRectMake(40, 100, 100, 100)];
    label.backgroundColor = [[UIColor alloc]initWithHex:@"4ECDC4" alpha:1.0];
    [self.view addSubview:label];
}
@end
