//
//  main.m
//  TestCL
//
//  Created by mxl on 2022/7/28.
//

#import <UIKit/UIKit.h>
#import <mach-o/fat.h>
#import <mach-o/loader.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // 今日头条可执行文件地址
        NSString *path = @"/var/containers/Bundle/Application/CCB2D157-22E3-49EB-9914-582673D42676/News.app/News";
        NSFileHandle* handle = [NSFileHandle fileHandleForReadingAtPath:path];
        
        int length = sizeof(uint32_t);
        // 读取前面的4个字节（用于标识文件类型）
        NSData *magicData = [handle readDataOfLength:length];
        
        // 把magicData里4个字节的数据存放到magicNumber中
        uint32_t magicNumber;
        [magicData getBytes:&magicNumber length:length];
        
        // 判断文件类型（判断两个条件是为了兼容大小端）
        if (magicNumber == FAT_MAGIC || magicNumber == FAT_CIGAM) {
            printf("FAT文件\n");
        } else if (magicNumber == MH_MAGIC || magicNumber == MH_CIGAM) {
            printf("非64bit架构文件\n");
        } else if (magicNumber == MH_MAGIC_64 || magicNumber == MH_CIGAM_64) {
            printf("64bit架构文件\n");
        }else {
            printf("读取失败\n");
        }
        printf("magicNumber = 0x%x\n", magicNumber);
        [handle closeFile];
    }
    return 0;
}
