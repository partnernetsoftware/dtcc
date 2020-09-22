//x64 only
static inline long syscall1(long syscall, long arg1) {
	long ret;
	asm volatile ("int $0x80" : "=a" (ret) : "a" (syscall), "b" (arg1):"memory");
	return ret;
}
static inline long syscall3(long syscall, long arg1, long arg2, long arg3) {
	long ret;
	asm volatile ("int $0x80" : "=a" (ret) : "a" (syscall), "b"(arg1), "c"(arg2), "d" (arg3) : "memory");
	return ret;
}
int write(int fd, const void *buf, int count) {
	return syscall3(4, fd, (long)buf, count);
}
int main(){
	int retval = write(1, "Hello world\n", 12);
	return 0;
}
//void _start() { main(); syscall1(1,0); }
