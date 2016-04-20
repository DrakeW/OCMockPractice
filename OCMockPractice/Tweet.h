//
//  Tweet.h
//  OCMockPractice
//
//  Created by Junyu Wang on 4/19/16.
//  Copyright © 2016 junyuwang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property(retain, strong) NSString *content;

- (id)initWithContent:(NSString*)cotent;

@end
