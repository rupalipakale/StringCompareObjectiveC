//
//  main.m
//  RPStringCompareObjectiveC
//
//  Created by Student P_07 on 22/10/16.
//  Copyright © 2016 Rupali Pakale. All rights reserved.
//

#import <Foundation/Foundation.h>

int compare_strings(char a[], char b[]);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int flag;
        char a[1000], b[1000];
        
        printf("Input first string\n");
        gets(a);
        
        printf("Input second string\n");
        gets(b);
        
        flag = compare_strings(a, b);
        
        if (flag == 0)
            printf("Entered strings are equal.\n");
        else
            printf("Entered strings are not equal.\n");
    }
        return 0;
}
    
int compare_strings(char a[], char b[])
{
        int c = 0;
        
        while (a[c] == b[c]) {
            if (a[c] == '\0' || b[c] == '\0')
                break;
            c++;
        }
        
        if (a[c] == '\0' && b[c] == '\0')
            return 0;
        else
            return -1;
}