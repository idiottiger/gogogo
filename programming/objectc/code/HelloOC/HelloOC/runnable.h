//
//  runnable.h
//  HelloOC
//
//  Created by fchan on 2018/10/12.
//  Copyright © 2018 fchan. All rights reserved.
//

#ifndef runnable_h
#define runnable_h


//interface define
@protocol RunnableDelegate <NSObject>

@required
-(void)doRun;

@optional
-(void)doFail;
@end

#endif /* runnable_h */
