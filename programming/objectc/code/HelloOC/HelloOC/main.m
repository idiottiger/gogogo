//
//  main.m
//  HelloOC
//
//  Created by fchan on 2018/10/11.
//  Copyright © 2018 fchan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"

#if __LP64__
#define _LD @"ld"
#define _LU @"lu"
#else
#define _LD @"d"
#define _LU @"u"
#endif //__LP64__

//add private method
@interface Person()
-(void)printInner:(NSString*)p1 param2:(NSString*)p2;
@end

@implementation Person

//private inner var
NSString* hideName;


//constructor
-(instancetype)init:(NSString*)fName lastName:(NSString *)lName
{
    self = [super init];
    if (self) {
        self.firstName = fName;
        self.lastName = lName;
    }
    return self;
}

-(void)print:(NSString *)v1 param2:(NSString *)v2{
    [self printInner:v1 param2:v2];
}

//static method
+(void)sayHello{
    NSLog(@"say hello ----");
}

//override the super method
-(void)doLive{
    [super doLive];
    NSLog(@"DO_PERSON_LIVE");
    NSLog(@"firstname:%@ lastName:%@", self.firstName, self.lastName);
}

- (void)printInner:(NSString*)p1 param2:(NSString *)p2{
    NSLog(@"print v1:%@, v2:%@", p1, p2);
    [self doLive];
}

-(void)doRun{
    NSLog(@"do_run ....");
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //create object
        //Person *p = [[Person alloc] init];
        //Person *p = [Person new];
        Person *p = [[Person alloc] init:@"heoo" lastName:@"tom"];
       [p print:@"TOM" param2:@"CAT"];
       [p setMyGender: GENDER_FEMALE];
        NSLog(@"my gender :%i", [p myGender]);
        NSLog(@"int between %li and %li", NSIntegerMax, NSIntegerMin);
        
        
        //string method
        NSString *content = @"Hello World";
        BOOL result = [content containsString:@"W"];
        NSLog(@"result: %i",result);
        
        NSRange range = [content rangeOfString:@"x"];
        if(range.location != NSNotFound){
            NSLog(@"find string");
        }else{
            NSLog(@"NO find string");
        }
    }
    return 0;
}
