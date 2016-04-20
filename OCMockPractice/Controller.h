//
//  Controller.h
//  OCMockPractice
//
//  Created by Junyu Wang on 4/19/16.
//  Copyright © 2016 junyuwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TwitterConnection.h"
#import "TwitterView.h"

@interface Controller : NSObject {
    /* this instance variable cannot be accessed outside of this class */
    NSString *_secretString2;
}

@property(strong) TwitterConnection *connection;
@property(strong) TwitterView *view;

- (void)updateTweetView;

@end
