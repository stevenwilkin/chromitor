//
//  ChromitorAppDelegate.h
//  Chromitor
//
//  Created by Steven Wilkin on 25/12/2011.
//  Copyright 2011 NullTheory Ltd. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ChromitorAppDelegate : NSObject <NSApplicationDelegate> {
    NSAppleScript *appleScript;
    NSStatusItem *statusItem;
    IBOutlet NSMenu *menu;
}

@property (assign) NSAppleScript *appleScript;
@property (assign) NSStatusItem *statusItem;
@property (assign) NSMenu *menu;

- (void)displayNumberTabs;
- (void)fireTimer:(NSTimer *)aTimer;

@end
