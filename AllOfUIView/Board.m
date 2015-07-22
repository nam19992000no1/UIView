//
//  Board.m
//  AllOfUIView
//
//  Created by Nam Titan on 7/22/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "Board.h"
#import <AVFoundation/AVFoundation.h>

@interface Board ()

@end

@implementation Board
{
    UIImageView *ship;
    UIImageView *sea1,*sea2,*sea3,*sea4;
    AVAudioPlayer *audioPlayer;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self drawShipAndSea];
    [self animateShip];
    [self animateSea];
    [self playSong];
}
-(void)drawShipAndSea {
    sea1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sea1.png"]];
    sea1.frame = self.view.bounds;
    [self.view addSubview:sea1];
    sea2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sea2.png"]];
    sea2.frame = CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:sea2];
    sea3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sea3.png"]];
    sea3.frame = CGRectMake(2*self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:sea3];
    sea4 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sea4.png"]];
    sea4.frame = CGRectMake(3*self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    [self.view addSubview:sea4];
    
    ship = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ship-sm.png"]];
    ship.center = CGPointMake(200, 500);
    [self.view addSubview:ship];
}
-(void)animateShip {
    [UIView animateWithDuration:1 animations:^{
        ship.transform = CGAffineTransformMakeRotation(-0.08);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 animations:^{
            ship.transform = CGAffineTransformMakeRotation(0.08);
        } completion:^(BOOL finished) {
            [self animateShip];
        }];
    }];
}
/*-(void)animateSea{
 [UIView animateWithDuration:3 animations:^{
 sea1.frame= CGRectMake(-self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 sea2.frame = self.view.bounds;
 } completion:^(BOOL finished) {
 sea3.frame = CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 sea1.frame= CGRectMake(3*self.view.bounds.size.width , 0, self.view.bounds.size.width, self.view.bounds.size.height);
 sea2.frame= CGRectMake(-self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 
 [UIView animateWithDuration:3 animations:^{
 sea4.frame = CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 sea1.frame= CGRectMake(2*self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 sea2.frame= CGRectMake(3*self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 sea3.frame = CGRectMake(-self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 
 } completion:^(BOOL finished) {
 [UIView animateWithDuration:3 animations:^{
 sea1.frame = self.view.bounds;
 sea4.frame = CGRectMake(-self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
 } completion:^(BOOL finished) {
     sea4.frame = CGRectMake(3*self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
     sea3.frame = CGRectMake(2*self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
      sea1.frame = CGRectMake(-self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
     [self animateSea];
 }];
 }];
 }];
 
 }*/
-(void)animateSea{
    [UIView animateWithDuration:5 animations:^{
        sea1.frame= CGRectMake(-self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        sea2.frame = self.view.bounds;
    } completion:^(BOOL finished) {
        sea1.frame = CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        [UIView animateWithDuration:5 animations:^{
            sea1.frame = self.view.bounds;
            sea2.frame = CGRectMake(-self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        } completion:^(BOOL finished) {
            sea2.frame = CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
            [self animateSea];
        }];
    }];
    
}
-(void)playSong{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"wavesound" ofType:@"mp3"];
    NSURL*url = [NSURL fileURLWithPath:filePath];
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    [audioPlayer prepareToPlay];
    [audioPlayer play];
}
-(void) viewWillDisappear:(BOOL)animated{
    [audioPlayer stop];
}


@end
