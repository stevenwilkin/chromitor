//
//  ChromitorAppDelegate.m
//  Chromitor
//
//  Created by Steven Wilkin on 25/12/2011.
//  Copyright 2011 NullTheory Ltd. All rights reserved.
//

#import "ChromitorAppDelegate.h"

@implementation ChromitorAppDelegate

@synthesize statusItem;
@synthesize menu;


- (void)displayNumberTabs {
    // get number of open tabs
    NSString *command = @"tell application \"Google Chrome\" to get count of tabs of windows";
    NSAppleScript *script = [[NSAppleScript alloc] initWithSource: command];
    NSAppleEventDescriptor *results = [script executeAndReturnError:nil];
    
    // set status item
    [self.statusItem setTitle: [results stringValue]];
}

- (void)fireTimer:(NSTimer *)aTimer {
    [self displayNumberTabs];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // create the status item
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    self.statusItem = [bar statusItemWithLength:NSVariableStatusItemLength];
    [self.statusItem retain]; 
    [self.statusItem setHighlightMode:YES];
    [self.statusItem setMenu:self.menu];
    
    // initial setting of status item
    [self displayNumberTabs];
    
    // update every second
    [NSTimer scheduledTimerWithTimeInterval: 1.0
                                     target: self
                                   selector: @selector(fireTimer:)
                                   userInfo: nil
                                    repeats: YES];
}

@end
