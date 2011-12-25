//
//  ChromitorAppDelegate.m
//  Chromitor
//
//  Created by Steven Wilkin on 25/12/2011.
//  Copyright 2011 NullTheory Ltd. All rights reserved.
//

#import "ChromitorAppDelegate.h"

@implementation ChromitorAppDelegate

- (void)displayNumberTabs {
    // get number of open tabs
    NSString *command = @"tell application \"Google Chrome\" to get count of tabs of windows";
    NSAppleScript *script = [[NSAppleScript alloc] initWithSource: command];
    NSAppleEventDescriptor *results = [script executeAndReturnError:nil];
    
    // set status item
    NSStatusBar *bar = [NSStatusBar systemStatusBar];
    NSStatusItem *theItem = [bar statusItemWithLength:NSVariableStatusItemLength];
    [theItem retain];
    [theItem setTitle: [results stringValue]];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self displayNumberTabs];
}

@end
