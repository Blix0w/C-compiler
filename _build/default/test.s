	.data
	.text
test:
	li	$t0, 10000
	sw	$t0,0($sp)
	lw	$a0,0($sp)
	li	$v0, 1
	syscall
	li	$a0, 10
	li	$v0, 11
	syscall
main:
	li	$t0, 3
	sw	$t0,-8($sp)
	li	$t0, 1
	sw	$t0,-12($sp)
	lw	$t0,-8($sp)
	lw	$t1,-12($sp)
	add	$t0,$t0,$t1
	sw	$t0,-4($sp)
	li	$t0, 9
	sw	$t0,-8($sp)
	lw	$t0,-4($sp)
	lw	$t1,-8($sp)
	mul	$t0,$t0,$t1
	sw	$t0,0($sp)
	lw	$a0,0($sp)
	li	$v0, 1
	syscall
	li	$a0, 10
	li	$v0, 11
	syscall
end:
	li	$v0, 10
	syscall
