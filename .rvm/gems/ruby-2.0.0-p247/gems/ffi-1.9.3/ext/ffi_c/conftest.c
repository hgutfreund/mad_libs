#include "ruby.h"

/*top*/
extern int t(void);
int t(void) { void ((*volatile p)()); p = (void ((*)()))rb_thread_blocking_region; return 0; }
int main(int argc, char **argv)
{
  if (argc > 1000000) {
    printf("%p", &t);
  }

  return 0;
}
