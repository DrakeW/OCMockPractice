//
//  OCMockTests.m
//  OCMockPractice
//
//  Created by Junyu Wang on 4/19/16.
//  Copyright © 2016 junyuwang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "Controller.h"

@interface OCMockTests : XCTestCase

@end

@implementation OCMockTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}


#pragma mark - my own tests

- (void)testDisplayTweetsRetrievedFromConnection
{
    Controller *controller = [[Controller alloc] init];
    
    id mockConnection = OCMClassMock([TwitterConnection class]);
    controller.connection = mockConnection;
    
    Tweet *testTweet = [[Tweet alloc] initWithContent:@"what"];
    Tweet *testTweet2 = [[Tweet alloc] initWithContent:@"the"];
    
    NSArray *tweetArray = [NSArray arrayWithObjects:testTweet, testTweet2, nil];
    OCMStub([mockConnection fetchTweets]).andReturn(tweetArray);
    
    [controller updateTweetView];
    
    id mockView = OCMClassMock([TwitterView class]);
    controller.view = mockView;
    
    [controller updateTweetView];
    
    OCMVerify([mockView addTweet:testTweet]);
    OCMVerify([mockView addTweet:testTweet2]);
}

@end
