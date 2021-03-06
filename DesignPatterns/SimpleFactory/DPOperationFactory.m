//
//  DPOperationFactory.m
//  DesignPatterns
//
//  Created by leichunfeng on 14-10-19.
//  Copyright (c) 2014年 zdnst. All rights reserved.
//

#import "DPOperationFactory.h"
#import "DPOperationAdd.h"
#import "DPOperationSub.h"
#import "DPOperationMul.h"
#import "DPOperationDiv.h"

@implementation DPOperationFactory

+ (id <DPOperation>)createOperation:(DPOperationType)operationType {
    switch (operationType) {
        case DPOperationTypeAdd:
            return [DPOperationAdd new];
        case DPOperationTypeSub:
            return [DPOperationSub new];
        case DPOperationTypeMul:
            return [DPOperationMul new];
        case DPOperationTypeDiv:
            return [DPOperationDiv new];
        default:
            @throw [NSException exceptionWithName:NSInvalidArgumentException
                                           reason:[NSString stringWithFormat:@"The given operationType `%lu` does not correspond to any known DPOperationType.", operationType]
                                         userInfo:nil];
    }
}

@end
