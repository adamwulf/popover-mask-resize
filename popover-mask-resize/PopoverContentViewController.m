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

@implementation PopoverContentViewController

-(NSSize) preferredContentSize{
    NSSize size = [super preferredContentSize];
    size.width = 100;
    return size;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [[self view] setWantsLayer:YES];
    [[[self view] layer] setBackgroundColor:[[NSColor redColor] CGColor]];
    
    [self setHeightConstraint:[NSLayoutConstraint constraintWithItem:[self view] attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100]];
    [[self view] addConstraint:[self heightConstraint]];
}


-(IBAction) resizePopover:(id)sender{
    if([[self heightConstraint] constant] == 100){
        [[[self heightConstraint] animator] setConstant:400];
    }else{
        [[[self heightConstraint] animator] setConstant:100];
    }
}

@end
