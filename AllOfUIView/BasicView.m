//
//  BasicView.m
//  CVSwift
//
//  Created by Nam Titan on 7/16/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "BasicView.h"

@interface BasicView ()
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (weak, nonatomic) IBOutlet UISlider *rotateSlider;
@property (weak, nonatomic) IBOutlet UISlider *scaleSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;


@end

@implementation BasicView

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onShow:(id)sender {
    self.myView.hidden =! [sender isOn];
}
- (IBAction)onAlphaChange:(id)sender {
    UISlider *slider = (UISlider *)sender;
    self.myView.alpha = slider.value;
}
-(void)rotateAndScale {
   
}
- (IBAction)onRotate:(id)sender {
    UISlider *slider2 = (UISlider *)sender;
    self.myView.transform = CGAffineTransformMakeRotation(slider2.value);

}
- (IBAction)onScale:(id)sender {
    UISlider *slider3 = (UISlider *)sender;
    self.myView.transform = CGAffineTransformMakeScale(slider3.value, slider3.value);
    
}
- (IBAction)changeColor:(id)sender {
    switch (self.segment.selectedSegmentIndex)
    
    {
        case 0:
            
            self.myView.backgroundColor = [UIColor blackColor];
            
            break;
            
        case 1:
            
            self.myView.backgroundColor = [UIColor redColor];
            break;
        case 2:
            
            self.myView.backgroundColor = [UIColor greenColor];
            
            break;
        case 3:
            
            self.myView.backgroundColor = [UIColor blueColor];
            
            break;
            
        default:
            
            self.myView.backgroundColor = [UIColor blackColor];
            
            break;
            
    }

    
}


@end
