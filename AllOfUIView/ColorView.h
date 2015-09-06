//
//  ColorView.h
//  AllOfUIView
//
//  Created by Nam Titan on 9/5/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorView : UIView
-(instancetype) initWithHex: (NSString*) hex
                      alpha: (CGFloat) alpha
                      frame:(CGRect) rect;
-(void)fadeOut;
@property(nonatomic,strong) NSString* hex;
@end
