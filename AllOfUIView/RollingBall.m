//
//  RollingBall.m
//  AllOfUIView
//
//  Created by Nam Titan on 8/17/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "RollingBall.h"

@interface RollingBall ()

@end

@implementation RollingBall{
    UIImageView *ball;
    NSTimer *timer;
    CGFloat angle;
    CGFloat ballRadius;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor= [UIColor whiteColor];
    [self addBall];
    angle = 0.0;
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(rollBall) userInfo:nil repeats:true];
}
-(void) addBall {
    ball = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"football.png"]];
    ballRadius= 32.0;
    [self.view addSubview:ball];
    
}
-(void) rollBall {
    CGFloat deltaAngle = 0.1;
    angle += deltaAngle;
    ball.transform = CGAffineTransformMakeRotation(angle);
    ball.center = CGPointMake(ball.center.x+ballRadius * deltaAngle, ball.center.y);
    
}
-(void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [timer invalidate];
    timer = nil;
}

@end
