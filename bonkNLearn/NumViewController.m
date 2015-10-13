//
//  NumViewController.m
//  bonkNLearn
//
//  Created by Imee Cuison on 10/12/15.
//  Copyright © 2015 Dynepic. All rights reserved.
//

#import "NumViewController.h"

@interface NumViewController ()

@end

@implementation NumViewController

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
   // [self showAlert];
    NSString *music = [[NSBundle mainBundle]pathForResource:@"1" ofType:@"mp3"];
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:music] error:NULL];
    audioPlayer.delegate = self;
    audioPlayer.numberOfLoops = -1;
    [audioPlayer play];
    // [audioPlayer pause];
    [self delay];
    
}


//- (void)performSelector:(SEL _Nonnull)onePlayed
//             withObject:(id _Nullable)nil
//             afterDelay:(NSTimeInterval)3.0

-(void)delay
{
    [self performSelector:@selector(twoPlayed)
               withObject:(nil)
               afterDelay:(1.0)];
    
    
}


//- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
//{
//    if (motion == UIEventSubtypeMotionShake) {
//        //        [self showAlert];
//        //
//        //        NSString *music = [[NSBundle mainBundle]pathForResource:@"one" ofType:@"mp3"];
//        //        audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:music] error:NULL];
//        //        audioPlayer.delegate = self;
//        //        audioPlayer.numberOfLoops = -1;
//        //        [audioPlayer play];
//        // [self onePlayed];
//        [audioPlayer pause];
//
//
//    }
//}

//-(void)onePlayed:(UIEventSubtype)motion withEvent:(UIEvent *)event
-(void)twoPlayed
{
    
    //   if (motion != UIEventSubtypeMotionShake) {
    [audioPlayer pause];
    [self twoPlay];
}


//}
- (void)twoPlay
{
    [self performSegueWithIdentifier:@"oneToTwo" sender:nil];
    
}

-(void)showAlert
{
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"ShakeGesture Demo"
                              message:@"Shake Detected"
                              delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
    [alertView show];
    
//    NSString *music = [[NSBundle mainBundle]pathForResource:@"one" ofType:@"mp3"];
//    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:music] error:NULL];
//    audioPlayer.delegate = self;
//    audioPlayer.numberOfLoops = -1;
//    [audioPlayer play];
    //    [audioPlayer pause];
    
    
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
