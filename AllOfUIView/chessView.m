//
//  chessView.m
//  AllOfUIView
//
//  Created by Nam Titan on 7/22/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "chessView.h"

@interface chessView ()

@end

@implementation chessView
    

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
}
/*-(void) drawSquares {
    CGSize mainViewSize = self.view.bounds.size;
    CGFloat margin = 20;
    CGFloat h0= 160;
    CGFloat recWidth = mainViewSize.width - margin * 2.0;
    CGFloat statusNavigationBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height + self.navigationController.navigationBar.bounds.size.height;
    CGPoint center = CGPointMake(mainViewSize.width *0.5,
                                 (mainViewSize.height + statusNavigationBarHeight) * 0.5);
}
- (UIView*) drawSquareWidth: (CGFloat) width
                  andRotate: (BOOL) rotate
                   atCenter:(CGPoint) center {
    UIView*square = [[UIView alloc] initWithFrame:CGRectMake(0, 0,(self.view.bounds.size.width - margin * 2.0, width)];
    
    
}*/


@end
