//
//  Person.h
//  KVCTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString* _name;
    int _age;
    
}
@property(nonatomic,retain)NSString* name;
@property(nonatomic,assign)int age;

-(id)initWithName:(NSString*)newName Age:(int)newAge;

@end
