//
//  Star.m
//  AllOfUIView
//
//  Created by Nam Titan on 7/22/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "Star.h"

@interface Star ()

@end

@implementation Star
{
    UIImageView *brown,*green,*red,*violet;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self drawStar];
    [self vitri];
    [self animate];
   
}
-(void)drawStar{
    brown = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"brown.png"]];
    green = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"green.png"]];
    red = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"red.png"]];
    violet = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"violet.png"]];
    [self.view addSubview:brown];
    [self.view addSubview:green];
    [self.view addSubview:red];
    [self.view addSubview:violet];
}
-(void)animate{
[UIView animateWithDuration:1 animations:^{
    brown.center = CGPointMake(self.view.center.x-100,self.view.center.y+100);
    green.center = CGPointMake(self.view.center.x+100,self.view.center.y+100);
    red.center = CGPointMake(self.view.center.x+100,self.view.center.y-100);
    violet.center = CGPointMake(self.view.center.x-100,self.view.center.y-100);
    
} completion:^(BOOL finished) {
    [UIView animateWithDuration:1 animations:^{
        brown.center = CGPointMake(self.view.center.x-100,self.view.center.y);
        green.center = CGPointMake(self.view.center.x,self.view.center.y+100);
        red.center = CGPointMake(self.view.center.x+100,self.view.center.y);
        violet.center = CGPointMake(self.view.center.x,self.view.center.y-100);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 animations:^{
            [self vitri];
        } completion:^(BOOL finished) {
            [self animate];
        }];
    }];
}];
}

-(void)vitri{
    red.center = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height  * 0.5);
    violet.center = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height * 0.5);
    brown.center = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height * 0.5);
    green.center = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height * 0.5);
}


@end
