//
//  OverlayWindow.m
//  bigtime
//
//  Created by Karlin Fox on 4/21/13.
//  Copyright (c) 2013 Karlin Fox. All rights reserved.
//

#import "OverlayWindow.h"

@implementation OverlayWindow
// We override this initializer so we can set the NSBorderlessWindowMask styleMask, and set a few other important settings
- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)aStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)flag
{
    self = [super initWithContentRect:contentRect styleMask:NSBorderlessWindowMask backing:bufferingType defer:flag];
    
    if ( self ) {
        [self setOpaque:NO]; // Needed so we can see through it when we have clear stuff on top
        [self setHasShadow:YES];
        NSColor *fillColor = [NSColor colorWithCalibratedWhite:0.8f alpha:0.8f];
        [self setBackgroundColor:fillColor];
        [self setLevel:NSFloatingWindowLevel]; // Let's make it sit on top of everything else
//        [self setAlphaValue:0.2]; // It'll start out mostly transparent
    }
    
    contentRect.origin.x=100;
    contentRect.origin.y=100;
    
    return self;
}
@end
