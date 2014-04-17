//
//  ABCToDoItem.h
//  ToDoListOne
//
//  Created by skewrain on 13-12-9.
//  Copyright (c) 2013年 skewrain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABCToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property(readonly) NSDate *creationDate;

@end
