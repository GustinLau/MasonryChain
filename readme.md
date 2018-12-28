# Masonry Chain

对[`Masonry`](https://github.com/SnapKit/Masonry)的`MASConstraintMaker`进行扩展，让它支持另外一种风格(不用写那么多`make`)的链式操作

只对常用的方法进行封装，满足日常需求，若遇到特殊情况（如设置优先级），请使用原写法

## 写法
原写法
```obj-c
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    [self.view addSubview:view2];

    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(200, 100));
        make.top.mas_equalTo(self.view).mas_offset(100);
        make.centerX.mas_equalTo(self.view);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(view1);
        make.top.mas_equalTo(view1.mas_bottom);
        make.centerX.mas_equalTo(self.view);
    }];

```
引入后写法
```obj-c

    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];

    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];

    [self.view addSubview:view1];
    [self.view addSubview:view2];

    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.xs_sizeEqualTo(CGSizeMake(200, 100))
                // 第二个参数为偏移量
                .xs_topEqualTo(self.view, 100)
                .xs_centerXEqualTo(self.view);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.xs_sizeEqualTo(view1)
                // 第二个参数为偏移量，不传默认为0
                .xs_topEqualTo(view1.mas_bottom)
                .xs_centerXEqualTo(self.view);
    }];
```

## 方法

| 方法 | 对应 |
| ------ | ------ |
| xs_leftEqualTo(value, offset?)                    |  left.mas_equalTo(value).mas_offset(offset)                   |
| xs_topEqualTo(value, offset?)                     |  top.mas_equalTo(value).mas_offset(offset)                    |
| xs_rightEqualTo(value, offset?)                   |  right.mas_equalTo(value).mas_offset(offset)                  |
| xs_bottomEqualTo(value, offset?)                  |  bottom.mas_equalTo(value).mas_offset(offset)                 |
| xs_leadingEqualTo(value, offset?)                 |  leading.mas_equalTo(value).mas_offset(offset)                |
| xs_baselineEqualTo(value, offset?)                |  baseline.mas_equalTo(value).mas_offset(offset)               |
| xs_centerXEqualTo(value, offset?)                 |  centerX.mas_equalTo(value).mas_offset(offset)                |
| xs_centerYEqualTo(value, offset?)                 |  centerY.mas_equalTo(value).mas_offset(offset)                |
| xs_centerEqualTo(value)                           |  center.mas_equalTo(value)                                    |
| xs_sizeEqualTo(value)                             |  size.mas_equalTo(value)                                      |
| xs_edgesEqualTo(value)                            |  edges.mas_equalTo(value)                                     |
| xs_widthEqualTo(value)                            |  width.mas_equalTo(value)                                     |
| xs_heightEqualTo(value)                           |  height.mas_equalTo(value)                                    |
| xs_leftGreaterThanOrEqualTo(value, offset?)       |  left.mas_greaterThanOrEqualTo(value).mas_offset(offset)      |
| xs_topGreaterThanOrEqualTo(value, offset?)        |  top.mas_greaterThanOrEqualTo(value).mas_offset(offset)       |
| xs_rightGreaterThanOrEqualTo(value, offset?)      |  right.mas_greaterThanOrEqualTo(value).mas_offset(offset)     |
| xs_bottomGreaterThanOrEqualTo(value, offset?)     |  bottom.mas_greaterThanOrEqualTo(value).mas_offset(offset)    |
| xs_leadingGreaterThanOrEqualTo(value, offset?)    |  leading.mas_greaterThanOrEqualTo(value).mas_offset(offset)   |
| xs_baselineGreaterThanOrEqualTo(value, offset?)   |  baseline.mas_greaterThanOrEqualTo(value).mas_offset(offset)  |
| xs_centerXGreaterThanOrEqualTo(value, offset?)    |  centerX.mas_greaterThanOrEqualTo(value).mas_offset(offset)   |
| xs_centerYGreaterThanOrEqualTo(value, offset?)    |  centerY.mas_greaterThanOrEqualTo(value).mas_offset(offset)   |
| xs_centerGreaterThanOrEqualTo(value)              |  center.mas_greaterThanOrEqualTo(value)                       |      
| xs_sizeGreaterThanOrEqualTo(value)                |  size.mas_greaterThanOrEqualTo(value)                         |
| xs_edgesGreaterThanOrEqualTo(value)               |  edges.mas_greaterThanOrEqualTo(value)                        |
| xs_widthGreaterThanOrEqualTo(value)               |  width.mas_greaterThanOrEqualTo(value)                        |
| xs_heightGreaterThanOrEqualTo(value)              |  height.mas_greaterThanOrEqualTo(value)                       |
| xs_leftLessThanOrEqualTo(value, offset?)          |  left.mas_LessThanOrEqualTo(value).mas_offset(offset)         |
| xs_topLessThanOrEqualTo(value, offset?)           |  top.mas_LessThanOrEqualTo(value).mas_offset(offset)          |
| xs_rightLessThanOrEqualTo(value, offset?)         |  right.mas_LessThanOrEqualTo(value).mas_offset(offset)        |
| xs_bottomLessThanOrEqualTo(value, offset?)        |  bottom.mas_LessThanOrEqualTo(value).mas_offset(offset)       |
| xs_leadingLessThanOrEqualTo(value, offset?)       |  leading.mas_LessThanOrEqualTo(value).mas_offset(offset)      |
| xs_baselineLessThanOrEqualTo(value, offset?)      |  baseline.mas_LessThanOrEqualTo(value).mas_offset(offset)     |
| xs_centerXLessThanOrEqualTo(value, offset?)       |  centerX.mas_LessThanOrEqualTo(value).mas_offset(offset)      |
| xs_centerYLessThanOrEqualTo(value, offset?)       |  centerY.mas_LessThanOrEqualTo(value).mas_offset(offset)      |
| xs_centerLessThanOrEqualTo(value)                 |  center.mas_LessThanOrEqualTo(value)                          |
| xs_sizeLessThanOrEqualTo(value)                   |  size.mas_LessThanOrEqualTo(value)                            |
| xs_edgesLessThanOrEqualTo(value)                  |  edges.mas_LessThanOrEqualTo(value)                           |
| xs_widthLessThanOrEqualTo(value)                  |  width.mas_LessThanOrEqualTo(value)                           |
| xs_heightLessThanOrEqualTo(value)                 |  height.mas_LessThanOrEqualTo(value)                          |
