//
//  Person.m
//  KVCTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name = _name;
@synthesize age = _age;

-(void)dealloc
{
    // 移除监听者
    [self removeObserver:self forKeyPath:@"name"];
    [self removeObserver:self forKeyPath:@"age"];
    [super dealloc];
}



-(id)initWithName:(NSString *)newName Age:(int)newAge
{
    if (self = [super init]) {
        _name = [newName retain];
        _age = newAge;
        // 添加监听者
        [self addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"context是干啥的"];
        [self  addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionOld context:nil];
                
    }
    return self;
}

// 实现监听方法，该方法在值被修改后自动调用。
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"keypath = %@,object = %@,change  = %@,context = %@",keyPath,object,change,context);
}

-(NSString*)description
{
    return [NSString stringWithFormat:@"name:%@,age:%d",self.name,self.age];
    
}

@end
