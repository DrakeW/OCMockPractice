//
//  Tweet.m
//  OCMockPractice
//
//  Created by Junyu Wang on 4/19/16.
//  Copyright © 2016 junyuwang. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

- (id)initWithContent:(NSString*)content
{
    self = [super init];
    
    if (self) {
        [self setContent:content];
    }
    
    return self;
}

@end
