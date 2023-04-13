#include <stdio.h>

#define NAME "yejin"

#ifndef LAST_NAME
#define LAST_NAME "yang"
#endif

// 주석은 제거된다~
int main()
{
  printf("Hello %s %s\n", NAME, LAST_NAME);
  printf("Current time: %s\n", __TIME__);
}
