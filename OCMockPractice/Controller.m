//
//  Controller.m
//  OCMockPractice
//
//  Created by Junyu Wang on 4/19/16.
//  Copyright © 2016 junyuwang. All rights reserved.
//

#import "Controller.h"

@implementation Controller {
    /* this instance variable cannot be accessed outside of this class */
    NSString *_someSecretString;
}

@synthesize connection;
@synthesize view;

- (void)updateTweetView
{
    NSArray *tweets = [connection fetchTweets];
    if (tweets != NULL) {
        /* display tweets */
        for (Tweet *t in tweets) {
            [view addTweet:t];
        }
    }else {
        /* handle error cases */
        _someSecretString = @"what the hack";
        _secretString2 = @"yolo";
    }
}

@end
