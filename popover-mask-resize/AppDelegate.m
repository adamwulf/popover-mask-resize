//
//  AppDelegate.m
//  popover-mask-resize
//
//  Created by Adam Wulf on 5/16/16.
//  Copyright © 2016 Milestone Made. All rights reserved.
//

#import "AppDelegate.h"
#import "PopoverContentViewController.h"

@interface AppDelegate ()<NSPopoverDelegate>

@property (weak) IBOutlet NSWindow *window;
@property (strong) NSPopover *popover;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(IBAction) showPopover:(id)sender{
    if([self popover]){
        [[self popover] close];
        [self setPopover:nil];
    }else{
        PopoverContentViewController* contentViewController = [[PopoverContentViewController alloc] init];
        
        [self setPopover:[[NSPopover alloc] init]];
        [[self popover] setContentViewController:contentViewController];
        [[self popover] setDelegate:self];
        [[self popover] showRelativeToRect:[sender bounds] ofView:sender preferredEdge:NSMaxYEdge];
    }

}

@end
