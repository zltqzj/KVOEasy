//
//  main.m
//  KVCTest
//
//  Created by Sinosoft on 9/12/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       
        /*  kvo 
        Person* p1  = [[Person alloc] initWithName:@"zhaojian" Age:22];
        p1.name = @"liruiqing";
        p1.age = 22;
        
        NSLog(@"description:%@",p1.description);
         */
        
        
        
        /*
        // 归档，反归档
        NSMutableString * str1 = [[NSMutableString alloc] initWithFormat:@"str1"];
        NSMutableString * str2 = [[NSMutableString alloc] initWithFormat:@"str2"];
        NSMutableString * str3 = [[NSMutableString alloc] initWithFormat:@"str3"];
        
        
        NSMutableArray * arr1 = [[NSMutableArray alloc] initWithObjects:str1,str2,str3, nil];
        
        [str1 release];
        [str2 release];
        
        [str3 release];
        
        // 序列化
        NSData* data = [NSKeyedArchiver archivedDataWithRootObject:arr1];
        // 反序列化
        NSArray* arr2 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        NSLog(@"arr1 = %ld,%@,%p",arr1.retainCount,arr1,arr1);
        NSLog(@"arr2 = %ld,%@,%p",arr2.retainCount,arr2,arr2);
        
        
        
//         2013-09-12 11:31:47.187 KVCTest[6711:303] arr1 = 1,(
//         str1,
//         str2,
//         str3
//         ),0x10010ab80
//         2013-09-12 11:31:47.190 KVCTest[6711:303] arr2 = 1,(
//         str1,
//         str2,
//         str3
//         ),0x10010e180
        
        
        
        */
        
        Person* p1 = [[Person alloc] initWithName:@"zhaojian" Age:20];
        Person* p2 = [[Person alloc] initWithName:@"liruiqing" Age:21];
        NSDictionary* dict1 = [[NSDictionary alloc] initWithObjectsAndKeys:p1,@"p1",p2,@"p2", nil];
        NSDictionary* dict2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"123",@"abc",@"456",@"def", nil];
        [p1 release];
        [p2 release];
        NSDictionary* dict = [[NSDictionary alloc] initWithObjectsAndKeys:dict1,@"dict1",dict2,@"dict2", nil];
        [dict1 release];
        [dict2 release];
        
        NSLog(@"字典：dict:%@",dict);
        
        Person* per = [[dict objectForKey:@"dict1"] objectForKey:@"p1"];
        NSLog(@"per = %@",per);
        
        per  = [dict valueForKeyPath:@"dict1.p1"];
        NSLog(@"键路径方法per = %@",per);
        
    }
    return 0;
}

