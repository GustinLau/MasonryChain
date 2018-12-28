/**
 * MASConstraintMaker Chaining Support
 * Created by Gustin Lau on 2018/12/28.
 * Copyright (c) 2018 GustinLau. All rights reserved.
 */

#import <Foundation/Foundation.h>
#import "MASConstraintMaker.h"

#define DEF_VAL(args) ((#args[0]) ? args : 0)
/** EqualTo */
#define xs_leftEqualTo(value, ...)                              xs_leftEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_topEqualTo(value, ...)                               xs_topEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_rightEqualTo(value, ...)                             xs_rightEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_bottomEqualTo(value, ...)                            xs_bottomEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_leadingEqualTo(value, ...)                           xs_leadingEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_trailingEqualTo(value, ...)                          xs_trailingEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_baselineEqualTo(value, ...)                          xs_baselineEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerXEqualTo(value, ...)                           xs_centerXEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerYEqualTo(value, ...)                           xs_centerYEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerEqualTo(...)                                   xs_centerEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_sizeEqualTo(...)                                     xs_sizeEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_edgesEqualTo(...)                                    xs_edgesEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_widthEqualTo(...)                                    xs_widthEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_heightEqualTo(...)                                   xs_heightEqualTo(MASBoxValue((__VA_ARGS__)))
/** GreaterThanOrEqualTo */
#define xs_leftGreaterThanOrEqualTo(value, ...)                 xs_leftGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_topGreaterThanOrEqualTo(value, ...)                  xs_topGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_rightGreaterThanOrEqualTo(value, ...)                xs_rightGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_bottomGreaterThanOrEqualTo(value, ...)               xs_bottomGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_leadingGreaterThanOrEqualTo(value, ...)              xs_leadingGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_trailingGreaterThanOrEqualTo(value, ...)             xs_trailingGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_baselineGreaterThanOrEqualTo(value, ...)             xs_baselineGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerXGreaterThanOrEqualTo(value, ...)              xs_centerXGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerYGreaterThanOrEqualTo(value, ...)              xs_centerYGreaterThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerGreaterThanOrEqualTo(...)                      xs_centerGreaterThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_sizeGreaterThanOrEqualTo(...)                        xs_sizeGreaterThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_edgesGreaterThanOrEqualTo(...)                       xs_edgesGreaterThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_widthGreaterThanOrEqualTo(...)                       xs_widthGreaterThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_heightGreaterThanOrEqualTo(...)                      xs_heightGreaterThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
/** LessThanOrEqualTo */
#define xs_leftLessThanOrEqualTo(value, ...)                    xs_leftLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_topLessThanOrEqualTo(value, ...)                     xs_topLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_rightLessThanOrEqualTo(value, ...)                   xs_rightLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_bottomLessThanOrEqualTo(value, ...)                  xs_bottomLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_leadingLessThanOrEqualTo(value, ...)                 xs_leadingLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_trailingLessThanOrEqualTo(value, ...)                xs_trailingLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_baselineLessThanOrEqualTo(value, ...)                xs_baselineLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerXLessThanOrEqualTo(value, ...)                 xs_centerXLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerYLessThanOrEqualTo(value, ...)                 xs_centerYLessThanOrEqualTo(MASBoxValue((value)),DEF_VAL(__VA_ARGS__))
#define xs_centerLessThanOrEqualTo(...)                         xs_centerLessThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_sizeLessThanOrEqualTo(...)                           xs_sizeLessThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_edgesLessThanOrEqualTo(...)                          xs_edgesLessThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_widthLessThanOrEqualTo(...)                          xs_widthLessThanOrEqualTo(MASBoxValue((__VA_ARGS__)))
#define xs_heightLessThanOrEqualTo(...)                         xs_heightLessThanOrEqualTo(MASBoxValue((__VA_ARGS__)))

typedef MASConstraintMaker *(^ConstraintValueWithOffset)(id value, CGFloat offset);
typedef MASConstraintMaker *(^ConstraintValue)(id value);

@interface MASConstraintMaker (XsChain)

#pragma mark - EqualTo

- (ConstraintValueWithOffset)xs_leftEqualTo;

- (ConstraintValueWithOffset)xs_topEqualTo;

- (ConstraintValueWithOffset)xs_rightEqualTo;

- (ConstraintValueWithOffset)xs_bottomEqualTo;

- (ConstraintValueWithOffset)xs_leadingEqualTo;

- (ConstraintValueWithOffset)xs_trailingEqualTo;

- (ConstraintValueWithOffset)xs_baselineEqualTo;

- (ConstraintValueWithOffset)xs_centerXEqualTo;

- (ConstraintValueWithOffset)xs_centerYEqualTo;

- (ConstraintValue)xs_centerEqualTo;

- (ConstraintValue)xs_sizeEqualTo;

- (ConstraintValue)xs_edgesEqualTo;

- (ConstraintValue)xs_widthEqualTo;

- (ConstraintValue)xs_heightEqualTo;


#pragma mark - GreaterThanOrEqualTo

- (ConstraintValueWithOffset)xs_leftGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_topGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_rightGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_bottomGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_leadingGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_trailingGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_baselineGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_centerXGreaterThanOrEqualTo;

- (ConstraintValueWithOffset)xs_centerYGreaterThanOrEqualTo;

- (ConstraintValue)xs_centerGreaterThanOrEqualTo;

- (ConstraintValue)xs_sizeGreaterThanOrEqualTo;

- (ConstraintValue)xs_edgesGreaterThanOrEqualTo;

- (ConstraintValue)xs_widthGreaterThanOrEqualTo;

- (ConstraintValue)xs_heightGreaterThanOrEqualTo;


#pragma mark - LessThanOrEqualTo

- (ConstraintValueWithOffset)xs_leftLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_topLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_rightLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_bottomLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_leadingLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_trailingLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_baselineLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_centerXLessThanOrEqualTo;

- (ConstraintValueWithOffset)xs_centerYLessThanOrEqualTo;

- (ConstraintValue)xs_centerLessThanOrEqualTo;

- (ConstraintValue)xs_sizeLessThanOrEqualTo;

- (ConstraintValue)xs_edgesLessThanOrEqualTo;

- (ConstraintValue)xs_widthLessThanOrEqualTo;

- (ConstraintValue)xs_heightLessThanOrEqualTo;

@end