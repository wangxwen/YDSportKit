//
//  MSError.h
//  SportsInternational
//
//  Created by 张旻可 on 15/8/28.
//  Copyright (c) 2015年 yuedong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSHttpError) {
    MSHttpErrorSuccess = 0,
    MSHttpErrorParamWrong = 1, //(参数错误)
    MSHttpErrorTokenTimeout = 4004,
    MSHttpErrorCanceled = 9090,
    MSHttpErrorServerError = 9898,
    MSHttpErrorNet = 9899,
    MShttpErrorElse = 9999,
    MSHttpErrorRequestTimeout = 408
    
};

typedef NS_ENUM(NSInteger, MSErrorCode) {
    MSErrorCodeSuccess = 0,
    MSErrorCodeParamWrong = 1, //(参数错误)
    MSErrorCodeTokenTimeout = 4004,
    MSErrorCodeCanceled = 9090,
    MSErrorCodeServerError = 9898,
    MSErrorCodeNet = 9899,
    MSErrorCodeElse = 9999
    
};

@interface MSError : NSError

@property (nonatomic) MSHttpError httpError;
@property (nonatomic) NSInteger httpStatus;
@property (nonatomic, strong) NSString *msg;
@property (nonatomic, strong) id data;
@property (nonatomic, assign) BOOL isNtfError;
@property (nonatomic, assign) NSInteger outCode;

+ (instancetype)errorWithError: (NSError *)error;

@end
