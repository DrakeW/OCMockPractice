//
//  Tweet.m
//  OCMockPractice
//
//  Created by Junyu Wang on 4/19/16.
//  Copyright © 2016 junyuwang. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

- (id)init
{
    /* set initWithContent as the designated initializer */
    return [self initWithContent:@""];
}


- (id)initWithContent:(NSString*)content
{
    self = [super init];
    
    if (self) {
        /* You should always access the instance variables directly from within an initialization method */
        _content = content;
    }
    
    return self;
}

@end
