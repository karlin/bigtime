//
//  AppDelegate.m
//  bigtime
//
//  Created by Karlin Fox on 3/29/13.
//  Copyright (c) 2013 Karlin Fox. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize timeLabel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:TRUE];
    [self updateTime];
}

- (void)updateTime{
    NSDate *now = [[NSDate alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HH:mm"];
    NSString *foo = [formatter stringFromDate:now];
    [timeLabel setStringValue:foo];
}

- (void)applicationWillResignActive:(NSNotification *)notification
{    
    [NSApp performSelector:@selector(terminate:) withObject:nil afterDelay:0.0];
//    exit(0);
}
@end
