void _start ()
{
  long rt;
  asm ("int $0x80":"=a" (rt):"a" (4), "b" (1), "c" ("hello\n"), "d" (6):"memory");
  asm ("int $0x80":"=a" (rt):"a" (1), "b" (rt):"memory");
}
