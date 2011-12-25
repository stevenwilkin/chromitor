//
//  ChromitorAppDelegate.h
//  Chromitor
//
//  Created by Steven Wilkin on 25/12/2011.
//  Copyright 2011 NullTheory Ltd. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ChromitorAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
