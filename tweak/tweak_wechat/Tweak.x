
#define XLDefaults [NSUserDefaults standardUserDefaults]
#define XLAutoSwitchKey @"XLAutoSwitchKey"
#define XLFile(path) @"/Library/PreferenceLoader/Preferences/XLWeChat/" #path

#import "FindFriendEntryViewController.h"

%hook FindFriendEntryViewController

// 一共有多少组 %orig代表调用原始方法，参数可以传也可以不传
- (long long)numberOfSectionsInTableView:(id)arg1 {
    // 返回原始个数 + 1
    return %orig + 1;
}

// 每组有多少行
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2 {
    [self numberOfSectionsInTableView:arg1];
    // 不是最后一组，返回原始行数
    if (arg2 != [self numberOfSectionsInTableView:arg1] - 1) {
        return %orig;
    }
    // 最后一组，返回2行
    return 2;
}

// 设置行高
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2 {
    // 不是最后一组，返回原始高度
    if ([arg2 section] != [self numberOfSectionsInTableView:arg1] - 1) {
        return %orig;
    }
    // 最后一组，返回自定义高度
    return 56;
}

// 每一行的cell
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2 {
    // 不是最后一组，返回原始cell
    if ([arg2 section] != [self numberOfSectionsInTableView:arg1] - 1) {
        return %orig;
    }
    
    // 自定义cell
    UITableViewCell *cell = nil;
    NSString* cellId = [arg2 row] == 0 ? @"xl_cellID_Auto" : @"xl_cellID_Auto";
    cell = [arg1 dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.backgroundColor = [UIColor whiteColor];
        // 图片
        cell.imageView.image = [UIImage imageWithContentsOfFile:XLFile(Alien.png)];
    }
    
    if ([arg2 row] == 0) {
        cell.textLabel.text = @"自动抢红包";
        //开关
        UISwitch *switchView = [[UISwitch alloc] init];
        switchView.on = [XLDefaults boolForKey:XLAutoSwitchKey];
        [switchView addTarget:self action:@selector(autoChange:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = switchView;
    }
    
    if ([arg2 row] == 1) {
        cell.textLabel.text = @"退出微信";
    }
    
    return cell;
}

// 点击监听
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2 {
    // 不是最后一组，实现原始点击方法
    if ([arg2 section] != [self numberOfSectionsInTableView:arg1] - 1) {
        return %orig;
    }
    
    // 取消选中
    [arg1 deselectRowAtIndexPath:arg2 animated:YES];
    
    // 退出程序
    if ([arg2 row] == 1) {
        abort();
    }
}

// 开关方法，新增方法需要添加%new，并且添加前缀，避免重复
%new
- (void)xl_autoChange:(UISwitch *)switchView {
    [XLDefaults setBool:switchView.isOn forKey:XLAutoSwitchKey];
    [XLDefaults synchronize];
}

%end
