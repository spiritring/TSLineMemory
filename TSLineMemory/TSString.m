//
//  TSString.m
//  TSLineMemory
//
//  Created by TSEnel on 13-2-5.
//  Copyright (c) 2013年 TSEnel. All rights reserved.
//

#import "TSString.h"

@implementation TSString
- (id) init
{
    if (self = [super init]) {
        NSLog(@"Create TSString %ld", [self retainCount]);
    }
    
    return self;
}

- (void) dealloc
{
    NSLog(@"Dealloc TSString");
    [super dealloc];
}
@end
