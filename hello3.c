static inline long
syscall1 (long syscall, long a1)
{
  long rt;
  asm ("int $0x80":"=a" (rt):"a" (syscall), "b" (a1):"memory");
  return rt;
}

static inline long
syscall3 (long syscall, long a1, long a2, long a3)
{
  long rt;
  asm ("int $0x80":"=a" (rt):"a" (syscall), "b" (a1), "c" (a2), "d" (a3):"memory");
  return rt;
}

//int
//write (int fd, const void *buf, int count)
//{
//  return syscall3 (4, fd, (long) buf, count);
//}

int
main ()
{
  //int rtval = write (1, "Hello\n", 12);
  //return 0;
  return syscall3 (4, 1, (long) "hello3\n", 7);
  //char h[]="hello3\n";
  //return syscall3 (4, 1, (long) "hello3\n", sizeof(h));
}

void
_start ()
{
  syscall1 (1, main ());
}
