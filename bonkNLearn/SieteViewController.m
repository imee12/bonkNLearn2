//
//  SieteViewController.m
//  bonkNLearn
//
//  Created by Imee Cuison on 10/12/15.
//  Copyright © 2015 Dynepic. All rights reserved.
//

#import "SieteViewController.h"

@interface SieteViewController ()

@end

@implementation SieteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)canBecomeFirstResponder
{
    return YES;
    
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion != UIEventSubtypeMotionShake) return;
    //
    NSString *music = [[NSBundle mainBundle]pathForResource:@"Siete" ofType:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:music] error:NULL];
    audioPlayer.delegate = self;
    audioPlayer.numberOfLoops = -1;
    [audioPlayer play];
    // [audioPlayer pause];
    [self delay];
    
}

-(void)delay
{
    [self performSelector:@selector(sietePlayed)
               withObject:(nil)
               afterDelay:(1.0)];
    
    
}

-(void)sietePlayed
{
    
    //   if (motion != UIEventSubtypeMotionShake) {
    [audioPlayer pause];
    [self sietePlay];
}

- (void)sietePlay
{
    [self performSegueWithIdentifier:@"sieteToOcho" sender:nil];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
