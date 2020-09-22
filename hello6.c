void _start ()
{
  //unsigned long syscall_nr = 60;
  //long exit_status = 42;

  asm ("movq %0, %%rax\n"
       "movq %1, %%rdi\n"
       "syscall"
    : /* output parameters, we aren't outputting anything, no none */
      /* (none) */
    : /* input parameters mapped to %0 and %1, repsectively */
      "m" (60), "m" (42)
    : /* registers that we are "clobbering", unneeded since we are calling exit */
      "rax", "rdi");
}
