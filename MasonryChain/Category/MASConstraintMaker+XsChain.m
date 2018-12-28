/**
 * MASConstraintMaker Chaining Support
 * Created by Gustin Lau on 2018/12/28.
 * Copyright (c) 2018 GustinLau. All rights reserved.
 */

#import "MASConstraintMaker+XsChain.h"

typedef NS_ENUM(NSInteger, XSConstrainEqualType) {
    XSConstrainLessThanOrEqual,
    XSConstrainEqual,
    XSConstrainGreaterThanOrEqual
};

@implementation MASConstraintMaker (XsChain)

#pragma mark - EqualTo

// region EqualTo

- (ConstraintValueWithOffset)xs_leftEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self left:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_topEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self top:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_rightEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self right:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_bottomEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self bottom:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_leadingEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self leading:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_trailingEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self trailing:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_baselineEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self trailing:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_centerXEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self centerX:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValueWithOffset)xs_centerYEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self centerY:value offset:offset type:XSConstrainEqual];
    };
}

- (ConstraintValue)xs_centerEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self center:value type:XSConstrainEqual];
    };
}

- (ConstraintValue)xs_sizeEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self size:value type:XSConstrainEqual];
    };
}

- (ConstraintValue)xs_edgesEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return  [self edges:value type:XSConstrainEqual];
    };
}

- (ConstraintValue)xs_widthEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self width:value type:XSConstrainEqual];
    };
}

- (ConstraintValue)xs_heightEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self height:value type:XSConstrainEqual];
    };
}

// endregion

#pragma mark - GreaterThanOrEqualTo

// region GreaterThanOrEqualTo

- (ConstraintValueWithOffset)xs_leftGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self left:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_topGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self top:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_rightGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self right:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_bottomGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self bottom:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_leadingGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self leading:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_trailingGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self trailing:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_baselineGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self baseline:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_centerXGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self centerX:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_centerYGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self centerY:value offset:offset type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValue)xs_centerGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self center:value type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValue)xs_sizeGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self size:value type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValue)xs_edgesGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self edges:value type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValue)xs_widthGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self width:value type:XSConstrainGreaterThanOrEqual];
    };
}

- (ConstraintValue)xs_heightGreaterThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self height:value type:XSConstrainGreaterThanOrEqual];
    };
}

// endregion

#pragma mark - LessThanOrEqualTo

// region LessThanOrEqualTo

- (ConstraintValueWithOffset)xs_leftLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self left:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_topLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self top:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_rightLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self right:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_bottomLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self bottom:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_leadingLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self leading:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_trailingLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self trailing:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_baselineLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self baseline:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_centerXLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self centerX:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValueWithOffset)xs_centerYLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value, CGFloat offset) {
        return [self centerY:value offset:offset type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValue)xs_centerLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self center:value type:XSConstrainLessThanOrEqual];
    };
}

- (ConstraintValue)xs_sizeLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self size:value type:XSConstrainLessThanOrEqual];;
    };
}

- (ConstraintValue)xs_edgesLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self edges:value type:XSConstrainLessThanOrEqual];;
    };
}

- (ConstraintValue)xs_widthLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self width:value type:XSConstrainLessThanOrEqual];;
    };
}

- (ConstraintValue)xs_heightLessThanOrEqualTo; {
    return ^MASConstraintMaker *(id value) {
        return [self height:value type:XSConstrainLessThanOrEqual];;
    };
}

// endregion

#pragma mark - PrivateMethods

// region PrivateMethods

- (MASConstraintMaker *)left:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.left.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.left.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.left.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)top:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.top.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.top.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.top.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)right:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.right.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.right.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.right.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)bottom:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.bottom.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.bottom.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.bottom.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)leading:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.leading.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.leading.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.leading.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)trailing:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.trailing.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.trailing.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.trailing.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)baseline:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.baseline.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.baseline.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.baseline.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)centerX:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.centerX.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.centerX.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.centerX.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)centerY:(id)value offset:(CGFloat)offset type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.centerY.mas_lessThanOrEqualTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainEqual: {
            self.centerY.mas_equalTo(value).mas_offset(offset);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.centerY.mas_greaterThanOrEqualTo(value).mas_offset(offset);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)center:(id)value type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.center.mas_lessThanOrEqualTo(value);
            break;
        }
        case XSConstrainEqual: {
            self.center.mas_equalTo(value);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.center.mas_greaterThanOrEqualTo(value);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)size:(id)value type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.size.mas_lessThanOrEqualTo(value);
            break;
        }
        case XSConstrainEqual: {
            self.size.mas_equalTo(value);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.size.mas_greaterThanOrEqualTo(value);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)edges:(id)value type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.edges.mas_lessThanOrEqualTo(value);
            break;
        }
        case XSConstrainEqual: {
            self.edges.mas_equalTo(value);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.edges.mas_greaterThanOrEqualTo(value);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)width:(id)value type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.width.mas_lessThanOrEqualTo(value);
            break;
        }
        case XSConstrainEqual: {
            self.width.mas_equalTo(value);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.width.mas_greaterThanOrEqualTo(value);
            break;
        }
    }
    return self;
}

- (MASConstraintMaker *)height:(id)value type:(XSConstrainEqualType)type; {
    switch (type) {
        case XSConstrainLessThanOrEqual: {
            self.height.mas_lessThanOrEqualTo(value);
            break;
        }
        case XSConstrainEqual: {
            self.height.mas_equalTo(value);
            break;
        }
        case XSConstrainGreaterThanOrEqual: {
            self.height.mas_greaterThanOrEqualTo(value);
            break;
        }
    }
    return self;
}

// endregion

@end