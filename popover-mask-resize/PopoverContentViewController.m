//
//  PopoverContentViewController.m
//  popover-mask-resize
//
//  Created by Adam Wulf on 5/16/16.
//  Copyright © 2016 Milestone Made. All rights reserved.
//

#import "PopoverContentViewController.h"

@interface PopoverContentViewController ()

@property (nonatomic, strong) NSLayoutConstraint* heightConstraint;

@end

@implementation PopoverContentViewController{
    CGFloat targetHeight;
}

-(NSSize) preferredContentSize{
    NSSize size = [super preferredContentSize];
    size.width = 200;
    size.height = targetHeight;
    return size;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    targetHeight = 100;
    
    [[self view] setWantsLayer:YES];
    [[[self view] layer] setBackgroundColor:[[NSColor redColor] CGColor]];
}


-(IBAction) resizePopover:(id)sender{
    [NSAnimationContext runAnimationGroup:^(NSAnimationContext * _Nonnull context) {
        [context setAllowsImplicitAnimation:YES];
        if(targetHeight == 100){
            targetHeight = 600;
        }else{
            targetHeight = 100;
        }
        [[self popover] setContentSize:[self preferredContentSize]];
    } completionHandler:nil];
}

@end
