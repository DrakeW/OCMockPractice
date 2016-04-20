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

@interface Controller : NSObject

@property(retain) TwitterConnection *connection;
@property(retain) TwitterView *view;

- (void)updateTweetView;

@end
