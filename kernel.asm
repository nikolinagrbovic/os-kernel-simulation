
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	7b013103          	ld	sp,1968(sp) # 8000b7b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	129060ef          	jal	ra,80006944 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret

00000000800010f8 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    800010f8:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800010fc:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001100:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001104:	0085b103          	ld	sp,8(a1)

    80001108:	00008067          	ret

000000008000110c <_ZN5Riscv15interrupt_tableEv>:
.balign 4
.global _ZN5Riscv15interrupt_tableEv
.type _ZN5Riscv15interrupt_tableEv, @function
_ZN5Riscv15interrupt_tableEv:
 j hS
    8000110c:	0280006f          	j	80001134 <hS>
 j hT
    80001110:	1340006f          	j	80001244 <hT>
li x0,0
    80001114:	00000013          	nop
li x0,0
    80001118:	00000013          	nop
li x0,0
    8000111c:	00000013          	nop
li x0,0
    80001120:	00000013          	nop
li x0,0
    80001124:	00000013          	nop
li x0,0
    80001128:	00000013          	nop
li x0,0
    8000112c:	00000013          	nop
 j hC
    80001130:	2240006f          	j	80001354 <hC>

0000000080001134 <hS>:


hS:
addi sp, sp, -256
    80001134:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001138:	00013023          	sd	zero,0(sp)
    8000113c:	00113423          	sd	ra,8(sp)
    80001140:	00213823          	sd	sp,16(sp)
    80001144:	00313c23          	sd	gp,24(sp)
    80001148:	02413023          	sd	tp,32(sp)
    8000114c:	02513423          	sd	t0,40(sp)
    80001150:	02613823          	sd	t1,48(sp)
    80001154:	02713c23          	sd	t2,56(sp)
    80001158:	04813023          	sd	s0,64(sp)
    8000115c:	04913423          	sd	s1,72(sp)
    80001160:	04a13823          	sd	a0,80(sp)
    80001164:	04b13c23          	sd	a1,88(sp)
    80001168:	06c13023          	sd	a2,96(sp)
    8000116c:	06d13423          	sd	a3,104(sp)
    80001170:	06e13823          	sd	a4,112(sp)
    80001174:	06f13c23          	sd	a5,120(sp)
    80001178:	09013023          	sd	a6,128(sp)
    8000117c:	09113423          	sd	a7,136(sp)
    80001180:	09213823          	sd	s2,144(sp)
    80001184:	09313c23          	sd	s3,152(sp)
    80001188:	0b413023          	sd	s4,160(sp)
    8000118c:	0b513423          	sd	s5,168(sp)
    80001190:	0b613823          	sd	s6,176(sp)
    80001194:	0b713c23          	sd	s7,184(sp)
    80001198:	0d813023          	sd	s8,192(sp)
    8000119c:	0d913423          	sd	s9,200(sp)
    800011a0:	0da13823          	sd	s10,208(sp)
    800011a4:	0db13c23          	sd	s11,216(sp)
    800011a8:	0fc13023          	sd	t3,224(sp)
    800011ac:	0fd13423          	sd	t4,232(sp)
    800011b0:	0fe13823          	sd	t5,240(sp)
    800011b4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv14handleSoftwareEv
    800011b8:	72c010ef          	jal	ra,800028e4 <_ZN5Riscv14handleSoftwareEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800011bc:	00013003          	ld	zero,0(sp)
    800011c0:	00813083          	ld	ra,8(sp)
    800011c4:	01013103          	ld	sp,16(sp)
    800011c8:	01813183          	ld	gp,24(sp)
    800011cc:	02013203          	ld	tp,32(sp)
    800011d0:	02813283          	ld	t0,40(sp)
    800011d4:	03013303          	ld	t1,48(sp)
    800011d8:	03813383          	ld	t2,56(sp)
    800011dc:	04013403          	ld	s0,64(sp)
    800011e0:	04813483          	ld	s1,72(sp)
    800011e4:	05013503          	ld	a0,80(sp)
    800011e8:	05813583          	ld	a1,88(sp)
    800011ec:	06013603          	ld	a2,96(sp)
    800011f0:	06813683          	ld	a3,104(sp)
    800011f4:	07013703          	ld	a4,112(sp)
    800011f8:	07813783          	ld	a5,120(sp)
    800011fc:	08013803          	ld	a6,128(sp)
    80001200:	08813883          	ld	a7,136(sp)
    80001204:	09013903          	ld	s2,144(sp)
    80001208:	09813983          	ld	s3,152(sp)
    8000120c:	0a013a03          	ld	s4,160(sp)
    80001210:	0a813a83          	ld	s5,168(sp)
    80001214:	0b013b03          	ld	s6,176(sp)
    80001218:	0b813b83          	ld	s7,184(sp)
    8000121c:	0c013c03          	ld	s8,192(sp)
    80001220:	0c813c83          	ld	s9,200(sp)
    80001224:	0d013d03          	ld	s10,208(sp)
    80001228:	0d813d83          	ld	s11,216(sp)
    8000122c:	0e013e03          	ld	t3,224(sp)
    80001230:	0e813e83          	ld	t4,232(sp)
    80001234:	0f013f03          	ld	t5,240(sp)
    80001238:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000123c:	10010113          	addi	sp,sp,256

    sret
    80001240:	10200073          	sret

0000000080001244 <hT>:

hT:
addi sp, sp, -256
    80001244:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001248:	00013023          	sd	zero,0(sp)
    8000124c:	00113423          	sd	ra,8(sp)
    80001250:	00213823          	sd	sp,16(sp)
    80001254:	00313c23          	sd	gp,24(sp)
    80001258:	02413023          	sd	tp,32(sp)
    8000125c:	02513423          	sd	t0,40(sp)
    80001260:	02613823          	sd	t1,48(sp)
    80001264:	02713c23          	sd	t2,56(sp)
    80001268:	04813023          	sd	s0,64(sp)
    8000126c:	04913423          	sd	s1,72(sp)
    80001270:	04a13823          	sd	a0,80(sp)
    80001274:	04b13c23          	sd	a1,88(sp)
    80001278:	06c13023          	sd	a2,96(sp)
    8000127c:	06d13423          	sd	a3,104(sp)
    80001280:	06e13823          	sd	a4,112(sp)
    80001284:	06f13c23          	sd	a5,120(sp)
    80001288:	09013023          	sd	a6,128(sp)
    8000128c:	09113423          	sd	a7,136(sp)
    80001290:	09213823          	sd	s2,144(sp)
    80001294:	09313c23          	sd	s3,152(sp)
    80001298:	0b413023          	sd	s4,160(sp)
    8000129c:	0b513423          	sd	s5,168(sp)
    800012a0:	0b613823          	sd	s6,176(sp)
    800012a4:	0b713c23          	sd	s7,184(sp)
    800012a8:	0d813023          	sd	s8,192(sp)
    800012ac:	0d913423          	sd	s9,200(sp)
    800012b0:	0da13823          	sd	s10,208(sp)
    800012b4:	0db13c23          	sd	s11,216(sp)
    800012b8:	0fc13023          	sd	t3,224(sp)
    800012bc:	0fd13423          	sd	t4,232(sp)
    800012c0:	0fe13823          	sd	t5,240(sp)
    800012c4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv10handleTimeEv
    800012c8:	179010ef          	jal	ra,80002c40 <_ZN5Riscv10handleTimeEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800012cc:	00013003          	ld	zero,0(sp)
    800012d0:	00813083          	ld	ra,8(sp)
    800012d4:	01013103          	ld	sp,16(sp)
    800012d8:	01813183          	ld	gp,24(sp)
    800012dc:	02013203          	ld	tp,32(sp)
    800012e0:	02813283          	ld	t0,40(sp)
    800012e4:	03013303          	ld	t1,48(sp)
    800012e8:	03813383          	ld	t2,56(sp)
    800012ec:	04013403          	ld	s0,64(sp)
    800012f0:	04813483          	ld	s1,72(sp)
    800012f4:	05013503          	ld	a0,80(sp)
    800012f8:	05813583          	ld	a1,88(sp)
    800012fc:	06013603          	ld	a2,96(sp)
    80001300:	06813683          	ld	a3,104(sp)
    80001304:	07013703          	ld	a4,112(sp)
    80001308:	07813783          	ld	a5,120(sp)
    8000130c:	08013803          	ld	a6,128(sp)
    80001310:	08813883          	ld	a7,136(sp)
    80001314:	09013903          	ld	s2,144(sp)
    80001318:	09813983          	ld	s3,152(sp)
    8000131c:	0a013a03          	ld	s4,160(sp)
    80001320:	0a813a83          	ld	s5,168(sp)
    80001324:	0b013b03          	ld	s6,176(sp)
    80001328:	0b813b83          	ld	s7,184(sp)
    8000132c:	0c013c03          	ld	s8,192(sp)
    80001330:	0c813c83          	ld	s9,200(sp)
    80001334:	0d013d03          	ld	s10,208(sp)
    80001338:	0d813d83          	ld	s11,216(sp)
    8000133c:	0e013e03          	ld	t3,224(sp)
    80001340:	0e813e83          	ld	t4,232(sp)
    80001344:	0f013f03          	ld	t5,240(sp)
    80001348:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000134c:	10010113          	addi	sp,sp,256

    sret
    80001350:	10200073          	sret

0000000080001354 <hC>:
hC:
addi sp, sp, -256
    80001354:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001358:	00013023          	sd	zero,0(sp)
    8000135c:	00113423          	sd	ra,8(sp)
    80001360:	00213823          	sd	sp,16(sp)
    80001364:	00313c23          	sd	gp,24(sp)
    80001368:	02413023          	sd	tp,32(sp)
    8000136c:	02513423          	sd	t0,40(sp)
    80001370:	02613823          	sd	t1,48(sp)
    80001374:	02713c23          	sd	t2,56(sp)
    80001378:	04813023          	sd	s0,64(sp)
    8000137c:	04913423          	sd	s1,72(sp)
    80001380:	04a13823          	sd	a0,80(sp)
    80001384:	04b13c23          	sd	a1,88(sp)
    80001388:	06c13023          	sd	a2,96(sp)
    8000138c:	06d13423          	sd	a3,104(sp)
    80001390:	06e13823          	sd	a4,112(sp)
    80001394:	06f13c23          	sd	a5,120(sp)
    80001398:	09013023          	sd	a6,128(sp)
    8000139c:	09113423          	sd	a7,136(sp)
    800013a0:	09213823          	sd	s2,144(sp)
    800013a4:	09313c23          	sd	s3,152(sp)
    800013a8:	0b413023          	sd	s4,160(sp)
    800013ac:	0b513423          	sd	s5,168(sp)
    800013b0:	0b613823          	sd	s6,176(sp)
    800013b4:	0b713c23          	sd	s7,184(sp)
    800013b8:	0d813023          	sd	s8,192(sp)
    800013bc:	0d913423          	sd	s9,200(sp)
    800013c0:	0da13823          	sd	s10,208(sp)
    800013c4:	0db13c23          	sd	s11,216(sp)
    800013c8:	0fc13023          	sd	t3,224(sp)
    800013cc:	0fd13423          	sd	t4,232(sp)
    800013d0:	0fe13823          	sd	t5,240(sp)
    800013d4:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv13handleConsoleEv
    800013d8:	089010ef          	jal	ra,80002c60 <_ZN5Riscv13handleConsoleEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    800013dc:	00013003          	ld	zero,0(sp)
    800013e0:	00813083          	ld	ra,8(sp)
    800013e4:	01013103          	ld	sp,16(sp)
    800013e8:	01813183          	ld	gp,24(sp)
    800013ec:	02013203          	ld	tp,32(sp)
    800013f0:	02813283          	ld	t0,40(sp)
    800013f4:	03013303          	ld	t1,48(sp)
    800013f8:	03813383          	ld	t2,56(sp)
    800013fc:	04013403          	ld	s0,64(sp)
    80001400:	04813483          	ld	s1,72(sp)
    80001404:	05013503          	ld	a0,80(sp)
    80001408:	05813583          	ld	a1,88(sp)
    8000140c:	06013603          	ld	a2,96(sp)
    80001410:	06813683          	ld	a3,104(sp)
    80001414:	07013703          	ld	a4,112(sp)
    80001418:	07813783          	ld	a5,120(sp)
    8000141c:	08013803          	ld	a6,128(sp)
    80001420:	08813883          	ld	a7,136(sp)
    80001424:	09013903          	ld	s2,144(sp)
    80001428:	09813983          	ld	s3,152(sp)
    8000142c:	0a013a03          	ld	s4,160(sp)
    80001430:	0a813a83          	ld	s5,168(sp)
    80001434:	0b013b03          	ld	s6,176(sp)
    80001438:	0b813b83          	ld	s7,184(sp)
    8000143c:	0c013c03          	ld	s8,192(sp)
    80001440:	0c813c83          	ld	s9,200(sp)
    80001444:	0d013d03          	ld	s10,208(sp)
    80001448:	0d813d83          	ld	s11,216(sp)
    8000144c:	0e013e03          	ld	t3,224(sp)
    80001450:	0e813e83          	ld	t4,232(sp)
    80001454:	0f013f03          	ld	t5,240(sp)
    80001458:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000145c:	10010113          	addi	sp,sp,256

    sret
    80001460:	10200073          	sret

0000000080001464 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001464:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001468:	00b29a63          	bne	t0,a1,8000147c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000146c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001470:	fe029ae3          	bnez	t0,80001464 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001474:	00000513          	li	a0,0
    jr ra                  # Return.
    80001478:	00008067          	ret

000000008000147c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000147c:	00100513          	li	a0,1
    80001480:	00008067          	ret

0000000080001484 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include "../h/MemoryAllocator.h"
#include "../h/riscv.hpp"


void *mem_alloc(size_t size){
    80001484:	fe010113          	addi	sp,sp,-32
    80001488:	00113c23          	sd	ra,24(sp)
    8000148c:	00813823          	sd	s0,16(sp)
    80001490:	00913423          	sd	s1,8(sp)
    80001494:	02010413          	addi	s0,sp,32
    80001498:	00050493          	mv	s1,a0
    //code=0x01;

    size_t s=(size+ MemoryAllocator::getAlloc().getSize() +MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000149c:	00002097          	auipc	ra,0x2
    800014a0:	c48080e7          	jalr	-952(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    800014a4:	00002097          	auipc	ra,0x2
    800014a8:	ef0080e7          	jalr	-272(ra) # 80003394 <_ZN15MemoryAllocator7getSizeEv>
    800014ac:	00950533          	add	a0,a0,s1
    800014b0:	03f50513          	addi	a0,a0,63
    800014b4:	00655513          	srli	a0,a0,0x6


    __asm__ volatile("mv a1,%[s]"::[s]"r"(s));
    800014b8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x01");
    800014bc:	00100513          	li	a0,1

    __asm__ volatile ("ecall");
    800014c0:	00000073          	ecall
    uint64 adr;
    __asm__ volatile("mv %[rx10],a0":[rx10]"=r"(adr));
    800014c4:	00050513          	mv	a0,a0

    return (void*) adr;

}
    800014c8:	01813083          	ld	ra,24(sp)
    800014cc:	01013403          	ld	s0,16(sp)
    800014d0:	00813483          	ld	s1,8(sp)
    800014d4:	02010113          	addi	sp,sp,32
    800014d8:	00008067          	ret

00000000800014dc <_Z8mem_freePv>:

int mem_free(void *addr) {
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00813423          	sd	s0,8(sp)
    800014e4:	01010413          	addi	s0,sp,16

    void* adr=addr;

    __asm__ volatile("mv a1,%0"::"r"(adr));
    800014e8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x02");
    800014ec:	00200513          	li	a0,2
    __asm__ volatile ("ecall");
    800014f0:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    800014f4:	00050513          	mv	a0,a0
    return ret;
}
    800014f8:	0005051b          	sext.w	a0,a0
    800014fc:	00813403          	ld	s0,8(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z13thread_createPP3TCBPFvPvES2_>:



//
int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00813423          	sd	s0,8(sp)
    80001510:	01010413          	addi	s0,sp,16

    void* arguments=arg;
    void(*sr)(void*)=start_routine;
    thread_t* h=handle;

    __asm__ volatile("mv a3,%[arguments]": :[arguments]"r" ((uint64)arguments));
    80001514:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2,%[startr]": :[startr]"r" ((uint64)sr));
    80001518:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1,%[h]": :[h]"r" ((uint64)h));
    8000151c:	00050593          	mv	a1,a0

    __asm__ volatile("li a0,0x11");
    80001520:	01100513          	li	a0,17

    __asm__ volatile("ecall");
    80001524:	00000073          	ecall
    int ret;
    __asm__ volatile("mv %[ret], a0" : [ret]"=r" (ret));
    80001528:	00050513          	mv	a0,a0
    return ret;
}
    8000152c:	0005051b          	sext.w	a0,a0
    80001530:	00813403          	ld	s0,8(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_Z11thread_exitv>:

int thread_exit() {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x12");
    80001548:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    8000154c:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    80001550:	00050513          	mv	a0,a0
    return ret;
}
    80001554:	0005051b          	sext.w	a0,a0
    80001558:	00813403          	ld	s0,8(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00813423          	sd	s0,8(sp)
    8000156c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x13");
    80001570:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001574:	00000073          	ecall

}
    80001578:	00813403          	ld	s0,8(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16

    thread_t t=handle;
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    80001590:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x14");
    80001594:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    80001598:	00000073          	ecall


}
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z8sem_openPP4_semj>:

int sem_open(sem_t *handle, unsigned int init) {
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813423          	sd	s0,8(sp)
    800015b0:	01010413          	addi	s0,sp,16
    unsigned int i = init;
    sem_t *h = handle;

    __asm__ volatile ("mv a2, %0" : : "r"((uint64)h));
    800015b4:	00050613          	mv	a2,a0
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)i));
    800015b8:	02059593          	slli	a1,a1,0x20
    800015bc:	0205d593          	srli	a1,a1,0x20
    800015c0:	00058593          	mv	a1,a1



    __asm__ volatile("li a0, 0x21");
    800015c4:	02100513          	li	a0,33

    __asm__ volatile ("ecall");
    800015c8:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0, a0":"=r"(ret));
    800015cc:	00050513          	mv	a0,a0
    return ret;

}
    800015d0:	0005051b          	sext.w	a0,a0
    800015d4:	00813403          	ld	s0,8(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret

00000000800015e0 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00813423          	sd	s0,8(sp)
    800015e8:	01010413          	addi	s0,sp,16

    sem_t t=handle;

    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    800015ec:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x22");
    800015f0:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    800015f4:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    800015f8:	00050513          	mv	a0,a0
    return ret;
    return -1;
}
    800015fc:	0005051b          	sext.w	a0,a0
    80001600:	00813403          	ld	s0,8(sp)
    80001604:	01010113          	addi	sp,sp,16
    80001608:	00008067          	ret

000000008000160c <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00813423          	sd	s0,8(sp)
    80001614:	01010413          	addi	s0,sp,16

    sem_t t=id;
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    80001618:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x23");
    8000161c:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    80001620:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    80001624:	00050513          	mv	a0,a0
    return ret;

}
    80001628:	0005051b          	sext.w	a0,a0
    8000162c:	00813403          	ld	s0,8(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret

0000000080001638 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001638:	ff010113          	addi	sp,sp,-16
    8000163c:	00813423          	sd	s0,8(sp)
    80001640:	01010413          	addi	s0,sp,16

    sem_t t=id;
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    80001644:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x24");
    80001648:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    8000164c:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    80001650:	00050513          	mv	a0,a0
    return ret;

}
    80001654:	0005051b          	sext.w	a0,a0
    80001658:	00813403          	ld	s0,8(sp)
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00008067          	ret

0000000080001664 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001664:	ff010113          	addi	sp,sp,-16
    80001668:	00813423          	sd	s0,8(sp)
    8000166c:	01010413          	addi	s0,sp,16
    time_t t=time;
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    80001670:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x31");
    80001674:	03100513          	li	a0,49
    __asm__ volatile ("ecall");
    80001678:	00000073          	ecall
    return 0;
}
    8000167c:	00000513          	li	a0,0
    80001680:	00813403          	ld	s0,8(sp)
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <_Z4getcv>:

char getc() {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x41");
    80001698:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    8000169c:	00000073          	ecall
    int ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    800016a0:	00050513          	mv	a0,a0
    return ret;

}
    800016a4:	0ff57513          	andi	a0,a0,255
    800016a8:	00813403          	ld	s0,8(sp)
    800016ac:	01010113          	addi	sp,sp,16
    800016b0:	00008067          	ret

00000000800016b4 <_Z4putcc>:

void putc(char c) {
    800016b4:	ff010113          	addi	sp,sp,-16
    800016b8:	00813423          	sd	s0,8(sp)
    800016bc:	01010413          	addi	s0,sp,16
    char ch=c;
    __asm__ volatile("mv a1,%0"::"r"((uint64)ch));
    800016c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x42");
    800016c4:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    800016c8:	00000073          	ecall

}
    800016cc:	00813403          	ld	s0,8(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_Z10changeUserv>:
void changeUser() {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x26");
    800016e4:	02600513          	li	a0,38
    __asm__ volatile("ecall");
    800016e8:	00000073          	ecall
    return;

}
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_Z11getThreadIdv>:

int getThreadId() {
    800016f8:	ff010113          	addi	sp,sp,-16
    800016fc:	00813423          	sd	s0,8(sp)
    80001700:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x27");
    80001704:	02700513          	li	a0,39
    __asm__ volatile ("ecall");
    80001708:	00000073          	ecall
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    8000170c:	00050513          	mv	a0,a0
    return ret;
}
    80001710:	0005051b          	sext.w	a0,a0
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    myHandle=nullptr;
    sem_open(&myHandle,init);

}
Semaphore::~Semaphore() {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00113423          	sd	ra,8(sp)
    80001728:	00813023          	sd	s0,0(sp)
    8000172c:	01010413          	addi	s0,sp,16
    80001730:	0000a797          	auipc	a5,0xa
    80001734:	e5078793          	addi	a5,a5,-432 # 8000b580 <_ZTV9Semaphore+0x10>
    80001738:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000173c:	00853503          	ld	a0,8(a0)
    80001740:	00000097          	auipc	ra,0x0
    80001744:	ea0080e7          	jalr	-352(ra) # 800015e0 <_Z9sem_closeP4_sem>

}
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	02010413          	addi	s0,sp,32
    8000176c:	00050493          	mv	s1,a0
}
    80001770:	00000097          	auipc	ra,0x0
    80001774:	fb0080e7          	jalr	-80(ra) # 80001720 <_ZN9SemaphoreD1Ev>
    80001778:	00048513          	mv	a0,s1
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	eb0080e7          	jalr	-336(ra) # 8000262c <_ZdlPv>
    80001784:	01813083          	ld	ra,24(sp)
    80001788:	01013403          	ld	s0,16(sp)
    8000178c:	00813483          	ld	s1,8(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001798:	ff010113          	addi	sp,sp,-16
    8000179c:	00113423          	sd	ra,8(sp)
    800017a0:	00813023          	sd	s0,0(sp)
    800017a4:	01010413          	addi	s0,sp,16
    800017a8:	0000a797          	auipc	a5,0xa
    800017ac:	dd878793          	addi	a5,a5,-552 # 8000b580 <_ZTV9Semaphore+0x10>
    800017b0:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    800017b4:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle,init);
    800017b8:	00850513          	addi	a0,a0,8
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	dec080e7          	jalr	-532(ra) # 800015a8 <_Z8sem_openPP4_semj>
}
    800017c4:	00813083          	ld	ra,8(sp)
    800017c8:	00013403          	ld	s0,0(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00113423          	sd	ra,8(sp)
    800017dc:	00813023          	sd	s0,0(sp)
    800017e0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800017e4:	00853503          	ld	a0,8(a0)
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	e24080e7          	jalr	-476(ra) # 8000160c <_Z8sem_waitP4_sem>
}
    800017f0:	00813083          	ld	ra,8(sp)
    800017f4:	00013403          	ld	s0,0(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00113423          	sd	ra,8(sp)
    80001808:	00813023          	sd	s0,0(sp)
    8000180c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001810:	00853503          	ld	a0,8(a0)
    80001814:	00000097          	auipc	ra,0x0
    80001818:	e24080e7          	jalr	-476(ra) # 80001638 <_Z10sem_signalP4_sem>
}
    8000181c:	00813083          	ld	ra,8(sp)
    80001820:	00013403          	ld	s0,0(sp)
    80001824:	01010113          	addi	sp,sp,16
    80001828:	00008067          	ret

000000008000182c <_ZN6Thread7wrapperEPv>:

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

void Thread::wrapper(void *thread) {
    8000182c:	ff010113          	addi	sp,sp,-16
    80001830:	00113423          	sd	ra,8(sp)
    80001834:	00813023          	sd	s0,0(sp)
    80001838:	01010413          	addi	s0,sp,16
    ((Thread*) thread)->run();
    8000183c:	00053783          	ld	a5,0(a0)
    80001840:	0107b783          	ld	a5,16(a5)
    80001844:	000780e7          	jalr	a5

}
    80001848:	00813083          	ld	ra,8(sp)
    8000184c:	00013403          	ld	s0,0(sp)
    80001850:	01010113          	addi	sp,sp,16
    80001854:	00008067          	ret

0000000080001858 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	02010413          	addi	s0,sp,32
    8000186c:	0000a797          	auipc	a5,0xa
    80001870:	d3c78793          	addi	a5,a5,-708 # 8000b5a8 <_ZTV6Thread+0x10>
    80001874:	00f53023          	sd	a5,0(a0)
    myHandle->setFinished(true);
    80001878:	00853783          	ld	a5,8(a0)
    bool isFinished() const { return finished; }
    bool isBlocked() const { return blocked; }
    bool isPeriodic() const { return periodic; }
    bool isSleep() const { return sleep; }

    void setFinished(bool value) { finished = value; }
    8000187c:	00100713          	li	a4,1
    80001880:	04e78023          	sb	a4,64(a5)
    delete myHandle;
    80001884:	00853483          	ld	s1,8(a0)
    80001888:	02048063          	beqz	s1,800018a8 <_ZN6ThreadD1Ev+0x50>
    ~TCB() { delete[] stack; }
    8000188c:	0184b503          	ld	a0,24(s1)
    80001890:	00050663          	beqz	a0,8000189c <_ZN6ThreadD1Ev+0x44>
    80001894:	00001097          	auipc	ra,0x1
    80001898:	dc0080e7          	jalr	-576(ra) # 80002654 <_ZdaPv>
    8000189c:	00048513          	mv	a0,s1
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	d8c080e7          	jalr	-628(ra) # 8000262c <_ZdlPv>
}
    800018a8:	01813083          	ld	ra,24(sp)
    800018ac:	01013403          	ld	s0,16(sp)
    800018b0:	00813483          	ld	s1,8(sp)
    800018b4:	02010113          	addi	sp,sp,32
    800018b8:	00008067          	ret

00000000800018bc <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800018bc:	fe010113          	addi	sp,sp,-32
    800018c0:	00113c23          	sd	ra,24(sp)
    800018c4:	00813823          	sd	s0,16(sp)
    800018c8:	00913423          	sd	s1,8(sp)
    800018cc:	02010413          	addi	s0,sp,32
    800018d0:	00050493          	mv	s1,a0
}
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	f84080e7          	jalr	-124(ra) # 80001858 <_ZN6ThreadD1Ev>
    800018dc:	00048513          	mv	a0,s1
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	d4c080e7          	jalr	-692(ra) # 8000262c <_ZdlPv>
    800018e8:	01813083          	ld	ra,24(sp)
    800018ec:	01013403          	ld	s0,16(sp)
    800018f0:	00813483          	ld	s1,8(sp)
    800018f4:	02010113          	addi	sp,sp,32
    800018f8:	00008067          	ret

00000000800018fc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00113423          	sd	ra,8(sp)
    80001904:	00813023          	sd	s0,0(sp)
    80001908:	01010413          	addi	s0,sp,16
    8000190c:	0000a797          	auipc	a5,0xa
    80001910:	c9c78793          	addi	a5,a5,-868 # 8000b5a8 <_ZTV6Thread+0x10>
    80001914:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80001918:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000191c:	00c53c23          	sd	a2,24(a0)
    myHandle=nullptr;
    80001920:	00053423          	sd	zero,8(a0)
    thread_create(&this->myHandle,body,arg);
    80001924:	00850513          	addi	a0,a0,8
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	be0080e7          	jalr	-1056(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001930:	00813083          	ld	ra,8(sp)
    80001934:	00013403          	ld	s0,0(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00113423          	sd	ra,8(sp)
    80001948:	00813023          	sd	s0,0(sp)
    8000194c:	01010413          	addi	s0,sp,16
    80001950:	0000a797          	auipc	a5,0xa
    80001954:	c5878793          	addi	a5,a5,-936 # 8000b5a8 <_ZTV6Thread+0x10>
    80001958:	00f53023          	sd	a5,0(a0)
    this->body =Thread::wrapper;
    8000195c:	00000597          	auipc	a1,0x0
    80001960:	ed058593          	addi	a1,a1,-304 # 8000182c <_ZN6Thread7wrapperEPv>
    80001964:	00b53823          	sd	a1,16(a0)
    this->arg = static_cast<void*>(this);
    80001968:	00a53c23          	sd	a0,24(a0)
    myHandle=nullptr;
    8000196c:	00053423          	sd	zero,8(a0)
    thread_create(&this->myHandle,Thread::wrapper,this);
    80001970:	00050613          	mv	a2,a0
    80001974:	00850513          	addi	a0,a0,8
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	b90080e7          	jalr	-1136(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001980:	00813083          	ld	ra,8(sp)
    80001984:	00013403          	ld	s0,0(sp)
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret

0000000080001990 <_ZN6Thread5startEv>:
int Thread::start() {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
    Scheduler::put(this->myHandle);
    800019a0:	00853503          	ld	a0,8(a0)
    800019a4:	00001097          	auipc	ra,0x1
    800019a8:	6cc080e7          	jalr	1740(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
}
    800019ac:	00000513          	li	a0,0
    800019b0:	00813083          	ld	ra,8(sp)
    800019b4:	00013403          	ld	s0,0(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret

00000000800019c0 <_ZN6Thread4joinEv>:
void Thread::join() {
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    800019d0:	00853503          	ld	a0,8(a0)
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	bb0080e7          	jalr	-1104(ra) # 80001584 <_Z11thread_joinP3TCB>
}
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00113423          	sd	ra,8(sp)
    800019f4:	00813023          	sd	s0,0(sp)
    800019f8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	b68080e7          	jalr	-1176(ra) # 80001564 <_Z15thread_dispatchv>
}
    80001a04:	00813083          	ld	ra,8(sp)
    80001a08:	00013403          	ld	s0,0(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00113423          	sd	ra,8(sp)
    80001a1c:	00813023          	sd	s0,0(sp)
    80001a20:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	c40080e7          	jalr	-960(ra) # 80001664 <_Z10time_sleepm>
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN6Thread6setPerEb>:

void Thread::setPer(bool v) {
    80001a3c:	ff010113          	addi	sp,sp,-16
    80001a40:	00813423          	sd	s0,8(sp)
    80001a44:	01010413          	addi	s0,sp,16
    myHandle->setPeriodic(v);
    80001a48:	00853783          	ld	a5,8(a0)
    void setBlocked(bool value) { blocked = value; }
    void setSleep(bool value) { sleep = value; }
    void setPeriodic(bool value) { periodic = value; }
    80001a4c:	04b781a3          	sb	a1,67(a5)
}
    80001a50:	00813403          	ld	s0,8(sp)
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00008067          	ret

0000000080001a5c <_ZN6Thread7setTimeEm>:

void Thread::setTime(uint64 t) {
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00813423          	sd	s0,8(sp)
    80001a64:	01010413          	addi	s0,sp,16
    myHandle->setTimeSlice(t);
    80001a68:	00853783          	ld	a5,8(a0)
    void setTimeSlice(uint64 t){timeSlice=t;}
    80001a6c:	02b7b823          	sd	a1,48(a5)

}
    80001a70:	00813403          	ld	s0,8(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <_ZN6Thread3runEv>:
    thread_t& getHandle(){return myHandle;}
    void setPer(bool v);
    void setTime(uint64 t);
protected:
    Thread ();
    virtual void run () {}
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00813423          	sd	s0,8(sp)
    80001a84:	01010413          	addi	s0,sp,16
    80001a88:	00813403          	ld	s0,8(sp)
    80001a8c:	01010113          	addi	sp,sp,16
    80001a90:	00008067          	ret

0000000080001a94 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "../test/System_Mode_test.hpp"

#endif

void userMain() {
    80001a94:	fe010113          	addi	sp,sp,-32
    80001a98:	00113c23          	sd	ra,24(sp)
    80001a9c:	00813823          	sd	s0,16(sp)
    80001aa0:	00913423          	sd	s1,8(sp)
    80001aa4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80001aa8:	00007517          	auipc	a0,0x7
    80001aac:	57850513          	addi	a0,a0,1400 # 80009020 <CONSOLE_STATUS+0x10>
    80001ab0:	00004097          	auipc	ra,0x4
    80001ab4:	d8c080e7          	jalr	-628(ra) # 8000583c <_Z11printStringPKc>
    int test = getc() - '0';
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	bd4080e7          	jalr	-1068(ra) # 8000168c <_Z4getcv>
    80001ac0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	bc8080e7          	jalr	-1080(ra) # 8000168c <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001acc:	00700793          	li	a5,7
    80001ad0:	1097e263          	bltu	a5,s1,80001bd4 <_Z8userMainv+0x140>
    80001ad4:	00249493          	slli	s1,s1,0x2
    80001ad8:	00007717          	auipc	a4,0x7
    80001adc:	7a070713          	addi	a4,a4,1952 # 80009278 <CONSOLE_STATUS+0x268>
    80001ae0:	00e484b3          	add	s1,s1,a4
    80001ae4:	0004a783          	lw	a5,0(s1)
    80001ae8:	00e787b3          	add	a5,a5,a4
    80001aec:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80001af0:	00003097          	auipc	ra,0x3
    80001af4:	3c4080e7          	jalr	964(ra) # 80004eb4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001af8:	00007517          	auipc	a0,0x7
    80001afc:	54850513          	addi	a0,a0,1352 # 80009040 <CONSOLE_STATUS+0x30>
    80001b00:	00004097          	auipc	ra,0x4
    80001b04:	d3c080e7          	jalr	-708(ra) # 8000583c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001b08:	01813083          	ld	ra,24(sp)
    80001b0c:	01013403          	ld	s0,16(sp)
    80001b10:	00813483          	ld	s1,8(sp)
    80001b14:	02010113          	addi	sp,sp,32
    80001b18:	00008067          	ret
            Threads_CPP_API_test();
    80001b1c:	00002097          	auipc	ra,0x2
    80001b20:	278080e7          	jalr	632(ra) # 80003d94 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001b24:	00007517          	auipc	a0,0x7
    80001b28:	55c50513          	addi	a0,a0,1372 # 80009080 <CONSOLE_STATUS+0x70>
    80001b2c:	00004097          	auipc	ra,0x4
    80001b30:	d10080e7          	jalr	-752(ra) # 8000583c <_Z11printStringPKc>
            break;
    80001b34:	fd5ff06f          	j	80001b08 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80001b38:	00002097          	auipc	ra,0x2
    80001b3c:	a9c080e7          	jalr	-1380(ra) # 800035d4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80001b40:	00007517          	auipc	a0,0x7
    80001b44:	58050513          	addi	a0,a0,1408 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001b48:	00004097          	auipc	ra,0x4
    80001b4c:	cf4080e7          	jalr	-780(ra) # 8000583c <_Z11printStringPKc>
            break;
    80001b50:	fb9ff06f          	j	80001b08 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80001b54:	00003097          	auipc	ra,0x3
    80001b58:	6a4080e7          	jalr	1700(ra) # 800051f8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80001b5c:	00007517          	auipc	a0,0x7
    80001b60:	5b450513          	addi	a0,a0,1460 # 80009110 <CONSOLE_STATUS+0x100>
    80001b64:	00004097          	auipc	ra,0x4
    80001b68:	cd8080e7          	jalr	-808(ra) # 8000583c <_Z11printStringPKc>
            break;
    80001b6c:	f9dff06f          	j	80001b08 <_Z8userMainv+0x74>
            testSleeping();
    80001b70:	00004097          	auipc	ra,0x4
    80001b74:	438080e7          	jalr	1080(ra) # 80005fa8 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80001b78:	00007517          	auipc	a0,0x7
    80001b7c:	5f050513          	addi	a0,a0,1520 # 80009168 <CONSOLE_STATUS+0x158>
    80001b80:	00004097          	auipc	ra,0x4
    80001b84:	cbc080e7          	jalr	-836(ra) # 8000583c <_Z11printStringPKc>
            break;
    80001b88:	f81ff06f          	j	80001b08 <_Z8userMainv+0x74>
            testConsumerProducer();
    80001b8c:	00002097          	auipc	ra,0x2
    80001b90:	6c8080e7          	jalr	1736(ra) # 80004254 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80001b94:	00007517          	auipc	a0,0x7
    80001b98:	60450513          	addi	a0,a0,1540 # 80009198 <CONSOLE_STATUS+0x188>
    80001b9c:	00004097          	auipc	ra,0x4
    80001ba0:	ca0080e7          	jalr	-864(ra) # 8000583c <_Z11printStringPKc>
            break;
    80001ba4:	f65ff06f          	j	80001b08 <_Z8userMainv+0x74>
            System_Mode_test();
    80001ba8:	00005097          	auipc	ra,0x5
    80001bac:	980080e7          	jalr	-1664(ra) # 80006528 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001bb0:	00007517          	auipc	a0,0x7
    80001bb4:	62850513          	addi	a0,a0,1576 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001bb8:	00004097          	auipc	ra,0x4
    80001bbc:	c84080e7          	jalr	-892(ra) # 8000583c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001bc0:	00007517          	auipc	a0,0x7
    80001bc4:	63850513          	addi	a0,a0,1592 # 800091f8 <CONSOLE_STATUS+0x1e8>
    80001bc8:	00004097          	auipc	ra,0x4
    80001bcc:	c74080e7          	jalr	-908(ra) # 8000583c <_Z11printStringPKc>
            break;
    80001bd0:	f39ff06f          	j	80001b08 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80001bd4:	00007517          	auipc	a0,0x7
    80001bd8:	67c50513          	addi	a0,a0,1660 # 80009250 <CONSOLE_STATUS+0x240>
    80001bdc:	00004097          	auipc	ra,0x4
    80001be0:	c60080e7          	jalr	-928(ra) # 8000583c <_Z11printStringPKc>
    80001be4:	f25ff06f          	j	80001b08 <_Z8userMainv+0x74>

0000000080001be8 <_ZN7Console4getcEv>:
#include "../h/syscall_cpp.hpp"

char Console::getc() {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    return ::getc();
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	a94080e7          	jalr	-1388(ra) # 8000168c <_Z4getcv>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	a94080e7          	jalr	-1388(ra) # 800016b4 <_Z4putcc>
    80001c28:	00813083          	ld	ra,8(sp)
    80001c2c:	00013403          	ld	s0,0(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_Z15userMainWrapperPv>:
#include "../h/tcb.hpp"
#include "../test/printing.hpp"

extern void userMain();

void userMainWrapper(void* arg){
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00113423          	sd	ra,8(sp)
    80001c40:	00813023          	sd	s0,0(sp)
    80001c44:	01010413          	addi	s0,sp,16
    userMain();
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	e4c080e7          	jalr	-436(ra) # 80001a94 <_Z8userMainv>
}
    80001c50:	00813083          	ld	ra,8(sp)
    80001c54:	00013403          	ld	s0,0(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret

0000000080001c60 <_Z3f_aPv>:

void f_a(void* arg){
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	02010413          	addi	s0,sp,32
    for(int i=0;i<10;i++){
    80001c74:	00000493          	li	s1,0
    80001c78:	00900793          	li	a5,9
    80001c7c:	0297ca63          	blt	a5,s1,80001cb0 <_Z3f_aPv+0x50>
        printString("A ");
    80001c80:	00007517          	auipc	a0,0x7
    80001c84:	61850513          	addi	a0,a0,1560 # 80009298 <CONSOLE_STATUS+0x288>
    80001c88:	00004097          	auipc	ra,0x4
    80001c8c:	bb4080e7          	jalr	-1100(ra) # 8000583c <_Z11printStringPKc>
        printInt(getThreadId());
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	a68080e7          	jalr	-1432(ra) # 800016f8 <_Z11getThreadIdv>
    80001c98:	00000613          	li	a2,0
    80001c9c:	00a00593          	li	a1,10
    80001ca0:	00004097          	auipc	ra,0x4
    80001ca4:	d4c080e7          	jalr	-692(ra) # 800059ec <_Z8printIntiii>
    for(int i=0;i<10;i++){
    80001ca8:	0014849b          	addiw	s1,s1,1
    80001cac:	fcdff06f          	j	80001c78 <_Z3f_aPv+0x18>

    }

}
    80001cb0:	01813083          	ld	ra,24(sp)
    80001cb4:	01013403          	ld	s0,16(sp)
    80001cb8:	00813483          	ld	s1,8(sp)
    80001cbc:	02010113          	addi	sp,sp,32
    80001cc0:	00008067          	ret

0000000080001cc4 <_Z3f_bPv>:
void f_b(void* arg){
    80001cc4:	fe010113          	addi	sp,sp,-32
    80001cc8:	00113c23          	sd	ra,24(sp)
    80001ccc:	00813823          	sd	s0,16(sp)
    80001cd0:	00913423          	sd	s1,8(sp)
    80001cd4:	02010413          	addi	s0,sp,32
    for(int i=0;i<10;i++){
    80001cd8:	00000493          	li	s1,0
    80001cdc:	00900793          	li	a5,9
    80001ce0:	0297ca63          	blt	a5,s1,80001d14 <_Z3f_bPv+0x50>

        printString("B ");
    80001ce4:	00007517          	auipc	a0,0x7
    80001ce8:	5bc50513          	addi	a0,a0,1468 # 800092a0 <CONSOLE_STATUS+0x290>
    80001cec:	00004097          	auipc	ra,0x4
    80001cf0:	b50080e7          	jalr	-1200(ra) # 8000583c <_Z11printStringPKc>
        printInt(getThreadId());
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	a04080e7          	jalr	-1532(ra) # 800016f8 <_Z11getThreadIdv>
    80001cfc:	00000613          	li	a2,0
    80001d00:	00a00593          	li	a1,10
    80001d04:	00004097          	auipc	ra,0x4
    80001d08:	ce8080e7          	jalr	-792(ra) # 800059ec <_Z8printIntiii>
    for(int i=0;i<10;i++){
    80001d0c:	0014849b          	addiw	s1,s1,1
    80001d10:	fcdff06f          	j	80001cdc <_Z3f_bPv+0x18>

    }

}
    80001d14:	01813083          	ld	ra,24(sp)
    80001d18:	01013403          	ld	s0,16(sp)
    80001d1c:	00813483          	ld	s1,8(sp)
    80001d20:	02010113          	addi	sp,sp,32
    80001d24:	00008067          	ret

0000000080001d28 <_Z3f_cPv>:
void f_c(void* arg){
    80001d28:	fe010113          	addi	sp,sp,-32
    80001d2c:	00113c23          	sd	ra,24(sp)
    80001d30:	00813823          	sd	s0,16(sp)
    80001d34:	00913423          	sd	s1,8(sp)
    80001d38:	02010413          	addi	s0,sp,32
    for(int i=0;i<10;i++){
    80001d3c:	00000493          	li	s1,0
    80001d40:	00900793          	li	a5,9
    80001d44:	0297ca63          	blt	a5,s1,80001d78 <_Z3f_cPv+0x50>
        printString("C ");
    80001d48:	00007517          	auipc	a0,0x7
    80001d4c:	56050513          	addi	a0,a0,1376 # 800092a8 <CONSOLE_STATUS+0x298>
    80001d50:	00004097          	auipc	ra,0x4
    80001d54:	aec080e7          	jalr	-1300(ra) # 8000583c <_Z11printStringPKc>
        printInt(getThreadId());
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	9a0080e7          	jalr	-1632(ra) # 800016f8 <_Z11getThreadIdv>
    80001d60:	00000613          	li	a2,0
    80001d64:	00a00593          	li	a1,10
    80001d68:	00004097          	auipc	ra,0x4
    80001d6c:	c84080e7          	jalr	-892(ra) # 800059ec <_Z8printIntiii>
    for(int i=0;i<10;i++){
    80001d70:	0014849b          	addiw	s1,s1,1
    80001d74:	fcdff06f          	j	80001d40 <_Z3f_cPv+0x18>

    }

}
    80001d78:	01813083          	ld	ra,24(sp)
    80001d7c:	01013403          	ld	s0,16(sp)
    80001d80:	00813483          	ld	s1,8(sp)
    80001d84:	02010113          	addi	sp,sp,32
    80001d88:	00008067          	ret

0000000080001d8c <_Z1fPv>:
void f(void* arg){
    80001d8c:	fe010113          	addi	sp,sp,-32
    80001d90:	00113c23          	sd	ra,24(sp)
    80001d94:	00813823          	sd	s0,16(sp)
    80001d98:	00913423          	sd	s1,8(sp)
    80001d9c:	01213023          	sd	s2,0(sp)
    80001da0:	02010413          	addi	s0,sp,32
    int id=getThreadId();;
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	954080e7          	jalr	-1708(ra) # 800016f8 <_Z11getThreadIdv>
    80001dac:	00050493          	mv	s1,a0
    for(int i=0;i<5;i++){
    80001db0:	00000913          	li	s2,0
    80001db4:	00400793          	li	a5,4
    80001db8:	0527c063          	blt	a5,s2,80001df8 <_Z1fPv+0x6c>
        printString("Hello! Thread::myId ");
    80001dbc:	00007517          	auipc	a0,0x7
    80001dc0:	4f450513          	addi	a0,a0,1268 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80001dc4:	00004097          	auipc	ra,0x4
    80001dc8:	a78080e7          	jalr	-1416(ra) # 8000583c <_Z11printStringPKc>
        printInt(id);
    80001dcc:	00000613          	li	a2,0
    80001dd0:	00a00593          	li	a1,10
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00004097          	auipc	ra,0x4
    80001ddc:	c14080e7          	jalr	-1004(ra) # 800059ec <_Z8printIntiii>
        printString("\n");
    80001de0:	00007517          	auipc	a0,0x7
    80001de4:	38050513          	addi	a0,a0,896 # 80009160 <CONSOLE_STATUS+0x150>
    80001de8:	00004097          	auipc	ra,0x4
    80001dec:	a54080e7          	jalr	-1452(ra) # 8000583c <_Z11printStringPKc>
    for(int i=0;i<5;i++){
    80001df0:	0019091b          	addiw	s2,s2,1
    80001df4:	fc1ff06f          	j	80001db4 <_Z1fPv+0x28>
    }
    for(int i=0;i<id;i++);
    80001df8:	00000793          	li	a5,0
    80001dfc:	0097d663          	bge	a5,s1,80001e08 <_Z1fPv+0x7c>
    80001e00:	0017879b          	addiw	a5,a5,1
    80001e04:	ff9ff06f          	j	80001dfc <_Z1fPv+0x70>
}
    80001e08:	01813083          	ld	ra,24(sp)
    80001e0c:	01013403          	ld	s0,16(sp)
    80001e10:	00813483          	ld	s1,8(sp)
    80001e14:	00013903          	ld	s2,0(sp)
    80001e18:	02010113          	addi	sp,sp,32
    80001e1c:	00008067          	ret

0000000080001e20 <main>:


void main(){
    80001e20:	fd010113          	addi	sp,sp,-48
    80001e24:	02113423          	sd	ra,40(sp)
    80001e28:	02813023          	sd	s0,32(sp)
    80001e2c:	00913c23          	sd	s1,24(sp)
    80001e30:	03010413          	addi	s0,sp,48
    Riscv::w_stvec(((uint64) &Riscv::interrupt_table)|1);
    80001e34:	0000a797          	auipc	a5,0xa
    80001e38:	99c7b783          	ld	a5,-1636(a5) # 8000b7d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e3c:	0017e793          	ori	a5,a5,1
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001e40:	10579073          	csrw	stvec,a5
    TCB* nit;
    thread_create(&nit, nullptr, nullptr);
    80001e44:	00000613          	li	a2,0
    80001e48:	00000593          	li	a1,0
    80001e4c:	fd840513          	addi	a0,s0,-40
    80001e50:	fffff097          	auipc	ra,0xfffff
    80001e54:	6b8080e7          	jalr	1720(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=nit;
    80001e58:	0000a797          	auipc	a5,0xa
    80001e5c:	9687b783          	ld	a5,-1688(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e60:	fd843703          	ld	a4,-40(s0)
    80001e64:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e68:	00200793          	li	a5,2
    80001e6c:	1007a073          	csrs	sstatus,a5

    //TCB::SetMaximumThreads(3);



  changeUser();
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	868080e7          	jalr	-1944(ra) # 800016d8 <_Z10changeUserv>

    TCB* user;
    thread_create(&user, userMainWrapper, nullptr);
    80001e78:	00000613          	li	a2,0
    80001e7c:	00000597          	auipc	a1,0x0
    80001e80:	dbc58593          	addi	a1,a1,-580 # 80001c38 <_Z15userMainWrapperPv>
    80001e84:	fd040513          	addi	a0,s0,-48
    80001e88:	fffff097          	auipc	ra,0xfffff
    80001e8c:	680080e7          	jalr	1664(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    while(!(threads[0]->isFinished() && threads[1]->isFinished()&&threads[2]->isFinished()&&threads[3]->isFinished()&&threads[4]->isFinished()
            &&threads[5]->isFinished()&&threads[6]->isFinished()&&threads[7]->isFinished()&&threads[8]->isFinished()&&threads[9]->isFinished()
            &&threads[10]->isFinished()&&threads[11]->isFinished()&&threads[12]->isFinished()&&threads[13]->isFinished()&&threads[14]->isFinished()
            &&threads[15]->isFinished()&&threads[16]->isFinished()&&threads[17]->isFinished()&&threads[18]->isFinished()&&threads[19]->isFinished()))thread_dispatch();
*/
   while(!user->isFinished()){thread_dispatch();}
    80001e90:	fd043483          	ld	s1,-48(s0)
    bool isFinished() const { return finished; }
    80001e94:	0404c783          	lbu	a5,64(s1)
    80001e98:	00079863          	bnez	a5,80001ea8 <main+0x88>
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	6c8080e7          	jalr	1736(ra) # 80001564 <_Z15thread_dispatchv>
    80001ea4:	fedff06f          	j	80001e90 <main+0x70>

    delete user;
    80001ea8:	02048063          	beqz	s1,80001ec8 <main+0xa8>
    ~TCB() { delete[] stack; }
    80001eac:	0184b503          	ld	a0,24(s1)
    80001eb0:	00050663          	beqz	a0,80001ebc <main+0x9c>
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	7a0080e7          	jalr	1952(ra) # 80002654 <_ZdaPv>
    80001ebc:	00048513          	mv	a0,s1
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	76c080e7          	jalr	1900(ra) # 8000262c <_ZdlPv>
    delete nit;
    80001ec8:	fd843483          	ld	s1,-40(s0)
    80001ecc:	02048063          	beqz	s1,80001eec <main+0xcc>
    80001ed0:	0184b503          	ld	a0,24(s1)
    80001ed4:	00050663          	beqz	a0,80001ee0 <main+0xc0>
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	77c080e7          	jalr	1916(ra) # 80002654 <_ZdaPv>
    80001ee0:	00048513          	mv	a0,s1
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	748080e7          	jalr	1864(ra) # 8000262c <_ZdlPv>


}
    80001eec:	02813083          	ld	ra,40(sp)
    80001ef0:	02013403          	ld	s0,32(sp)
    80001ef4:	01813483          	ld	s1,24(sp)
    80001ef8:	03010113          	addi	sp,sp,48
    80001efc:	00008067          	ret

0000000080001f00 <_ZN3TCB5yieldEv>:




void TCB::yield()
{
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00813423          	sd	s0,8(sp)
    80001f08:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x13");
    80001f0c:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001f10:	00000073          	ecall
   // __asm__ volatile("ret");
}
    80001f14:	00813403          	ld	s0,8(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_ZN3TCB8dispatchEv>:

void TCB::dispatch()
{
    80001f20:	fe010113          	addi	sp,sp,-32
    80001f24:	00113c23          	sd	ra,24(sp)
    80001f28:	00813823          	sd	s0,16(sp)
    80001f2c:	00913423          	sd	s1,8(sp)
    80001f30:	02010413          	addi	s0,sp,32

    TCB *old = running;
    80001f34:	0000a497          	auipc	s1,0xa
    80001f38:	8ec4b483          	ld	s1,-1812(s1) # 8000b820 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001f3c:	0404c783          	lbu	a5,64(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001f40:	00079663          	bnez	a5,80001f4c <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked; }
    80001f44:	0414c783          	lbu	a5,65(s1)
    80001f48:	04078263          	beqz	a5,80001f8c <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	0a8080e7          	jalr	168(ra) # 80002ff4 <_ZN9Scheduler3getEv>
    80001f54:	0000a797          	auipc	a5,0xa
    80001f58:	8cc78793          	addi	a5,a5,-1844 # 8000b820 <_ZN3TCB7runningE>
    80001f5c:	00a7b023          	sd	a0,0(a5)
    timeSliceCounter=0;
    80001f60:	0007b423          	sd	zero,8(a5)
    if(running==old)return;
    80001f64:	00a48a63          	beq	s1,a0,80001f78 <_ZN3TCB8dispatchEv+0x58>
    TCB::contextSwitch(&old->context, &running->context);
    80001f68:	02050593          	addi	a1,a0,32
    80001f6c:	02048513          	addi	a0,s1,32
    80001f70:	fffff097          	auipc	ra,0xfffff
    80001f74:	188080e7          	jalr	392(ra) # 800010f8 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>

}
    80001f78:	01813083          	ld	ra,24(sp)
    80001f7c:	01013403          	ld	s0,16(sp)
    80001f80:	00813483          	ld	s1,8(sp)
    80001f84:	02010113          	addi	sp,sp,32
    80001f88:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001f8c:	00048513          	mv	a0,s1
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	0e0080e7          	jalr	224(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
    80001f98:	fb5ff06f          	j	80001f4c <_ZN3TCB8dispatchEv+0x2c>

0000000080001f9c <_ZN3TCB3getEv>:
    if(running==old)return;
    TCB::contextSwitch(&old->context, &running->context);

}
TCB* TCB::get()
{
    80001f9c:	fe010113          	addi	sp,sp,-32
    80001fa0:	00113c23          	sd	ra,24(sp)
    80001fa4:	00813823          	sd	s0,16(sp)
    80001fa8:	00913423          	sd	s1,8(sp)
    80001fac:	01213023          	sd	s2,0(sp)
    80001fb0:	02010413          	addi	s0,sp,32
    if (!head) { return 0; }
    80001fb4:	00053483          	ld	s1,0(a0)
    80001fb8:	04048663          	beqz	s1,80002004 <_ZN3TCB3getEv+0x68>

    Elem1 *elem = head;
    head = head->next;
    80001fbc:	0084b783          	ld	a5,8(s1)
    80001fc0:	00f53023          	sd	a5,0(a0)
    if (!head) { tail = 0; }
    80001fc4:	02078c63          	beqz	a5,80001ffc <_ZN3TCB3getEv+0x60>

    TCB *ret = elem->data;
    80001fc8:	0004b903          	ld	s2,0(s1)
    MemoryAllocator::getAlloc().deallocate(elem);
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	118080e7          	jalr	280(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80001fd4:	00048593          	mv	a1,s1
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	248080e7          	jalr	584(ra) # 80003220 <_ZN15MemoryAllocator10deallocateEPv>
    return ret;
}
    80001fe0:	00090513          	mv	a0,s2
    80001fe4:	01813083          	ld	ra,24(sp)
    80001fe8:	01013403          	ld	s0,16(sp)
    80001fec:	00813483          	ld	s1,8(sp)
    80001ff0:	00013903          	ld	s2,0(sp)
    80001ff4:	02010113          	addi	sp,sp,32
    80001ff8:	00008067          	ret
    if (!head) { tail = 0; }
    80001ffc:	00053423          	sd	zero,8(a0)
    80002000:	fc9ff06f          	j	80001fc8 <_ZN3TCB3getEv+0x2c>
    if (!head) { return 0; }
    80002004:	00048913          	mv	s2,s1
    80002008:	fd9ff06f          	j	80001fe0 <_ZN3TCB3getEv+0x44>

000000008000200c <_ZN3TCB3putEPS_>:
void TCB::put(TCB *ccb)
{
    8000200c:	fe010113          	addi	sp,sp,-32
    80002010:	00113c23          	sd	ra,24(sp)
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00913423          	sd	s1,8(sp)
    8000201c:	01213023          	sd	s2,0(sp)
    80002020:	02010413          	addi	s0,sp,32
    80002024:	00050493          	mv	s1,a0
    80002028:	00058913          	mv	s2,a1
    Elem1 *elem = (Elem1*)MemoryAllocator::getAlloc().allocate((sizeof(Elem1)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	0b8080e7          	jalr	184(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002034:	00100593          	li	a1,1
    80002038:	00001097          	auipc	ra,0x1
    8000203c:	128080e7          	jalr	296(ra) # 80003160 <_ZN15MemoryAllocator8allocateEm>
    elem->data=ccb;
    80002040:	01253023          	sd	s2,0(a0)
    elem->next=0;
    80002044:	00053423          	sd	zero,8(a0)
    if (tail!=0)
    80002048:	0084b783          	ld	a5,8(s1)
    8000204c:	02078263          	beqz	a5,80002070 <_ZN3TCB3putEPS_+0x64>
    {
        tail->next = elem;
    80002050:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    80002054:	00a4b423          	sd	a0,8(s1)
    } else
    {
        head = tail = elem;
    }
}
    80002058:	01813083          	ld	ra,24(sp)
    8000205c:	01013403          	ld	s0,16(sp)
    80002060:	00813483          	ld	s1,8(sp)
    80002064:	00013903          	ld	s2,0(sp)
    80002068:	02010113          	addi	sp,sp,32
    8000206c:	00008067          	ret
        head = tail = elem;
    80002070:	00a4b423          	sd	a0,8(s1)
    80002074:	00a4b023          	sd	a0,0(s1)
}
    80002078:	fe1ff06f          	j	80002058 <_ZN3TCB3putEPS_+0x4c>

000000008000207c <_ZN3TCB4joinEPS_>:
    if(handle== 0)return;
    8000207c:	06050e63          	beqz	a0,800020f8 <_ZN3TCB4joinEPS_+0x7c>
void TCB::join(TCB *handle) {
    80002080:	fe010113          	addi	sp,sp,-32
    80002084:	00113c23          	sd	ra,24(sp)
    80002088:	00813823          	sd	s0,16(sp)
    8000208c:	00913423          	sd	s1,8(sp)
    80002090:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002094:	00009497          	auipc	s1,0x9
    80002098:	78c4b483          	ld	s1,1932(s1) # 8000b820 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000209c:	0404c783          	lbu	a5,64(s1)
    if (old->isFinished()){ return;}
    800020a0:	00078c63          	beqz	a5,800020b8 <_ZN3TCB4joinEPS_+0x3c>
}
    800020a4:	01813083          	ld	ra,24(sp)
    800020a8:	01013403          	ld	s0,16(sp)
    800020ac:	00813483          	ld	s1,8(sp)
    800020b0:	02010113          	addi	sp,sp,32
    800020b4:	00008067          	ret
    handle->put(old);
    800020b8:	00048593          	mv	a1,s1
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	f50080e7          	jalr	-176(ra) # 8000200c <_ZN3TCB3putEPS_>
    running = Scheduler::get();
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	f30080e7          	jalr	-208(ra) # 80002ff4 <_ZN9Scheduler3getEv>
    800020cc:	00009797          	auipc	a5,0x9
    800020d0:	74a7ba23          	sd	a0,1876(a5) # 8000b820 <_ZN3TCB7runningE>
    if(running==0) return;
    800020d4:	fc0508e3          	beqz	a0,800020a4 <_ZN3TCB4joinEPS_+0x28>
    timeSliceCounter=0;
    800020d8:	00009797          	auipc	a5,0x9
    800020dc:	7407b823          	sd	zero,1872(a5) # 8000b828 <_ZN3TCB16timeSliceCounterE>
    if(running==old)return;
    800020e0:	fca482e3          	beq	s1,a0,800020a4 <_ZN3TCB4joinEPS_+0x28>
    TCB::contextSwitch(&old->context, &running->context);
    800020e4:	02050593          	addi	a1,a0,32
    800020e8:	02048513          	addi	a0,s1,32
    800020ec:	fffff097          	auipc	ra,0xfffff
    800020f0:	00c080e7          	jalr	12(ra) # 800010f8 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    800020f4:	fb1ff06f          	j	800020a4 <_ZN3TCB4joinEPS_+0x28>
    800020f8:	00008067          	ret

00000000800020fc <_ZN3TCB12thread_sleepEm>:

int TCB::thread_sleep(time_t time) {
    if(time==0)return 0;
    800020fc:	00059663          	bnez	a1,80002108 <_ZN3TCB12thread_sleepEm+0xc>
    running = Scheduler::get();
    timeSliceCounter=0;
    TCB::contextSwitch(&old->context, &running->context);

    return 0;
}
    80002100:	00000513          	li	a0,0
    80002104:	00008067          	ret
int TCB::thread_sleep(time_t time) {
    80002108:	fe010113          	addi	sp,sp,-32
    8000210c:	00113c23          	sd	ra,24(sp)
    80002110:	00813823          	sd	s0,16(sp)
    80002114:	00913423          	sd	s1,8(sp)
    80002118:	01213023          	sd	s2,0(sp)
    8000211c:	02010413          	addi	s0,sp,32
    80002120:	00050913          	mv	s2,a0
    80002124:	00058493          	mv	s1,a1
    Sleep* spava=(Sleep*)MemoryAllocator::getAlloc().allocate((sizeof(Sleep)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	fbc080e7          	jalr	-68(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002130:	00100593          	li	a1,1
    80002134:	00001097          	auipc	ra,0x1
    80002138:	02c080e7          	jalr	44(ra) # 80003160 <_ZN15MemoryAllocator8allocateEm>
    spava->next= nullptr;
    8000213c:	00053c23          	sd	zero,24(a0)
    spava->time=time;
    80002140:	00953423          	sd	s1,8(a0)
    spava->proteklo=0;
    80002144:	00053823          	sd	zero,16(a0)
    spava->data=this;
    80002148:	01253023          	sd	s2,0(a0)
    spava->prev=nullptr;
    8000214c:	02053023          	sd	zero,32(a0)
    void setSleep(bool value) { sleep = value; }
    80002150:	00100713          	li	a4,1
    80002154:	04e90123          	sb	a4,66(s2)
    if(sleep_head==nullptr){
    80002158:	00009717          	auipc	a4,0x9
    8000215c:	6d873703          	ld	a4,1752(a4) # 8000b830 <_ZN3TCB10sleep_headE>
    80002160:	06070463          	beqz	a4,800021c8 <_ZN3TCB12thread_sleepEm+0xcc>
        sleep_tail->next=spava;
    80002164:	00009717          	auipc	a4,0x9
    80002168:	6bc70713          	addi	a4,a4,1724 # 8000b820 <_ZN3TCB7runningE>
    8000216c:	01873683          	ld	a3,24(a4)
    80002170:	00a6bc23          	sd	a0,24(a3)
        spava->prev=sleep_tail;
    80002174:	02d53023          	sd	a3,32(a0)
        sleep_tail=spava;
    80002178:	00a73c23          	sd	a0,24(a4)
    8000217c:	04090123          	sb	zero,66(s2)
    TCB *old = running;
    80002180:	00009497          	auipc	s1,0x9
    80002184:	6a048493          	addi	s1,s1,1696 # 8000b820 <_ZN3TCB7runningE>
    80002188:	0004b903          	ld	s2,0(s1)
    running = Scheduler::get();
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	e68080e7          	jalr	-408(ra) # 80002ff4 <_ZN9Scheduler3getEv>
    80002194:	00a4b023          	sd	a0,0(s1)
    timeSliceCounter=0;
    80002198:	0004b423          	sd	zero,8(s1)
    TCB::contextSwitch(&old->context, &running->context);
    8000219c:	02050593          	addi	a1,a0,32
    800021a0:	02090513          	addi	a0,s2,32
    800021a4:	fffff097          	auipc	ra,0xfffff
    800021a8:	f54080e7          	jalr	-172(ra) # 800010f8 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800021ac:	00000513          	li	a0,0
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	00013903          	ld	s2,0(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret
        sleep_head=sleep_tail=spava;
    800021c8:	00009717          	auipc	a4,0x9
    800021cc:	65870713          	addi	a4,a4,1624 # 8000b820 <_ZN3TCB7runningE>
    800021d0:	00a73c23          	sd	a0,24(a4)
    800021d4:	00a73823          	sd	a0,16(a4)
    800021d8:	fa5ff06f          	j	8000217c <_ZN3TCB12thread_sleepEm+0x80>

00000000800021dc <_ZN3TCB17SetMaximumThreadsEi>:
    *handle=new TCB(body,arg,stack,DEFAULT_TIME_SLICE);
    if (*handle == nullptr) { return -1; }
    return 0;
}

void TCB::SetMaximumThreads(int num) {
    800021dc:	ff010113          	addi	sp,sp,-16
    800021e0:	00813423          	sd	s0,8(sp)
    800021e4:	01010413          	addi	s0,sp,16
    MaximumThreads=num;
    800021e8:	00009797          	auipc	a5,0x9
    800021ec:	3ca7bc23          	sd	a0,984(a5) # 8000b5c0 <_ZN3TCB14MaximumThreadsE>

}
    800021f0:	00813403          	ld	s0,8(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN3TCB17GetMaximumThreadsEv>:

int TCB::GetMaximumThreads() {
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00813423          	sd	s0,8(sp)
    80002204:	01010413          	addi	s0,sp,16
    return MaximumThreads;
}
    80002208:	00009517          	auipc	a0,0x9
    8000220c:	3b852503          	lw	a0,952(a0) # 8000b5c0 <_ZN3TCB14MaximumThreadsE>
    80002210:	00813403          	ld	s0,8(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <_ZN3TCB5get_bEv>:

TCB *TCB::get_b() {
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00113c23          	sd	ra,24(sp)
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	01213023          	sd	s2,0(sp)
    80002230:	02010413          	addi	s0,sp,32
    if (!b_head) { return 0; }
    80002234:	00009497          	auipc	s1,0x9
    80002238:	60c4b483          	ld	s1,1548(s1) # 8000b840 <_ZN3TCB6b_headE>
    8000223c:	04048a63          	beqz	s1,80002290 <_ZN3TCB5get_bEv+0x74>

    Elem *elem = b_head;
    b_head = b_head->next;
    80002240:	0084b783          	ld	a5,8(s1)
    80002244:	00009717          	auipc	a4,0x9
    80002248:	5ef73e23          	sd	a5,1532(a4) # 8000b840 <_ZN3TCB6b_headE>
    if (!b_head) { b_tail = 0; }
    8000224c:	02078c63          	beqz	a5,80002284 <_ZN3TCB5get_bEv+0x68>

    TCB *ret = elem->data;
    80002250:	0004b903          	ld	s2,0(s1)
    MemoryAllocator::getAlloc().deallocate(elem);
    80002254:	00001097          	auipc	ra,0x1
    80002258:	e90080e7          	jalr	-368(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    8000225c:	00048593          	mv	a1,s1
    80002260:	00001097          	auipc	ra,0x1
    80002264:	fc0080e7          	jalr	-64(ra) # 80003220 <_ZN15MemoryAllocator10deallocateEPv>
    return ret;
}
    80002268:	00090513          	mv	a0,s2
    8000226c:	01813083          	ld	ra,24(sp)
    80002270:	01013403          	ld	s0,16(sp)
    80002274:	00813483          	ld	s1,8(sp)
    80002278:	00013903          	ld	s2,0(sp)
    8000227c:	02010113          	addi	sp,sp,32
    80002280:	00008067          	ret
    if (!b_head) { b_tail = 0; }
    80002284:	00009797          	auipc	a5,0x9
    80002288:	5c07b223          	sd	zero,1476(a5) # 8000b848 <_ZN3TCB6b_tailE>
    8000228c:	fc5ff06f          	j	80002250 <_ZN3TCB5get_bEv+0x34>
    if (!b_head) { return 0; }
    80002290:	00048913          	mv	s2,s1
    80002294:	fd5ff06f          	j	80002268 <_ZN3TCB5get_bEv+0x4c>

0000000080002298 <_ZN3TCB13threadWrapperEv>:
{
    80002298:	fe010113          	addi	sp,sp,-32
    8000229c:	00113c23          	sd	ra,24(sp)
    800022a0:	00813823          	sd	s0,16(sp)
    800022a4:	00913423          	sd	s1,8(sp)
    800022a8:	02010413          	addi	s0,sp,32
   Riscv::popSppSpie();
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	9dc080e7          	jalr	-1572(ra) # 80002c88 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800022b4:	00009497          	auipc	s1,0x9
    800022b8:	56c48493          	addi	s1,s1,1388 # 8000b820 <_ZN3TCB7runningE>
    800022bc:	0004b783          	ld	a5,0(s1)
    800022c0:	0107b703          	ld	a4,16(a5)
    800022c4:	0387b503          	ld	a0,56(a5)
    800022c8:	000700e7          	jalr	a4
    running->setFinished(true);
    800022cc:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800022d0:	00100713          	li	a4,1
    800022d4:	04e78023          	sb	a4,64(a5)
   while(!running->isEmpty()){
    800022d8:	00009517          	auipc	a0,0x9
    800022dc:	54853503          	ld	a0,1352(a0) # 8000b820 <_ZN3TCB7runningE>
    int getID(){return thread_ID;}

    bool isEmpty() const{return head== nullptr;};
    800022e0:	00053783          	ld	a5,0(a0)
    800022e4:	00078c63          	beqz	a5,800022fc <_ZN3TCB13threadWrapperEv+0x64>
        Scheduler::put(running->get());
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	cb4080e7          	jalr	-844(ra) # 80001f9c <_ZN3TCB3getEv>
    800022f0:	00001097          	auipc	ra,0x1
    800022f4:	d80080e7          	jalr	-640(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
   while(!running->isEmpty()){
    800022f8:	fe1ff06f          	j	800022d8 <_ZN3TCB13threadWrapperEv+0x40>
   TCB* t=get_b();
    800022fc:	00000097          	auipc	ra,0x0
    80002300:	f20080e7          	jalr	-224(ra) # 8000221c <_ZN3TCB5get_bEv>
    80002304:	00050493          	mv	s1,a0
   if(t!=0){
    80002308:	06050063          	beqz	a0,80002368 <_ZN3TCB13threadWrapperEv+0xd0>
       printString("VRACA SE U RED ");
    8000230c:	00007517          	auipc	a0,0x7
    80002310:	fbc50513          	addi	a0,a0,-68 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80002314:	00003097          	auipc	ra,0x3
    80002318:	528080e7          	jalr	1320(ra) # 8000583c <_Z11printStringPKc>
       printInt(t->getID());
    8000231c:	00000613          	li	a2,0
    80002320:	00a00593          	li	a1,10
    80002324:	0484a503          	lw	a0,72(s1)
    80002328:	00003097          	auipc	ra,0x3
    8000232c:	6c4080e7          	jalr	1732(ra) # 800059ec <_Z8printIntiii>
       printString(". nit\n");
    80002330:	00007517          	auipc	a0,0x7
    80002334:	fa850513          	addi	a0,a0,-88 # 800092d8 <CONSOLE_STATUS+0x2c8>
    80002338:	00003097          	auipc	ra,0x3
    8000233c:	504080e7          	jalr	1284(ra) # 8000583c <_Z11printStringPKc>
       Scheduler::put(t);
    80002340:	00048513          	mv	a0,s1
    80002344:	00001097          	auipc	ra,0x1
    80002348:	d2c080e7          	jalr	-724(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
    thread_dispatch();
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	218080e7          	jalr	536(ra) # 80001564 <_Z15thread_dispatchv>
}
    80002354:	01813083          	ld	ra,24(sp)
    80002358:	01013403          	ld	s0,16(sp)
    8000235c:	00813483          	ld	s1,8(sp)
    80002360:	02010113          	addi	sp,sp,32
    80002364:	00008067          	ret
   }else running->MaximumThreadsCounter--;
    80002368:	00009717          	auipc	a4,0x9
    8000236c:	4b870713          	addi	a4,a4,1208 # 8000b820 <_ZN3TCB7runningE>
    80002370:	03073783          	ld	a5,48(a4)
    80002374:	fff78793          	addi	a5,a5,-1
    80002378:	02f73823          	sd	a5,48(a4)
    8000237c:	fd1ff06f          	j	8000234c <_ZN3TCB13threadWrapperEv+0xb4>

0000000080002380 <_ZN3TCB5put_bEPS_>:

void TCB::put_b(TCB *ccb) {
    80002380:	fe010113          	addi	sp,sp,-32
    80002384:	00113c23          	sd	ra,24(sp)
    80002388:	00813823          	sd	s0,16(sp)
    8000238c:	00913423          	sd	s1,8(sp)
    80002390:	02010413          	addi	s0,sp,32
    80002394:	00050493          	mv	s1,a0
    Elem *elem = (Elem*)MemoryAllocator::getAlloc().allocate((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	d4c080e7          	jalr	-692(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    800023a0:	00100593          	li	a1,1
    800023a4:	00001097          	auipc	ra,0x1
    800023a8:	dbc080e7          	jalr	-580(ra) # 80003160 <_ZN15MemoryAllocator8allocateEm>
    elem->data=ccb;
    800023ac:	00953023          	sd	s1,0(a0)
    elem->next=0;
    800023b0:	00053423          	sd	zero,8(a0)
    if (b_tail!=0)
    800023b4:	00009797          	auipc	a5,0x9
    800023b8:	4947b783          	ld	a5,1172(a5) # 8000b848 <_ZN3TCB6b_tailE>
    800023bc:	02078263          	beqz	a5,800023e0 <_ZN3TCB5put_bEPS_+0x60>
    {
        b_tail->next = elem;
    800023c0:	00a7b423          	sd	a0,8(a5)
        b_tail = elem;
    800023c4:	00009797          	auipc	a5,0x9
    800023c8:	48a7b223          	sd	a0,1156(a5) # 8000b848 <_ZN3TCB6b_tailE>
    } else
    {
        b_head = b_tail = elem;
    }

}
    800023cc:	01813083          	ld	ra,24(sp)
    800023d0:	01013403          	ld	s0,16(sp)
    800023d4:	00813483          	ld	s1,8(sp)
    800023d8:	02010113          	addi	sp,sp,32
    800023dc:	00008067          	ret
        b_head = b_tail = elem;
    800023e0:	00009797          	auipc	a5,0x9
    800023e4:	44078793          	addi	a5,a5,1088 # 8000b820 <_ZN3TCB7runningE>
    800023e8:	02a7b423          	sd	a0,40(a5)
    800023ec:	02a7b023          	sd	a0,32(a5)
}
    800023f0:	fddff06f          	j	800023cc <_ZN3TCB5put_bEPS_+0x4c>

00000000800023f4 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>:
int TCB::createThread(TCB **handle, TCB::Body body, void *arg, uint64 *stack) {
    800023f4:	fc010113          	addi	sp,sp,-64
    800023f8:	02113c23          	sd	ra,56(sp)
    800023fc:	02813823          	sd	s0,48(sp)
    80002400:	02913423          	sd	s1,40(sp)
    80002404:	03213023          	sd	s2,32(sp)
    80002408:	01313c23          	sd	s3,24(sp)
    8000240c:	01413823          	sd	s4,16(sp)
    80002410:	01513423          	sd	s5,8(sp)
    80002414:	04010413          	addi	s0,sp,64
    80002418:	00050a13          	mv	s4,a0
    8000241c:	00058993          	mv	s3,a1
    80002420:	00060a93          	mv	s5,a2
    80002424:	00068913          	mv	s2,a3
    *handle=new TCB(body,arg,stack,DEFAULT_TIME_SLICE);
    80002428:	05000513          	li	a0,80
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	1b0080e7          	jalr	432(ra) # 800025dc <_Znwm>
    80002434:	00050493          	mv	s1,a0
        if (body != nullptr) { Scheduler::put(this); }
    }*/
    TCB(Body body, void* arg, uint64* stack, uint64 timeSlice)
    {

        thread_ID=id++;
    80002438:	00009797          	auipc	a5,0x9
    8000243c:	3e878793          	addi	a5,a5,1000 # 8000b820 <_ZN3TCB7runningE>
    80002440:	0387b503          	ld	a0,56(a5)
    80002444:	00150713          	addi	a4,a0,1
    80002448:	02e7bc23          	sd	a4,56(a5)
    8000244c:	04a4b423          	sd	a0,72(s1)
        this->arg=arg;
    80002450:	0354bc23          	sd	s5,56(s1)
        this->stack=stack;
    80002454:	0124bc23          	sd	s2,24(s1)
        this->timeSlice=timeSlice;
    80002458:	00200793          	li	a5,2
    8000245c:	02f4b823          	sd	a5,48(s1)
        this->body=body;
    80002460:	0134b823          	sd	s3,16(s1)
        this->finished=false;
    80002464:	04048023          	sb	zero,64(s1)
        this->sleep=false;
    80002468:	04048123          	sb	zero,66(s1)
        this->periodic=false;
    8000246c:	040481a3          	sb	zero,67(s1)
        this->blocked=false;
    80002470:	040480a3          	sb	zero,65(s1)
        head=tail=nullptr;
    80002474:	0004b423          	sd	zero,8(s1)
    80002478:	0004b023          	sd	zero,0(s1)
        this->context={(uint64) &threadWrapper,
                 stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    8000247c:	04090263          	beqz	s2,800024c0 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xcc>
    80002480:	000086b7          	lui	a3,0x8
    80002484:	00d90933          	add	s2,s2,a3
        this->context={(uint64) &threadWrapper,
    80002488:	00000797          	auipc	a5,0x0
    8000248c:	e1078793          	addi	a5,a5,-496 # 80002298 <_ZN3TCB13threadWrapperEv>
    80002490:	02f4b023          	sd	a5,32(s1)
    80002494:	0324b423          	sd	s2,40(s1)
                };

        if (body != nullptr && body!=Thread::wrapper) {
    80002498:	0e098863          	beqz	s3,80002588 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x194>
    8000249c:	00009797          	auipc	a5,0x9
    800024a0:	31c7b783          	ld	a5,796(a5) # 8000b7b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024a4:	0ef98263          	beq	s3,a5,80002588 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x194>
            printInt(getID());
    800024a8:	00000613          	li	a2,0
    800024ac:	00a00593          	li	a1,10
    800024b0:	0005051b          	sext.w	a0,a0
    800024b4:	00003097          	auipc	ra,0x3
    800024b8:	538080e7          	jalr	1336(ra) # 800059ec <_Z8printIntiii>
    800024bc:	00c0006f          	j	800024c8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0xd4>
                 stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800024c0:	00000913          	li	s2,0
    800024c4:	fc5ff06f          	j	80002488 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x94>
            printString(". nit");
    800024c8:	00007517          	auipc	a0,0x7
    800024cc:	e1850513          	addi	a0,a0,-488 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800024d0:	00003097          	auipc	ra,0x3
    800024d4:	36c080e7          	jalr	876(ra) # 8000583c <_Z11printStringPKc>
            printInt(MaximumThreads);
    800024d8:	00000613          	li	a2,0
    800024dc:	00a00593          	li	a1,10
    800024e0:	00009517          	auipc	a0,0x9
    800024e4:	0e052503          	lw	a0,224(a0) # 8000b5c0 <_ZN3TCB14MaximumThreadsE>
    800024e8:	00003097          	auipc	ra,0x3
    800024ec:	504080e7          	jalr	1284(ra) # 800059ec <_Z8printIntiii>
            printString(" ");
    800024f0:	00007517          	auipc	a0,0x7
    800024f4:	df850513          	addi	a0,a0,-520 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800024f8:	00003097          	auipc	ra,0x3
    800024fc:	344080e7          	jalr	836(ra) # 8000583c <_Z11printStringPKc>
            printInt(MaximumThreadsCounter);
    80002500:	00000613          	li	a2,0
    80002504:	00a00593          	li	a1,10
    80002508:	00009517          	auipc	a0,0x9
    8000250c:	34852503          	lw	a0,840(a0) # 8000b850 <_ZN3TCB21MaximumThreadsCounterE>
    80002510:	00003097          	auipc	ra,0x3
    80002514:	4dc080e7          	jalr	1244(ra) # 800059ec <_Z8printIntiii>

            if(MaximumThreadsCounter++>=MaximumThreads){
    80002518:	00009717          	auipc	a4,0x9
    8000251c:	30870713          	addi	a4,a4,776 # 8000b820 <_ZN3TCB7runningE>
    80002520:	03073783          	ld	a5,48(a4)
    80002524:	00178693          	addi	a3,a5,1
    80002528:	02d73823          	sd	a3,48(a4)
    8000252c:	00009717          	auipc	a4,0x9
    80002530:	09473703          	ld	a4,148(a4) # 8000b5c0 <_ZN3TCB14MaximumThreadsE>
    80002534:	04e7e263          	bltu	a5,a4,80002578 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x184>
                printString("  PUN ");
    80002538:	00007517          	auipc	a0,0x7
    8000253c:	db850513          	addi	a0,a0,-584 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80002540:	00003097          	auipc	ra,0x3
    80002544:	2fc080e7          	jalr	764(ra) # 8000583c <_Z11printStringPKc>

                put_b(this);
    80002548:	00048513          	mv	a0,s1
    8000254c:	00000097          	auipc	ra,0x0
    80002550:	e34080e7          	jalr	-460(ra) # 80002380 <_ZN3TCB5put_bEPS_>
                MaximumThreads=MaximumThreadsCounter;
    80002554:	00009797          	auipc	a5,0x9
    80002558:	2fc7b783          	ld	a5,764(a5) # 8000b850 <_ZN3TCB21MaximumThreadsCounterE>
    8000255c:	00009717          	auipc	a4,0x9
    80002560:	06f73223          	sd	a5,100(a4) # 8000b5c0 <_ZN3TCB14MaximumThreadsE>
            }else Scheduler::put(this);
            printString("\n");
    80002564:	00007517          	auipc	a0,0x7
    80002568:	bfc50513          	addi	a0,a0,-1028 # 80009160 <CONSOLE_STATUS+0x150>
    8000256c:	00003097          	auipc	ra,0x3
    80002570:	2d0080e7          	jalr	720(ra) # 8000583c <_Z11printStringPKc>
    80002574:	0140006f          	j	80002588 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x194>
            }else Scheduler::put(this);
    80002578:	00048513          	mv	a0,s1
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	af4080e7          	jalr	-1292(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
    80002584:	fe1ff06f          	j	80002564 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x170>
    80002588:	009a3023          	sd	s1,0(s4)
    if (*handle == nullptr) { return -1; }
    8000258c:	02048663          	beqz	s1,800025b8 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x1c4>
    return 0;
    80002590:	00000513          	li	a0,0
}
    80002594:	03813083          	ld	ra,56(sp)
    80002598:	03013403          	ld	s0,48(sp)
    8000259c:	02813483          	ld	s1,40(sp)
    800025a0:	02013903          	ld	s2,32(sp)
    800025a4:	01813983          	ld	s3,24(sp)
    800025a8:	01013a03          	ld	s4,16(sp)
    800025ac:	00813a83          	ld	s5,8(sp)
    800025b0:	04010113          	addi	sp,sp,64
    800025b4:	00008067          	ret
    if (*handle == nullptr) { return -1; }
    800025b8:	fff00513          	li	a0,-1
    800025bc:	fd9ff06f          	j	80002594 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm+0x1a0>
    800025c0:	00050913          	mv	s2,a0
    *handle=new TCB(body,arg,stack,DEFAULT_TIME_SLICE);
    800025c4:	00048513          	mv	a0,s1
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	064080e7          	jalr	100(ra) # 8000262c <_ZdlPv>
    800025d0:	00090513          	mv	a0,s2
    800025d4:	0000a097          	auipc	ra,0xa
    800025d8:	3d4080e7          	jalr	980(ra) # 8000c9a8 <_Unwind_Resume>

00000000800025dc <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00113423          	sd	ra,8(sp)
    800025e4:	00813023          	sd	s0,0(sp)
    800025e8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	e98080e7          	jalr	-360(ra) # 80001484 <_Z9mem_allocm>

}
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_Znam>:

void *operator new[](size_t n)
{
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00113423          	sd	ra,8(sp)
    8000260c:	00813023          	sd	s0,0(sp)
    80002610:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002614:	fffff097          	auipc	ra,0xfffff
    80002618:	e70080e7          	jalr	-400(ra) # 80001484 <_Z9mem_allocm>
}
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret

000000008000262c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00113423          	sd	ra,8(sp)
    80002634:	00813023          	sd	s0,0(sp)
    80002638:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	ea0080e7          	jalr	-352(ra) # 800014dc <_Z8mem_freePv>
}
    80002644:	00813083          	ld	ra,8(sp)
    80002648:	00013403          	ld	s0,0(sp)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret

0000000080002654 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00113423          	sd	ra,8(sp)
    8000265c:	00813023          	sd	s0,0(sp)
    80002660:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002664:	fffff097          	auipc	ra,0xfffff
    80002668:	e78080e7          	jalr	-392(ra) # 800014dc <_Z8mem_freePv>
}
    8000266c:	00813083          	ld	ra,8(sp)
    80002670:	00013403          	ld	s0,0(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN14PeriodicThread8wrapperPEPv>:
    setPer(true);
    setTime(period);
    thread_create(&getHandle(),wrapperP,this);
}

void PeriodicThread::wrapperP(void *arg) {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00113423          	sd	ra,8(sp)
    80002684:	00813023          	sd	s0,0(sp)
    80002688:	01010413          	addi	s0,sp,16
        PeriodicThread* thread = static_cast<PeriodicThread*>(arg);
        thread->periodicActivation();
    8000268c:	00053783          	ld	a5,0(a0)
    80002690:	0187b783          	ld	a5,24(a5)
    80002694:	000780e7          	jalr	a5


}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    thread_exit();
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	e84080e7          	jalr	-380(ra) # 8000153c <_Z11thread_exitv>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    800026d0:	fe010113          	addi	sp,sp,-32
    800026d4:	00113c23          	sd	ra,24(sp)
    800026d8:	00813823          	sd	s0,16(sp)
    800026dc:	00913423          	sd	s1,8(sp)
    800026e0:	01213023          	sd	s2,0(sp)
    800026e4:	02010413          	addi	s0,sp,32
    800026e8:	00050493          	mv	s1,a0
    800026ec:	00058913          	mv	s2,a1
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	250080e7          	jalr	592(ra) # 80001940 <_ZN6ThreadC1Ev>
    800026f8:	00009797          	auipc	a5,0x9
    800026fc:	ee078793          	addi	a5,a5,-288 # 8000b5d8 <_ZTV14PeriodicThread+0x10>
    80002700:	00f4b023          	sd	a5,0(s1)
    this->period=period;
    80002704:	0324b023          	sd	s2,32(s1)
    setPer(true);
    80002708:	00100593          	li	a1,1
    8000270c:	00048513          	mv	a0,s1
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	32c080e7          	jalr	812(ra) # 80001a3c <_ZN6Thread6setPerEb>
    setTime(period);
    80002718:	00090593          	mv	a1,s2
    8000271c:	00048513          	mv	a0,s1
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	33c080e7          	jalr	828(ra) # 80001a5c <_ZN6Thread7setTimeEm>
    thread_create(&getHandle(),wrapperP,this);
    80002728:	00048613          	mv	a2,s1
    8000272c:	00000597          	auipc	a1,0x0
    80002730:	f5058593          	addi	a1,a1,-176 # 8000267c <_ZN14PeriodicThread8wrapperPEPv>
    80002734:	00848513          	addi	a0,s1,8
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	dd0080e7          	jalr	-560(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    80002740:	0200006f          	j	80002760 <_ZN14PeriodicThreadC1Em+0x90>
    80002744:	00050913          	mv	s2,a0
PeriodicThread::PeriodicThread(time_t period) {
    80002748:	00048513          	mv	a0,s1
    8000274c:	fffff097          	auipc	ra,0xfffff
    80002750:	10c080e7          	jalr	268(ra) # 80001858 <_ZN6ThreadD1Ev>
    80002754:	00090513          	mv	a0,s2
    80002758:	0000a097          	auipc	ra,0xa
    8000275c:	250080e7          	jalr	592(ra) # 8000c9a8 <_Unwind_Resume>
}
    80002760:	01813083          	ld	ra,24(sp)
    80002764:	01013403          	ld	s0,16(sp)
    80002768:	00813483          	ld	s1,8(sp)
    8000276c:	00013903          	ld	s2,0(sp)
    80002770:	02010113          	addi	sp,sp,32
    80002774:	00008067          	ret

0000000080002778 <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate ();
protected:
    PeriodicThread (time_t period);


    virtual void periodicActivation () {}
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00813423          	sd	s0,8(sp)
    80002780:	01010413          	addi	s0,sp,16
    80002784:	00813403          	ld	s0,8(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret

0000000080002790 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00113423          	sd	ra,8(sp)
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	01010413          	addi	s0,sp,16
    800027a0:	00009797          	auipc	a5,0x9
    800027a4:	e3878793          	addi	a5,a5,-456 # 8000b5d8 <_ZTV14PeriodicThread+0x10>
    800027a8:	00f53023          	sd	a5,0(a0)
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	0ac080e7          	jalr	172(ra) # 80001858 <_ZN6ThreadD1Ev>
    800027b4:	00813083          	ld	ra,8(sp)
    800027b8:	00013403          	ld	s0,0(sp)
    800027bc:	01010113          	addi	sp,sp,16
    800027c0:	00008067          	ret

00000000800027c4 <_ZN14PeriodicThreadD0Ev>:
    800027c4:	fe010113          	addi	sp,sp,-32
    800027c8:	00113c23          	sd	ra,24(sp)
    800027cc:	00813823          	sd	s0,16(sp)
    800027d0:	00913423          	sd	s1,8(sp)
    800027d4:	02010413          	addi	s0,sp,32
    800027d8:	00050493          	mv	s1,a0
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	dfc78793          	addi	a5,a5,-516 # 8000b5d8 <_ZTV14PeriodicThread+0x10>
    800027e4:	00f53023          	sd	a5,0(a0)
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	070080e7          	jalr	112(ra) # 80001858 <_ZN6ThreadD1Ev>
    800027f0:	00048513          	mv	a0,s1
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	e38080e7          	jalr	-456(ra) # 8000262c <_ZdlPv>
    800027fc:	01813083          	ld	ra,24(sp)
    80002800:	01013403          	ld	s0,16(sp)
    80002804:	00813483          	ld	s1,8(sp)
    80002808:	02010113          	addi	sp,sp,32
    8000280c:	00008067          	ret

0000000080002810 <_ZN5Riscv9printHexaEm>:


//#include "../h/tcb.hpp"

void Riscv::printHexa(uint64 xx)
{
    80002810:	fd010113          	addi	sp,sp,-48
    80002814:	02113423          	sd	ra,40(sp)
    80002818:	02813023          	sd	s0,32(sp)
    8000281c:	00913c23          	sd	s1,24(sp)
    80002820:	03010413          	addi	s0,sp,48
    char buffer[16];
    for (int i = 7; i >= 0; i--)
    80002824:	00700693          	li	a3,7
    80002828:	0600006f          	j	80002888 <_ZN5Riscv9printHexaEm+0x78>
    {
        uint8 byte = (xx >> (8 * i)) & 0xFF; // i-ti bajt
    8000282c:	0036971b          	slliw	a4,a3,0x3
    80002830:	00e55733          	srl	a4,a0,a4
        buffer[15 - (i*2 + 1)] = ("0123456789ABCDEF"[byte >> 4]);
    80002834:	0ff77613          	andi	a2,a4,255
    80002838:	00465613          	srli	a2,a2,0x4
    8000283c:	00700793          	li	a5,7
    80002840:	40d787bb          	subw	a5,a5,a3
    80002844:	0017979b          	slliw	a5,a5,0x1
    80002848:	00007597          	auipc	a1,0x7
    8000284c:	ab058593          	addi	a1,a1,-1360 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80002850:	00c58633          	add	a2,a1,a2
    80002854:	00064603          	lbu	a2,0(a2)
    80002858:	fe040813          	addi	a6,s0,-32
    8000285c:	00f807b3          	add	a5,a6,a5
    80002860:	fec78823          	sb	a2,-16(a5)
        buffer[15 - (i*2)] = ("0123456789ABCDEF"[byte & 0x0F]);
    80002864:	00f77713          	andi	a4,a4,15
    80002868:	0016961b          	slliw	a2,a3,0x1
    8000286c:	00f00793          	li	a5,15
    80002870:	40c787bb          	subw	a5,a5,a2
    80002874:	00e58733          	add	a4,a1,a4
    80002878:	00074703          	lbu	a4,0(a4)
    8000287c:	00f807b3          	add	a5,a6,a5
    80002880:	fee78823          	sb	a4,-16(a5)
    for (int i = 7; i >= 0; i--)
    80002884:	fff6869b          	addiw	a3,a3,-1
    80002888:	fa06d2e3          	bgez	a3,8000282c <_ZN5Riscv9printHexaEm+0x1c>
    }

    __putc('0'); __putc('x');
    8000288c:	03000513          	li	a0,48
    80002890:	00006097          	auipc	ra,0x6
    80002894:	17c080e7          	jalr	380(ra) # 80008a0c <__putc>
    80002898:	07800513          	li	a0,120
    8000289c:	00006097          	auipc	ra,0x6
    800028a0:	170080e7          	jalr	368(ra) # 80008a0c <__putc>

    int i = 0;
    800028a4:	00000793          	li	a5,0
    while (i < 16) __putc(buffer[i++]);
    800028a8:	00f00713          	li	a4,15
    800028ac:	02f74263          	blt	a4,a5,800028d0 <_ZN5Riscv9printHexaEm+0xc0>
    800028b0:	0017849b          	addiw	s1,a5,1
    800028b4:	fe040713          	addi	a4,s0,-32
    800028b8:	00f707b3          	add	a5,a4,a5
    800028bc:	ff07c503          	lbu	a0,-16(a5)
    800028c0:	00006097          	auipc	ra,0x6
    800028c4:	14c080e7          	jalr	332(ra) # 80008a0c <__putc>
    800028c8:	00048793          	mv	a5,s1
    800028cc:	fddff06f          	j	800028a8 <_ZN5Riscv9printHexaEm+0x98>

}
    800028d0:	02813083          	ld	ra,40(sp)
    800028d4:	02013403          	ld	s0,32(sp)
    800028d8:	01813483          	ld	s1,24(sp)
    800028dc:	03010113          	addi	sp,sp,48
    800028e0:	00008067          	ret

00000000800028e4 <_ZN5Riscv14handleSoftwareEv>:
void Riscv::handleSoftware() {
    800028e4:	f4010113          	addi	sp,sp,-192
    800028e8:	0a113c23          	sd	ra,184(sp)
    800028ec:	0a813823          	sd	s0,176(sp)
    800028f0:	0a913423          	sd	s1,168(sp)
    800028f4:	0b213023          	sd	s2,160(sp)
    800028f8:	09313c23          	sd	s3,152(sp)
    800028fc:	0c010413          	addi	s0,sp,192
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002900:	142027f3          	csrr	a5,scause
    80002904:	f4f43823          	sd	a5,-176(s0)
    return scause;
    80002908:	f5043483          	ld	s1,-176(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000290c:	141027f3          	csrr	a5,sepc
    80002910:	f4f43423          	sd	a5,-184(s0)
    return sepc;
    80002914:	f4843783          	ld	a5,-184(s0)
    uint64 scause = r_scause();
    uint64 volatile sepc = r_sepc() + 4;
    80002918:	00478793          	addi	a5,a5,4
    8000291c:	fcf43423          	sd	a5,-56(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002920:	100027f3          	csrr	a5,sstatus
    80002924:	f4f43023          	sd	a5,-192(s0)
    return sstatus;
    80002928:	f4043783          	ld	a5,-192(s0)
    uint64 volatile sstatus = r_sstatus();
    8000292c:	fcf43023          	sd	a5,-64(s0)


    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002930:	ff848713          	addi	a4,s1,-8
    80002934:	00100793          	li	a5,1
    80002938:	2ae7ea63          	bltu	a5,a4,80002bec <_ZN5Riscv14handleSoftwareEv+0x308>
    __asm__ volatile("ld %0,8*10(fp)":"=r"(ar));
    8000293c:	05043783          	ld	a5,80(s0)
    80002940:	f4f43c23          	sd	a5,-168(s0)
    return ar;
    80002944:	f5843783          	ld	a5,-168(s0)
        uint64 code=r_a0();



        if (code == 0x01) {
    80002948:	00100713          	li	a4,1
    8000294c:	08e78a63          	beq	a5,a4,800029e0 <_ZN5Riscv14handleSoftwareEv+0xfc>

            void* ret=MemoryAllocator::getAlloc().allocate(ar);
            __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));

        }
        else if (code == 0x02) {
    80002950:	00200713          	li	a4,2
    80002954:	0ce78e63          	beq	a5,a4,80002a30 <_ZN5Riscv14handleSoftwareEv+0x14c>
            void* addr=(void*) ar;
            uint64 ret=MemoryAllocator::getAlloc().deallocate(addr);
            w_a0(ret);

        }
        else if (code == 0x11) {
    80002958:	01100713          	li	a4,17
    8000295c:	0ee78e63          	beq	a5,a4,80002a58 <_ZN5Riscv14handleSoftwareEv+0x174>
            uint64 retVal=TCB::createThread(handle,function,arg,stack);

            w_a0(retVal);


        } else if (code == 0x12) {
    80002960:	01200713          	li	a4,18
    80002964:	14e78663          	beq	a5,a4,80002ab0 <_ZN5Riscv14handleSoftwareEv+0x1cc>
            //thread_exit
            TCB::running->setFinished(true);
            TCB::dispatch();

        } else if (code == 0x13) {
    80002968:	01300713          	li	a4,19
    8000296c:	16e78263          	beq	a5,a4,80002ad0 <_ZN5Riscv14handleSoftwareEv+0x1ec>
            //thread_dispatch
            TCB::dispatch();}
        else if(code==0x14){
    80002970:	01400713          	li	a4,20
    80002974:	16e78463          	beq	a5,a4,80002adc <_ZN5Riscv14handleSoftwareEv+0x1f8>
            //thread join
            TCB* handle=(TCB*) r_a1();
            TCB::join(handle);
        }
        else if (code == 0x21) {
    80002978:	02100713          	li	a4,33
    8000297c:	16e78c63          	beq	a5,a4,80002af4 <_ZN5Riscv14handleSoftwareEv+0x210>
            _sem** handle=(_sem**)handle_s;

            int ret=_sem::semOpen(handle,i);
            w_a0(ret);

        } else if (code == 0x22) {
    80002980:	02200713          	li	a4,34
    80002984:	18e78e63          	beq	a5,a4,80002b20 <_ZN5Riscv14handleSoftwareEv+0x23c>
            uint64 s=r_a1();
            _sem* sem=(_sem*)s;
            int ret=_sem::semClose(sem);
            w_a0(ret);

        } else if (code == 0x23) {
    80002988:	02300713          	li	a4,35
    8000298c:	1ae78863          	beq	a5,a4,80002b3c <_ZN5Riscv14handleSoftwareEv+0x258>
            uint64 s=r_a1();
            _sem* sem=(_sem*)s;
            int ret=sem->semWait();
            w_a0(ret);

        } else if (code == 0x24) {
    80002990:	02400713          	li	a4,36
    80002994:	1ce78263          	beq	a5,a4,80002b58 <_ZN5Riscv14handleSoftwareEv+0x274>
            uint64 s=r_a1();
            _sem* sem=(_sem*)s;
            int ret=sem->semSignal();
            w_a0(ret);

        } else if (code == 0x31) {
    80002998:	03100713          	li	a4,49
    8000299c:	1ce78c63          	beq	a5,a4,80002b74 <_ZN5Riscv14handleSoftwareEv+0x290>
            //time_sleep
            time_t time=(time_t)r_a1();
            int ret=TCB::running->thread_sleep(time);
            w_a0(ret);

        } else if (code == 0x41) {
    800029a0:	04100713          	li	a4,65
    800029a4:	1ee78c63          	beq	a5,a4,80002b9c <_ZN5Riscv14handleSoftwareEv+0x2b8>
            //getc
            char c=__getc();
            w_a0((uint64)c);


        } else if (code == 0x42) {
    800029a8:	04200713          	li	a4,66
    800029ac:	20e78063          	beq	a5,a4,80002bac <_ZN5Riscv14handleSoftwareEv+0x2c8>
            //putc
            uint64 ch=r_a1();
            __putc((char)ch);

        }  else if(code==0x26){
    800029b0:	02600713          	li	a4,38
    800029b4:	20e78a63          	beq	a5,a4,80002bc8 <_ZN5Riscv14handleSoftwareEv+0x2e4>
            mc_sstatus(1<<8);
            __asm__ volatile ("csrw sepc, %0" : : "r" (sepc));
            //povratak iz soft prekida
            mc_sip(SIP_SSIP);
            return;
        }else if(code==0x27) {
    800029b8:	02700713          	li	a4,39
    800029bc:	04e79063          	bne	a5,a4,800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
            int ret = TCB::running->getID();
    800029c0:	00009797          	auipc	a5,0x9
    800029c4:	e007b783          	ld	a5,-512(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029c8:	0007b783          	ld	a5,0(a5)
    int getID(){return thread_ID;}
    800029cc:	0487a783          	lw	a5,72(a5)
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    800029d0:	04f43823          	sd	a5,80(s0)
            w_a0(ret);
            thread_dispatch();
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	b90080e7          	jalr	-1136(ra) # 80001564 <_Z15thread_dispatchv>
    800029dc:	0200006f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
            __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    800029e0:	05843483          	ld	s1,88(s0)
            void* ret=MemoryAllocator::getAlloc().allocate(ar);
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	700080e7          	jalr	1792(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    800029ec:	00048593          	mv	a1,s1
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	770080e7          	jalr	1904(ra) # 80003160 <_ZN15MemoryAllocator8allocateEm>
            __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    800029f8:	04a43823          	sd	a0,80(s0)
        }
        else {

        }

        w_sstatus(sstatus);
    800029fc:	fc043783          	ld	a5,-64(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002a00:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002a04:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002a08:	14179073          	csrw	sepc,a5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002a0c:	00200793          	li	a5,2
    80002a10:	1447b073          	csrc	sip,a5
    }


    mc_sip(SIP_SSIP);

}
    80002a14:	0b813083          	ld	ra,184(sp)
    80002a18:	0b013403          	ld	s0,176(sp)
    80002a1c:	0a813483          	ld	s1,168(sp)
    80002a20:	0a013903          	ld	s2,160(sp)
    80002a24:	09813983          	ld	s3,152(sp)
    80002a28:	0c010113          	addi	sp,sp,192
    80002a2c:	00008067          	ret
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002a30:	05843783          	ld	a5,88(s0)
    80002a34:	f6f43023          	sd	a5,-160(s0)
    return ar;
    80002a38:	f6043483          	ld	s1,-160(s0)
            uint64 ret=MemoryAllocator::getAlloc().deallocate(addr);
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	6a8080e7          	jalr	1704(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002a44:	00048593          	mv	a1,s1
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	7d8080e7          	jalr	2008(ra) # 80003220 <_ZN15MemoryAllocator10deallocateEPv>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002a50:	04a43823          	sd	a0,80(s0)
}
    80002a54:	fa9ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002a58:	05843783          	ld	a5,88(s0)
    80002a5c:	f6f43c23          	sd	a5,-136(s0)
    return ar;
    80002a60:	f7843483          	ld	s1,-136(s0)
    __asm__ volatile("ld %0,8*12(fp)":"=r"(ar));
    80002a64:	06043783          	ld	a5,96(s0)
    80002a68:	f6f43823          	sd	a5,-144(s0)
    return ar;
    80002a6c:	f7043903          	ld	s2,-144(s0)
    __asm__ volatile("ld %0,8*13(fp)":"=r"(ar));
    80002a70:	06843783          	ld	a5,104(s0)
    80002a74:	f6f43423          	sd	a5,-152(s0)
    return ar;
    80002a78:	f6843983          	ld	s3,-152(s0)
            uint64* stack=(uint64*)MemoryAllocator::getAlloc().allocate((DEFAULT_STACK_SIZE*8 + MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	668080e7          	jalr	1640(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002a84:	20000593          	li	a1,512
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	6d8080e7          	jalr	1752(ra) # 80003160 <_ZN15MemoryAllocator8allocateEm>
    80002a90:	00050693          	mv	a3,a0
            uint64 retVal=TCB::createThread(handle,function,arg,stack);
    80002a94:	00098613          	mv	a2,s3
    80002a98:	00090593          	mv	a1,s2
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	954080e7          	jalr	-1708(ra) # 800023f4 <_ZN3TCB12createThreadEPPS_PFvPvES2_Pm>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002aa8:	04a43823          	sd	a0,80(s0)
}
    80002aac:	f51ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
            TCB::running->setFinished(true);
    80002ab0:	00009797          	auipc	a5,0x9
    80002ab4:	d107b783          	ld	a5,-752(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ab8:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80002abc:	00100713          	li	a4,1
    80002ac0:	04e78023          	sb	a4,64(a5)
            TCB::dispatch();
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	45c080e7          	jalr	1116(ra) # 80001f20 <_ZN3TCB8dispatchEv>
    80002acc:	f31ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
            TCB::dispatch();}
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	450080e7          	jalr	1104(ra) # 80001f20 <_ZN3TCB8dispatchEv>
    80002ad8:	f25ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002adc:	05843783          	ld	a5,88(s0)
    80002ae0:	f8f43023          	sd	a5,-128(s0)
    return ar;
    80002ae4:	f8043503          	ld	a0,-128(s0)
            TCB::join(handle);
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	594080e7          	jalr	1428(ra) # 8000207c <_ZN3TCB4joinEPS_>
    80002af0:	f0dff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002af4:	05843783          	ld	a5,88(s0)
    80002af8:	f8f43823          	sd	a5,-112(s0)
    return ar;
    80002afc:	f9043583          	ld	a1,-112(s0)
    __asm__ volatile("ld %0,8*12(fp)":"=r"(ar));
    80002b00:	06043783          	ld	a5,96(s0)
    80002b04:	f8f43423          	sd	a5,-120(s0)
    return ar;
    80002b08:	f8843503          	ld	a0,-120(s0)
            int ret=_sem::semOpen(handle,i);
    80002b0c:	0005859b          	sext.w	a1,a1
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	4a4080e7          	jalr	1188(ra) # 80002fb4 <_ZN4_sem7semOpenEPPS_i>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002b18:	04a43823          	sd	a0,80(s0)
}
    80002b1c:	ee1ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002b20:	05843783          	ld	a5,88(s0)
    80002b24:	f8f43c23          	sd	a5,-104(s0)
    return ar;
    80002b28:	f9843503          	ld	a0,-104(s0)
            int ret=_sem::semClose(sem);
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	25c080e7          	jalr	604(ra) # 80002d88 <_ZN4_sem8semCloseEPS_>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002b34:	04a43823          	sd	a0,80(s0)
}
    80002b38:	ec5ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002b3c:	05843783          	ld	a5,88(s0)
    80002b40:	faf43023          	sd	a5,-96(s0)
    return ar;
    80002b44:	fa043503          	ld	a0,-96(s0)
            int ret=sem->semWait();
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	334080e7          	jalr	820(ra) # 80002e7c <_ZN4_sem7semWaitEv>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002b50:	04a43823          	sd	a0,80(s0)
}
    80002b54:	ea9ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002b58:	05843783          	ld	a5,88(s0)
    80002b5c:	faf43423          	sd	a5,-88(s0)
    return ar;
    80002b60:	fa843503          	ld	a0,-88(s0)
            int ret=sem->semSignal();
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	390080e7          	jalr	912(ra) # 80002ef4 <_ZN4_sem9semSignalEv>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002b6c:	04a43823          	sd	a0,80(s0)
}
    80002b70:	e8dff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002b74:	05843783          	ld	a5,88(s0)
    80002b78:	faf43823          	sd	a5,-80(s0)
    return ar;
    80002b7c:	fb043583          	ld	a1,-80(s0)
            int ret=TCB::running->thread_sleep(time);
    80002b80:	00009797          	auipc	a5,0x9
    80002b84:	c407b783          	ld	a5,-960(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002b88:	0007b503          	ld	a0,0(a5)
    80002b8c:	fffff097          	auipc	ra,0xfffff
    80002b90:	570080e7          	jalr	1392(ra) # 800020fc <_ZN3TCB12thread_sleepEm>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002b94:	04a43823          	sd	a0,80(s0)
}
    80002b98:	e65ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
            char c=__getc();
    80002b9c:	00006097          	auipc	ra,0x6
    80002ba0:	eac080e7          	jalr	-340(ra) # 80008a48 <__getc>
    __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80002ba4:	04a43823          	sd	a0,80(s0)
}
    80002ba8:	e55ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
    __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));
    80002bac:	05843783          	ld	a5,88(s0)
    80002bb0:	faf43c23          	sd	a5,-72(s0)
    return ar;
    80002bb4:	fb843503          	ld	a0,-72(s0)
            __putc((char)ch);
    80002bb8:	0ff57513          	andi	a0,a0,255
    80002bbc:	00006097          	auipc	ra,0x6
    80002bc0:	e50080e7          	jalr	-432(ra) # 80008a0c <__putc>
    80002bc4:	e39ff06f          	j	800029fc <_ZN5Riscv14handleSoftwareEv+0x118>
            w_sstatus(sstatus);
    80002bc8:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002bcc:	10079073          	csrw	sstatus,a5
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002bd0:	10000793          	li	a5,256
    80002bd4:	1007b073          	csrc	sstatus,a5
            __asm__ volatile ("csrw sepc, %0" : : "r" (sepc));
    80002bd8:	fc843783          	ld	a5,-56(s0)
    80002bdc:	14179073          	csrw	sepc,a5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002be0:	00200793          	li	a5,2
    80002be4:	1447b073          	csrc	sip,a5
            return;
    80002be8:	e2dff06f          	j	80002a14 <_ZN5Riscv14handleSoftwareEv+0x130>
        printString("GRESKA scause=");
    80002bec:	00006517          	auipc	a0,0x6
    80002bf0:	72450513          	addi	a0,a0,1828 # 80009310 <CONSOLE_STATUS+0x300>
    80002bf4:	00003097          	auipc	ra,0x3
    80002bf8:	c48080e7          	jalr	-952(ra) # 8000583c <_Z11printStringPKc>
        printInt(scause);
    80002bfc:	00000613          	li	a2,0
    80002c00:	00a00593          	li	a1,10
    80002c04:	0004851b          	sext.w	a0,s1
    80002c08:	00003097          	auipc	ra,0x3
    80002c0c:	de4080e7          	jalr	-540(ra) # 800059ec <_Z8printIntiii>
        printString("\n");
    80002c10:	00006517          	auipc	a0,0x6
    80002c14:	55050513          	addi	a0,a0,1360 # 80009160 <CONSOLE_STATUS+0x150>
    80002c18:	00003097          	auipc	ra,0x3
    80002c1c:	c24080e7          	jalr	-988(ra) # 8000583c <_Z11printStringPKc>
        printHexa(sepc);
    80002c20:	fc843503          	ld	a0,-56(s0)
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	bec080e7          	jalr	-1044(ra) # 80002810 <_ZN5Riscv9printHexaEm>
        printString("\n");
    80002c2c:	00006517          	auipc	a0,0x6
    80002c30:	53450513          	addi	a0,a0,1332 # 80009160 <CONSOLE_STATUS+0x150>
    80002c34:	00003097          	auipc	ra,0x3
    80002c38:	c08080e7          	jalr	-1016(ra) # 8000583c <_Z11printStringPKc>
        while(true);
    80002c3c:	0000006f          	j	80002c3c <_ZN5Riscv14handleSoftwareEv+0x358>

0000000080002c40 <_ZN5Riscv10handleTimeEv>:

void Riscv::handleTime() {
    80002c40:	ff010113          	addi	sp,sp,-16
    80002c44:	00813423          	sd	s0,8(sp)
    80002c48:	01010413          	addi	s0,sp,16
    80002c4c:	00200793          	li	a5,2
    80002c50:	1447b073          	csrc	sip,a5
           }
       }*/

    mc_sip(SIP_SSIP);

}
    80002c54:	00813403          	ld	s0,8(sp)
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret

0000000080002c60 <_ZN5Riscv13handleConsoleEv>:

void Riscv::handleConsole() {
    80002c60:	ff010113          	addi	sp,sp,-16
    80002c64:	00113423          	sd	ra,8(sp)
    80002c68:	00813023          	sd	s0,0(sp)
    80002c6c:	01010413          	addi	s0,sp,16

    console_handler();
    80002c70:	00006097          	auipc	ra,0x6
    80002c74:	e10080e7          	jalr	-496(ra) # 80008a80 <console_handler>


}
    80002c78:	00813083          	ld	ra,8(sp)
    80002c7c:	00013403          	ld	s0,0(sp)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret

0000000080002c88 <_ZN5Riscv10popSppSpieEv>:
void Riscv::popSppSpie()
{
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813423          	sd	s0,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002c94:	14109073          	csrw	sepc,ra

    __asm__ volatile("sret");
    80002c98:	10200073          	sret
}
    80002c9c:	00813403          	ld	s0,8(sp)
    80002ca0:	01010113          	addi	sp,sp,16
    80002ca4:	00008067          	ret

0000000080002ca8 <_ZN4_sem3getEv>:




TCB* _sem::get()
{
    80002ca8:	fe010113          	addi	sp,sp,-32
    80002cac:	00113c23          	sd	ra,24(sp)
    80002cb0:	00813823          	sd	s0,16(sp)
    80002cb4:	00913423          	sd	s1,8(sp)
    80002cb8:	01213023          	sd	s2,0(sp)
    80002cbc:	02010413          	addi	s0,sp,32
    if (!head) { return 0; }
    80002cc0:	01053483          	ld	s1,16(a0)
    80002cc4:	04048663          	beqz	s1,80002d10 <_ZN4_sem3getEv+0x68>

    Elem1 *elem = head;
    head = head->next;
    80002cc8:	0084b783          	ld	a5,8(s1)
    80002ccc:	00f53823          	sd	a5,16(a0)
    if (!head) { tail = 0; }
    80002cd0:	02078c63          	beqz	a5,80002d08 <_ZN4_sem3getEv+0x60>

    TCB *ret = elem->data;
    80002cd4:	0004b903          	ld	s2,0(s1)
    MemoryAllocator::getAlloc().deallocate(elem);
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	40c080e7          	jalr	1036(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002ce0:	00048593          	mv	a1,s1
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	53c080e7          	jalr	1340(ra) # 80003220 <_ZN15MemoryAllocator10deallocateEPv>
    return ret;
}
    80002cec:	00090513          	mv	a0,s2
    80002cf0:	01813083          	ld	ra,24(sp)
    80002cf4:	01013403          	ld	s0,16(sp)
    80002cf8:	00813483          	ld	s1,8(sp)
    80002cfc:	00013903          	ld	s2,0(sp)
    80002d00:	02010113          	addi	sp,sp,32
    80002d04:	00008067          	ret
    if (!head) { tail = 0; }
    80002d08:	00053c23          	sd	zero,24(a0)
    80002d0c:	fc9ff06f          	j	80002cd4 <_ZN4_sem3getEv+0x2c>
    if (!head) { return 0; }
    80002d10:	00048913          	mv	s2,s1
    80002d14:	fd9ff06f          	j	80002cec <_ZN4_sem3getEv+0x44>

0000000080002d18 <_ZN4_sem3putEP3TCB>:
void _sem::put(TCB *ccb)
{
    80002d18:	fe010113          	addi	sp,sp,-32
    80002d1c:	00113c23          	sd	ra,24(sp)
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	01213023          	sd	s2,0(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	00050493          	mv	s1,a0
    80002d34:	00058913          	mv	s2,a1
    Elem1 *elem = (Elem1*)MemoryAllocator::getAlloc().allocate((sizeof(Elem1)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	3ac080e7          	jalr	940(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002d40:	00100593          	li	a1,1
    80002d44:	00000097          	auipc	ra,0x0
    80002d48:	41c080e7          	jalr	1052(ra) # 80003160 <_ZN15MemoryAllocator8allocateEm>
    elem->data=ccb;
    80002d4c:	01253023          	sd	s2,0(a0)
    elem->next=0;
    80002d50:	00053423          	sd	zero,8(a0)
    if (tail!=0)
    80002d54:	0184b783          	ld	a5,24(s1)
    80002d58:	02078263          	beqz	a5,80002d7c <_ZN4_sem3putEP3TCB+0x64>
    {
        tail->next = elem;
    80002d5c:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    80002d60:	00a4bc23          	sd	a0,24(s1)
    } else
    {
        head = tail = elem;
    }
}
    80002d64:	01813083          	ld	ra,24(sp)
    80002d68:	01013403          	ld	s0,16(sp)
    80002d6c:	00813483          	ld	s1,8(sp)
    80002d70:	00013903          	ld	s2,0(sp)
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00008067          	ret
        head = tail = elem;
    80002d7c:	00a4bc23          	sd	a0,24(s1)
    80002d80:	00a4b823          	sd	a0,16(s1)
}
    80002d84:	fe1ff06f          	j	80002d64 <_ZN4_sem3putEP3TCB+0x4c>

0000000080002d88 <_ZN4_sem8semCloseEPS_>:

int _sem::semClose(_sem *handle) {
    if(handle== nullptr)return -1;
    80002d88:	06050e63          	beqz	a0,80002e04 <_ZN4_sem8semCloseEPS_+0x7c>
int _sem::semClose(_sem *handle) {
    80002d8c:	fe010113          	addi	sp,sp,-32
    80002d90:	00113c23          	sd	ra,24(sp)
    80002d94:	00813823          	sd	s0,16(sp)
    80002d98:	00913423          	sd	s1,8(sp)
    80002d9c:	02010413          	addi	s0,sp,32
    80002da0:	00050493          	mv	s1,a0
    TCB* t=handle->get();
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	f04080e7          	jalr	-252(ra) # 80002ca8 <_ZN4_sem3getEv>
    while(t!= nullptr){
    80002dac:	02050663          	beqz	a0,80002dd8 <_ZN4_sem8semCloseEPS_+0x50>
    void setBlocked(bool value) { blocked = value; }
    80002db0:	040500a3          	sb	zero,65(a0)
        t->setBlocked(false);
        Scheduler::put(handle->get());
    80002db4:	00048513          	mv	a0,s1
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	ef0080e7          	jalr	-272(ra) # 80002ca8 <_ZN4_sem3getEv>
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	2b0080e7          	jalr	688(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
        t=handle->get();
    80002dc8:	00048513          	mv	a0,s1
    80002dcc:	00000097          	auipc	ra,0x0
    80002dd0:	edc080e7          	jalr	-292(ra) # 80002ca8 <_ZN4_sem3getEv>
    while(t!= nullptr){
    80002dd4:	fd9ff06f          	j	80002dac <_ZN4_sem8semCloseEPS_+0x24>
    }
   MemoryAllocator::getAlloc().deallocate(handle);
    80002dd8:	00000097          	auipc	ra,0x0
    80002ddc:	30c080e7          	jalr	780(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002de0:	00048593          	mv	a1,s1
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	43c080e7          	jalr	1084(ra) # 80003220 <_ZN15MemoryAllocator10deallocateEPv>
    handle=nullptr;
    return 0;
    80002dec:	00000513          	li	a0,0

}
    80002df0:	01813083          	ld	ra,24(sp)
    80002df4:	01013403          	ld	s0,16(sp)
    80002df8:	00813483          	ld	s1,8(sp)
    80002dfc:	02010113          	addi	sp,sp,32
    80002e00:	00008067          	ret
    if(handle== nullptr)return -1;
    80002e04:	fff00513          	li	a0,-1
}
    80002e08:	00008067          	ret

0000000080002e0c <_ZN4_semD1Ev>:

_sem::~_sem() {
    80002e0c:	fe010113          	addi	sp,sp,-32
    80002e10:	00113c23          	sd	ra,24(sp)
    80002e14:	00813823          	sd	s0,16(sp)
    80002e18:	00913423          	sd	s1,8(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    80002e20:	00050493          	mv	s1,a0
    this->closed=1;
    80002e24:	00100793          	li	a5,1
    80002e28:	00f52423          	sw	a5,8(a0)
    TCB* t=this->get();
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	e7c080e7          	jalr	-388(ra) # 80002ca8 <_ZN4_sem3getEv>
    while(t!= nullptr){
    80002e34:	02050063          	beqz	a0,80002e54 <_ZN4_semD1Ev+0x48>
    80002e38:	040500a3          	sb	zero,65(a0)
        t->setBlocked(false);
        Scheduler::put(t);
    80002e3c:	00000097          	auipc	ra,0x0
    80002e40:	234080e7          	jalr	564(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
        t=this->get();
    80002e44:	00048513          	mv	a0,s1
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	e60080e7          	jalr	-416(ra) # 80002ca8 <_ZN4_sem3getEv>
    while(t!= nullptr){
    80002e50:	fe5ff06f          	j	80002e34 <_ZN4_semD1Ev+0x28>
    }
    MemoryAllocator::getAlloc().deallocate(this);
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	290080e7          	jalr	656(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80002e5c:	00048593          	mv	a1,s1
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	3c0080e7          	jalr	960(ra) # 80003220 <_ZN15MemoryAllocator10deallocateEPv>

}
    80002e68:	01813083          	ld	ra,24(sp)
    80002e6c:	01013403          	ld	s0,16(sp)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	02010113          	addi	sp,sp,32
    80002e78:	00008067          	ret

0000000080002e7c <_ZN4_sem7semWaitEv>:

int _sem::semWait() {

    if(closed==1)return -1;
    80002e7c:	00852703          	lw	a4,8(a0)
    80002e80:	00100793          	li	a5,1
    80002e84:	06f70463          	beq	a4,a5,80002eec <_ZN4_sem7semWaitEv+0x70>

    int ret = -1;
    ret=0;
    if (--val >= 0) {
    80002e88:	00452783          	lw	a5,4(a0)
    80002e8c:	fff7879b          	addiw	a5,a5,-1
    80002e90:	00f52223          	sw	a5,4(a0)
    80002e94:	02079713          	slli	a4,a5,0x20
    80002e98:	00074663          	bltz	a4,80002ea4 <_ZN4_sem7semWaitEv+0x28>
        TCB::running->setBlocked(true);
        put(TCB::running);
        thread_dispatch();
    }

    return ret;
    80002e9c:	00000513          	li	a0,0
}
    80002ea0:	00008067          	ret
int _sem::semWait() {
    80002ea4:	ff010113          	addi	sp,sp,-16
    80002ea8:	00113423          	sd	ra,8(sp)
    80002eac:	00813023          	sd	s0,0(sp)
    80002eb0:	01010413          	addi	s0,sp,16
        TCB::running->setBlocked(true);
    80002eb4:	00009797          	auipc	a5,0x9
    80002eb8:	90c7b783          	ld	a5,-1780(a5) # 8000b7c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ebc:	0007b583          	ld	a1,0(a5)
    80002ec0:	00100793          	li	a5,1
    80002ec4:	04f580a3          	sb	a5,65(a1)
        put(TCB::running);
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	e50080e7          	jalr	-432(ra) # 80002d18 <_ZN4_sem3putEP3TCB>
        thread_dispatch();
    80002ed0:	ffffe097          	auipc	ra,0xffffe
    80002ed4:	694080e7          	jalr	1684(ra) # 80001564 <_Z15thread_dispatchv>
    return ret;
    80002ed8:	00000513          	li	a0,0
}
    80002edc:	00813083          	ld	ra,8(sp)
    80002ee0:	00013403          	ld	s0,0(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00008067          	ret
    if(closed==1)return -1;
    80002eec:	fff00513          	li	a0,-1
    80002ef0:	00008067          	ret

0000000080002ef4 <_ZN4_sem9semSignalEv>:


int _sem::semSignal() {

    if(closed == 1) return -1;
    80002ef4:	00852703          	lw	a4,8(a0)
    80002ef8:	00100793          	li	a5,1
    80002efc:	04f70e63          	beq	a4,a5,80002f58 <_ZN4_sem9semSignalEv+0x64>

    int ret = 0;

        if (++val <= 0) {
    80002f00:	00452783          	lw	a5,4(a0)
    80002f04:	0017879b          	addiw	a5,a5,1
    80002f08:	0007871b          	sext.w	a4,a5
    80002f0c:	00f52223          	sw	a5,4(a0)
    80002f10:	00e05663          	blez	a4,80002f1c <_ZN4_sem9semSignalEv+0x28>
               Scheduler::put(t);
           }
        }
    //}

    return ret;
    80002f14:	00000513          	li	a0,0
}
    80002f18:	00008067          	ret
int _sem::semSignal() {
    80002f1c:	ff010113          	addi	sp,sp,-16
    80002f20:	00113423          	sd	ra,8(sp)
    80002f24:	00813023          	sd	s0,0(sp)
    80002f28:	01010413          	addi	s0,sp,16
            TCB *t = get();
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	d7c080e7          	jalr	-644(ra) # 80002ca8 <_ZN4_sem3getEv>
           if(t!=nullptr){
    80002f34:	02050663          	beqz	a0,80002f60 <_ZN4_sem9semSignalEv+0x6c>
    80002f38:	040500a3          	sb	zero,65(a0)
               Scheduler::put(t);
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	134080e7          	jalr	308(ra) # 80003070 <_ZN9Scheduler3putEP3TCB>
    return ret;
    80002f44:	00000513          	li	a0,0
}
    80002f48:	00813083          	ld	ra,8(sp)
    80002f4c:	00013403          	ld	s0,0(sp)
    80002f50:	01010113          	addi	sp,sp,16
    80002f54:	00008067          	ret
    if(closed == 1) return -1;
    80002f58:	fff00513          	li	a0,-1
    80002f5c:	00008067          	ret
    return ret;
    80002f60:	00000513          	li	a0,0
    80002f64:	fe5ff06f          	j	80002f48 <_ZN4_sem9semSignalEv+0x54>

0000000080002f68 <_ZN4_sem9semCreateEi>:


_sem *_sem::semCreate(int i) {
    80002f68:	fe010113          	addi	sp,sp,-32
    80002f6c:	00113c23          	sd	ra,24(sp)
    80002f70:	00813823          	sd	s0,16(sp)
    80002f74:	00913423          	sd	s1,8(sp)
    80002f78:	02010413          	addi	s0,sp,32
    80002f7c:	00050493          	mv	s1,a0
    return new _sem(i);
    80002f80:	02000513          	li	a0,32
    80002f84:	fffff097          	auipc	ra,0xfffff
    80002f88:	658080e7          	jalr	1624(ra) # 800025dc <_Znwm>



class _sem {
private:
    _sem(int i):init(i){head=tail=nullptr;closed=0;val=i;};
    80002f8c:	00952023          	sw	s1,0(a0)
    80002f90:	00053c23          	sd	zero,24(a0)
    80002f94:	00053823          	sd	zero,16(a0)
    80002f98:	00052423          	sw	zero,8(a0)
    80002f9c:	00952223          	sw	s1,4(a0)
}
    80002fa0:	01813083          	ld	ra,24(sp)
    80002fa4:	01013403          	ld	s0,16(sp)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret

0000000080002fb4 <_ZN4_sem7semOpenEPPS_i>:


int _sem::semOpen(_sem **handle, int i) {
    80002fb4:	fe010113          	addi	sp,sp,-32
    80002fb8:	00113c23          	sd	ra,24(sp)
    80002fbc:	00813823          	sd	s0,16(sp)
    80002fc0:	00913423          	sd	s1,8(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    80002fc8:	00050493          	mv	s1,a0
    _sem* h=semCreate(i);
    80002fcc:	00058513          	mv	a0,a1
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	f98080e7          	jalr	-104(ra) # 80002f68 <_ZN4_sem9semCreateEi>
    *handle=h;
    80002fd8:	00a4b023          	sd	a0,0(s1)
    return 0;
}
    80002fdc:	00000513          	li	a0,0
    80002fe0:	01813083          	ld	ra,24(sp)
    80002fe4:	01013403          	ld	s0,16(sp)
    80002fe8:	00813483          	ld	s1,8(sp)
    80002fec:	02010113          	addi	sp,sp,32
    80002ff0:	00008067          	ret

0000000080002ff4 <_ZN9Scheduler3getEv>:

Elem* Scheduler::head=nullptr;
Elem* Scheduler::tail=nullptr;

TCB *Scheduler::get()
{
    80002ff4:	fe010113          	addi	sp,sp,-32
    80002ff8:	00113c23          	sd	ra,24(sp)
    80002ffc:	00813823          	sd	s0,16(sp)
    80003000:	00913423          	sd	s1,8(sp)
    80003004:	01213023          	sd	s2,0(sp)
    80003008:	02010413          	addi	s0,sp,32
    if (!head) { return 0; }
    8000300c:	00009497          	auipc	s1,0x9
    80003010:	8544b483          	ld	s1,-1964(s1) # 8000b860 <_ZN9Scheduler4headE>
    80003014:	04048a63          	beqz	s1,80003068 <_ZN9Scheduler3getEv+0x74>

    Elem *elem = head;
    head = head->next;
    80003018:	0084b783          	ld	a5,8(s1)
    8000301c:	00009717          	auipc	a4,0x9
    80003020:	84f73223          	sd	a5,-1980(a4) # 8000b860 <_ZN9Scheduler4headE>
    if (!head) { tail = 0; }
    80003024:	02078c63          	beqz	a5,8000305c <_ZN9Scheduler3getEv+0x68>

    TCB *ret = elem->data;
    80003028:	0004b903          	ld	s2,0(s1)
    MemoryAllocator::getAlloc().deallocate(elem);
    8000302c:	00000097          	auipc	ra,0x0
    80003030:	0b8080e7          	jalr	184(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80003034:	00048593          	mv	a1,s1
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	1e8080e7          	jalr	488(ra) # 80003220 <_ZN15MemoryAllocator10deallocateEPv>
    return ret;
}
    80003040:	00090513          	mv	a0,s2
    80003044:	01813083          	ld	ra,24(sp)
    80003048:	01013403          	ld	s0,16(sp)
    8000304c:	00813483          	ld	s1,8(sp)
    80003050:	00013903          	ld	s2,0(sp)
    80003054:	02010113          	addi	sp,sp,32
    80003058:	00008067          	ret
    if (!head) { tail = 0; }
    8000305c:	00009797          	auipc	a5,0x9
    80003060:	8007b623          	sd	zero,-2036(a5) # 8000b868 <_ZN9Scheduler4tailE>
    80003064:	fc5ff06f          	j	80003028 <_ZN9Scheduler3getEv+0x34>
    if (!head) { return 0; }
    80003068:	00048913          	mv	s2,s1
    8000306c:	fd5ff06f          	j	80003040 <_ZN9Scheduler3getEv+0x4c>

0000000080003070 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *ccb)
{
    80003070:	fe010113          	addi	sp,sp,-32
    80003074:	00113c23          	sd	ra,24(sp)
    80003078:	00813823          	sd	s0,16(sp)
    8000307c:	00913423          	sd	s1,8(sp)
    80003080:	02010413          	addi	s0,sp,32
    80003084:	00050493          	mv	s1,a0
    Elem *elem = (Elem*)MemoryAllocator::getAlloc().allocate((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    80003088:	00000097          	auipc	ra,0x0
    8000308c:	05c080e7          	jalr	92(ra) # 800030e4 <_ZN15MemoryAllocator8getAllocEv>
    80003090:	00100593          	li	a1,1
    80003094:	00000097          	auipc	ra,0x0
    80003098:	0cc080e7          	jalr	204(ra) # 80003160 <_ZN15MemoryAllocator8allocateEm>
    elem->data=ccb;
    8000309c:	00953023          	sd	s1,0(a0)
    elem->next=0;
    800030a0:	00053423          	sd	zero,8(a0)
    if (tail!=nullptr)
    800030a4:	00008797          	auipc	a5,0x8
    800030a8:	7c47b783          	ld	a5,1988(a5) # 8000b868 <_ZN9Scheduler4tailE>
    800030ac:	02078263          	beqz	a5,800030d0 <_ZN9Scheduler3putEP3TCB+0x60>
    {
        tail->next = elem;
    800030b0:	00a7b423          	sd	a0,8(a5)
        tail = elem;
    800030b4:	00008797          	auipc	a5,0x8
    800030b8:	7aa7ba23          	sd	a0,1972(a5) # 8000b868 <_ZN9Scheduler4tailE>
    } else
    {
        head = tail = elem;
    }
    800030bc:	01813083          	ld	ra,24(sp)
    800030c0:	01013403          	ld	s0,16(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret
        head = tail = elem;
    800030d0:	00008797          	auipc	a5,0x8
    800030d4:	79078793          	addi	a5,a5,1936 # 8000b860 <_ZN9Scheduler4headE>
    800030d8:	00a7b423          	sd	a0,8(a5)
    800030dc:	00a7b023          	sd	a0,0(a5)
    800030e0:	fddff06f          	j	800030bc <_ZN9Scheduler3putEP3TCB+0x4c>

00000000800030e4 <_ZN15MemoryAllocator8getAllocEv>:

#include "../h/MemoryAllocator.h"



MemoryAllocator &MemoryAllocator::getAlloc() {
    800030e4:	ff010113          	addi	sp,sp,-16
    800030e8:	00813423          	sd	s0,8(sp)
    800030ec:	01010413          	addi	s0,sp,16
    static MemoryAllocator allocator;
    800030f0:	00008797          	auipc	a5,0x8
    800030f4:	7807c783          	lbu	a5,1920(a5) # 8000b870 <_ZGVZN15MemoryAllocator8getAllocEvE9allocator>
    800030f8:	04079a63          	bnez	a5,8000314c <_ZN15MemoryAllocator8getAllocEv+0x68>
        size_t size;
    };
    Segment* head;
    Segment* busy;
    MemoryAllocator(){
        head=(Segment*)((uint64*)HEAP_START_ADDR);
    800030fc:	00008697          	auipc	a3,0x8
    80003100:	6ac6b683          	ld	a3,1708(a3) # 8000b7a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003104:	0006b783          	ld	a5,0(a3)
    80003108:	00008717          	auipc	a4,0x8
    8000310c:	76870713          	addi	a4,a4,1896 # 8000b870 <_ZGVZN15MemoryAllocator8getAllocEvE9allocator>
    80003110:	00f73423          	sd	a5,8(a4)
        head->next= nullptr;
    80003114:	0007b423          	sd	zero,8(a5)
        head->prev=nullptr;
    80003118:	0007b023          	sd	zero,0(a5)
        head->size=((uint64*)HEAP_END_ADDR-(uint64*)HEAP_START_ADDR - sizeof(MemoryAllocator) + MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000311c:	00008797          	auipc	a5,0x8
    80003120:	6ac7b783          	ld	a5,1708(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003124:	0007b783          	ld	a5,0(a5)
    80003128:	0006b683          	ld	a3,0(a3)
    8000312c:	40d787b3          	sub	a5,a5,a3
    80003130:	4037d793          	srai	a5,a5,0x3
    80003134:	02f78793          	addi	a5,a5,47
    80003138:	00873683          	ld	a3,8(a4)
    8000313c:	0067d793          	srli	a5,a5,0x6
    80003140:	00f6b823          	sd	a5,16(a3)
    80003144:	00100793          	li	a5,1
    80003148:	00f70023          	sb	a5,0(a4)
    return allocator;
}
    8000314c:	00008517          	auipc	a0,0x8
    80003150:	72c50513          	addi	a0,a0,1836 # 8000b878 <_ZZN15MemoryAllocator8getAllocEvE9allocator>
    80003154:	00813403          	ld	s0,8(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN15MemoryAllocator8allocateEm>:

void* MemoryAllocator::allocate(size_t s) {
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00813423          	sd	s0,8(sp)
    80003168:	01010413          	addi	s0,sp,16
    8000316c:	00050713          	mv	a4,a0
    Segment* cur=head;
    80003170:	00053503          	ld	a0,0(a0)
    void* ret= nullptr;
    if(head==nullptr)return nullptr;
    80003174:	06050263          	beqz	a0,800031d8 <_ZN15MemoryAllocator8allocateEm+0x78>
    for(cur=head;cur!=nullptr;cur=cur->next){
    80003178:	04050c63          	beqz	a0,800031d0 <_ZN15MemoryAllocator8allocateEm+0x70>
        //first fit
        if(cur->size>=s){
    8000317c:	01053783          	ld	a5,16(a0)
    80003180:	00b7f663          	bgeu	a5,a1,8000318c <_ZN15MemoryAllocator8allocateEm+0x2c>
    for(cur=head;cur!=nullptr;cur=cur->next){
    80003184:	00853503          	ld	a0,8(a0)
    80003188:	ff1ff06f          	j	80003178 <_ZN15MemoryAllocator8allocateEm+0x18>
            ret=cur;
            if(cur->size-s==0){
    8000318c:	04b78c63          	beq	a5,a1,800031e4 <_ZN15MemoryAllocator8allocateEm+0x84>

                cur->size=s;
                break;
            }
            else{
                Segment*newFree=(Segment*)((char*)cur+s * MEM_BLOCK_SIZE);
    80003190:	00659793          	slli	a5,a1,0x6
    80003194:	00f507b3          	add	a5,a0,a5
                if(cur->prev==nullptr) head=newFree;
    80003198:	00053683          	ld	a3,0(a0)
    8000319c:	06068e63          	beqz	a3,80003218 <_ZN15MemoryAllocator8allocateEm+0xb8>
                else (cur->prev)->next=newFree;
    800031a0:	00f6b423          	sd	a5,8(a3)
                if(cur->next!=nullptr) (cur->next)->prev=newFree;
    800031a4:	00853703          	ld	a4,8(a0)
    800031a8:	00070463          	beqz	a4,800031b0 <_ZN15MemoryAllocator8allocateEm+0x50>
    800031ac:	00f73023          	sd	a5,0(a4)
                newFree->prev=cur->prev;
    800031b0:	00053703          	ld	a4,0(a0)
    800031b4:	00e7b023          	sd	a4,0(a5)
                newFree->next=cur->next;
    800031b8:	00853703          	ld	a4,8(a0)
    800031bc:	00e7b423          	sd	a4,8(a5)
                newFree->size=cur->size-s;
    800031c0:	01053703          	ld	a4,16(a0)
    800031c4:	40b70733          	sub	a4,a4,a1
    800031c8:	00e7b823          	sd	a4,16(a5)

                cur->size=s;
    800031cc:	00b53823          	sd	a1,16(a0)
            }
            cur->size=s;
            break;
        }
    }
    if(ret== nullptr) return nullptr;
    800031d0:	00050463          	beqz	a0,800031d8 <_ZN15MemoryAllocator8allocateEm+0x78>
    return (char*)ret+sizeof(Segment);
    800031d4:	01850513          	addi	a0,a0,24
}
    800031d8:	00813403          	ld	s0,8(sp)
    800031dc:	01010113          	addi	sp,sp,16
    800031e0:	00008067          	ret
                if(cur->prev != nullptr)(cur->prev)->next=cur->next;
    800031e4:	00053783          	ld	a5,0(a0)
    800031e8:	02078263          	beqz	a5,8000320c <_ZN15MemoryAllocator8allocateEm+0xac>
    800031ec:	00853703          	ld	a4,8(a0)
    800031f0:	00e7b423          	sd	a4,8(a5)
                if(cur->next!= nullptr)(cur->next)->prev=cur->prev;
    800031f4:	00853783          	ld	a5,8(a0)
    800031f8:	00078663          	beqz	a5,80003204 <_ZN15MemoryAllocator8allocateEm+0xa4>
    800031fc:	00053703          	ld	a4,0(a0)
    80003200:	00e7b023          	sd	a4,0(a5)
                cur->size=s;
    80003204:	00b53823          	sd	a1,16(a0)
                break;
    80003208:	fc9ff06f          	j	800031d0 <_ZN15MemoryAllocator8allocateEm+0x70>
                else head=cur->next;
    8000320c:	00853783          	ld	a5,8(a0)
    80003210:	00f73023          	sd	a5,0(a4)
    80003214:	fe1ff06f          	j	800031f4 <_ZN15MemoryAllocator8allocateEm+0x94>
                if(cur->prev==nullptr) head=newFree;
    80003218:	00f73023          	sd	a5,0(a4)
    8000321c:	f89ff06f          	j	800031a4 <_ZN15MemoryAllocator8allocateEm+0x44>

0000000080003220 <_ZN15MemoryAllocator10deallocateEPv>:

int MemoryAllocator::deallocate(void *addr) {
    80003220:	ff010113          	addi	sp,sp,-16
    80003224:	00813423          	sd	s0,8(sp)
    80003228:	01010413          	addi	s0,sp,16
    if((uint64*)addr<HEAP_START_ADDR || (uint64*)addr>=HEAP_END_ADDR) return -1;
    8000322c:	00008797          	auipc	a5,0x8
    80003230:	57c7b783          	ld	a5,1404(a5) # 8000b7a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003234:	0007b783          	ld	a5,0(a5)
    80003238:	14f5e663          	bltu	a1,a5,80003384 <_ZN15MemoryAllocator10deallocateEPv+0x164>
    8000323c:	00008797          	auipc	a5,0x8
    80003240:	58c7b783          	ld	a5,1420(a5) # 8000b7c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003244:	0007b783          	ld	a5,0(a5)
    80003248:	14f5f263          	bgeu	a1,a5,8000338c <_ZN15MemoryAllocator10deallocateEPv+0x16c>
    Segment* cur=nullptr;
    if(head==nullptr ||(char*)addr<(char*)head){
    8000324c:	00053683          	ld	a3,0(a0)
    80003250:	0a068863          	beqz	a3,80003300 <_ZN15MemoryAllocator10deallocateEPv+0xe0>
    80003254:	04d5ea63          	bltu	a1,a3,800032a8 <_ZN15MemoryAllocator10deallocateEPv+0x88>
     cur=0;
     //insert as first;
    }
    else {
        for(cur=head;cur->next!=0 && (char*)addr>(char*)(cur->next);cur=cur->next);
    80003258:	00068793          	mv	a5,a3
    8000325c:	00078713          	mv	a4,a5
    80003260:	0087b783          	ld	a5,8(a5)
    80003264:	00078463          	beqz	a5,8000326c <_ZN15MemoryAllocator10deallocateEPv+0x4c>
    80003268:	feb7eae3          	bltu	a5,a1,8000325c <_ZN15MemoryAllocator10deallocateEPv+0x3c>
    }
    //prethodno nadjeno gde treba da se ubaci
    Segment* segment=(Segment*)((char*)addr -sizeof(Segment));
    8000326c:	fe858613          	addi	a2,a1,-24

    //probaj da spojis sa prethodnim


    if(cur!=0 && (char*)cur +cur->size*MEM_BLOCK_SIZE == (char*)segment){
    80003270:	04070063          	beqz	a4,800032b0 <_ZN15MemoryAllocator10deallocateEPv+0x90>
    80003274:	01073883          	ld	a7,16(a4)
    80003278:	00689813          	slli	a6,a7,0x6
    8000327c:	01070833          	add	a6,a4,a6
    80003280:	02c81863          	bne	a6,a2,800032b0 <_ZN15MemoryAllocator10deallocateEPv+0x90>
        //spoji sa pret
        cur->size+=segment->size;
    80003284:	ff85b683          	ld	a3,-8(a1)
    80003288:	00d888b3          	add	a7,a7,a3
    8000328c:	01173823          	sd	a7,16(a4)

        //pokusaj da ceo spojimo sa sledecim
        if(cur->next && (char*)(cur->next)==(char*)cur+cur->size*MEM_BLOCK_SIZE){
    80003290:	00078863          	beqz	a5,800032a0 <_ZN15MemoryAllocator10deallocateEPv+0x80>
    80003294:	00689693          	slli	a3,a7,0x6
    80003298:	00d706b3          	add	a3,a4,a3
    8000329c:	06d78863          	beq	a5,a3,8000330c <_ZN15MemoryAllocator10deallocateEPv+0xec>
            cur->size+=cur->next->size;
            cur->next=cur->next->next;
            if(cur->next) cur->next->prev=cur;
        }
        return 0;
    800032a0:	00000513          	li	a0,0
    800032a4:	0500006f          	j	800032f4 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
    Segment* segment=(Segment*)((char*)addr -sizeof(Segment));
    800032a8:	fe858613          	addi	a2,a1,-24
     cur=0;
    800032ac:	00000713          	li	a4,0
    }
    else{
        //probaj da spojis sa sledecim ne moze da prethodnim
        Segment*nextS=0;
        if(cur!=nullptr) nextS=cur->next;
    800032b0:	00070463          	beqz	a4,800032b8 <_ZN15MemoryAllocator10deallocateEPv+0x98>
    800032b4:	00873683          	ld	a3,8(a4)
        else nextS=head;
        if(nextS!=nullptr && (char*)((char*)segment+segment->size*MEM_BLOCK_SIZE)==(char*) nextS){
    800032b8:	00068a63          	beqz	a3,800032cc <_ZN15MemoryAllocator10deallocateEPv+0xac>
    800032bc:	ff85b803          	ld	a6,-8(a1)
    800032c0:	00681793          	slli	a5,a6,0x6
    800032c4:	00f607b3          	add	a5,a2,a5
    800032c8:	06d78263          	beq	a5,a3,8000332c <_ZN15MemoryAllocator10deallocateEPv+0x10c>
            return 0;
        }
        else
        {
            //ne treba povezivanje samo uvezi
            segment->prev=cur;
    800032cc:	fee5b423          	sd	a4,-24(a1)
            if(cur) segment->next=cur->next;
    800032d0:	08070e63          	beqz	a4,8000336c <_ZN15MemoryAllocator10deallocateEPv+0x14c>
    800032d4:	00873783          	ld	a5,8(a4)
    800032d8:	fef5b823          	sd	a5,-16(a1)
            else segment->next=head;

            if(segment->next) segment->next->prev=segment;
    800032dc:	ff05b783          	ld	a5,-16(a1)
    800032e0:	00078463          	beqz	a5,800032e8 <_ZN15MemoryAllocator10deallocateEPv+0xc8>
    800032e4:	00c7b023          	sd	a2,0(a5)
            if(cur) cur->next=segment;
    800032e8:	08070863          	beqz	a4,80003378 <_ZN15MemoryAllocator10deallocateEPv+0x158>
    800032ec:	00c73423          	sd	a2,8(a4)
            else head=segment;
        }
    }

    return 0;
    800032f0:	00000513          	li	a0,0
}
    800032f4:	00813403          	ld	s0,8(sp)
    800032f8:	01010113          	addi	sp,sp,16
    800032fc:	00008067          	ret
    Segment* segment=(Segment*)((char*)addr -sizeof(Segment));
    80003300:	fe858613          	addi	a2,a1,-24
     cur=0;
    80003304:	00068713          	mv	a4,a3
    80003308:	fa9ff06f          	j	800032b0 <_ZN15MemoryAllocator10deallocateEPv+0x90>
            cur->size+=cur->next->size;
    8000330c:	0107b683          	ld	a3,16(a5)
    80003310:	00d888b3          	add	a7,a7,a3
    80003314:	01173823          	sd	a7,16(a4)
            cur->next=cur->next->next;
    80003318:	0087b783          	ld	a5,8(a5)
    8000331c:	00f73423          	sd	a5,8(a4)
            if(cur->next) cur->next->prev=cur;
    80003320:	f80780e3          	beqz	a5,800032a0 <_ZN15MemoryAllocator10deallocateEPv+0x80>
    80003324:	00e7b023          	sd	a4,0(a5)
    80003328:	f79ff06f          	j	800032a0 <_ZN15MemoryAllocator10deallocateEPv+0x80>
            segment->size+=nextS->size;
    8000332c:	0106b783          	ld	a5,16(a3)
    80003330:	00f80833          	add	a6,a6,a5
    80003334:	ff05bc23          	sd	a6,-8(a1)
            segment->prev=nextS->prev;
    80003338:	0006b783          	ld	a5,0(a3)
    8000333c:	fef5b423          	sd	a5,-24(a1)
            segment->next=nextS->next;
    80003340:	0086b783          	ld	a5,8(a3)
    80003344:	fef5b823          	sd	a5,-16(a1)
            if(nextS->next)nextS->next->prev=segment;
    80003348:	00078463          	beqz	a5,80003350 <_ZN15MemoryAllocator10deallocateEPv+0x130>
    8000334c:	00c7b023          	sd	a2,0(a5)
            if(nextS->prev) nextS->prev->next=segment;
    80003350:	0006b783          	ld	a5,0(a3)
    80003354:	00078863          	beqz	a5,80003364 <_ZN15MemoryAllocator10deallocateEPv+0x144>
    80003358:	00c7b423          	sd	a2,8(a5)
            return 0;
    8000335c:	00000513          	li	a0,0
    80003360:	f95ff06f          	j	800032f4 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
            else head=segment;
    80003364:	00c53023          	sd	a2,0(a0)
    80003368:	ff5ff06f          	j	8000335c <_ZN15MemoryAllocator10deallocateEPv+0x13c>
            else segment->next=head;
    8000336c:	00053783          	ld	a5,0(a0)
    80003370:	fef5b823          	sd	a5,-16(a1)
    80003374:	f69ff06f          	j	800032dc <_ZN15MemoryAllocator10deallocateEPv+0xbc>
            else head=segment;
    80003378:	00c53023          	sd	a2,0(a0)
    return 0;
    8000337c:	00000513          	li	a0,0
    80003380:	f75ff06f          	j	800032f4 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
    if((uint64*)addr<HEAP_START_ADDR || (uint64*)addr>=HEAP_END_ADDR) return -1;
    80003384:	fff00513          	li	a0,-1
    80003388:	f6dff06f          	j	800032f4 <_ZN15MemoryAllocator10deallocateEPv+0xd4>
    8000338c:	fff00513          	li	a0,-1
    80003390:	f65ff06f          	j	800032f4 <_ZN15MemoryAllocator10deallocateEPv+0xd4>

0000000080003394 <_ZN15MemoryAllocator7getSizeEv>:

int MemoryAllocator::getSize() {
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00813423          	sd	s0,8(sp)
    8000339c:	01010413          	addi	s0,sp,16
    return sizeof(Segment);
}
    800033a0:	01800513          	li	a0,24
    800033a4:	00813403          	ld	s0,8(sp)
    800033a8:	01010113          	addi	sp,sp,16
    800033ac:	00008067          	ret

00000000800033b0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800033b0:	fe010113          	addi	sp,sp,-32
    800033b4:	00113c23          	sd	ra,24(sp)
    800033b8:	00813823          	sd	s0,16(sp)
    800033bc:	00913423          	sd	s1,8(sp)
    800033c0:	01213023          	sd	s2,0(sp)
    800033c4:	02010413          	addi	s0,sp,32
    800033c8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800033cc:	00000913          	li	s2,0
    800033d0:	00c0006f          	j	800033dc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	190080e7          	jalr	400(ra) # 80001564 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	2b0080e7          	jalr	688(ra) # 8000168c <_Z4getcv>
    800033e4:	0005059b          	sext.w	a1,a0
    800033e8:	01b00793          	li	a5,27
    800033ec:	02f58a63          	beq	a1,a5,80003420 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800033f0:	0084b503          	ld	a0,8(s1)
    800033f4:	00003097          	auipc	ra,0x3
    800033f8:	2cc080e7          	jalr	716(ra) # 800066c0 <_ZN6Buffer3putEi>
        i++;
    800033fc:	0019071b          	addiw	a4,s2,1
    80003400:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003404:	0004a683          	lw	a3,0(s1)
    80003408:	0026979b          	slliw	a5,a3,0x2
    8000340c:	00d787bb          	addw	a5,a5,a3
    80003410:	0017979b          	slliw	a5,a5,0x1
    80003414:	02f767bb          	remw	a5,a4,a5
    80003418:	fc0792e3          	bnez	a5,800033dc <_ZL16producerKeyboardPv+0x2c>
    8000341c:	fb9ff06f          	j	800033d4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003420:	00100793          	li	a5,1
    80003424:	00008717          	auipc	a4,0x8
    80003428:	46f72223          	sw	a5,1124(a4) # 8000b888 <_ZL9threadEnd>
    data->buffer->put('!');
    8000342c:	02100593          	li	a1,33
    80003430:	0084b503          	ld	a0,8(s1)
    80003434:	00003097          	auipc	ra,0x3
    80003438:	28c080e7          	jalr	652(ra) # 800066c0 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000343c:	0104b503          	ld	a0,16(s1)
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	1f8080e7          	jalr	504(ra) # 80001638 <_Z10sem_signalP4_sem>
}
    80003448:	01813083          	ld	ra,24(sp)
    8000344c:	01013403          	ld	s0,16(sp)
    80003450:	00813483          	ld	s1,8(sp)
    80003454:	00013903          	ld	s2,0(sp)
    80003458:	02010113          	addi	sp,sp,32
    8000345c:	00008067          	ret

0000000080003460 <_ZL8producerPv>:

static void producer(void *arg) {
    80003460:	fe010113          	addi	sp,sp,-32
    80003464:	00113c23          	sd	ra,24(sp)
    80003468:	00813823          	sd	s0,16(sp)
    8000346c:	00913423          	sd	s1,8(sp)
    80003470:	01213023          	sd	s2,0(sp)
    80003474:	02010413          	addi	s0,sp,32
    80003478:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000347c:	00000913          	li	s2,0
    80003480:	00c0006f          	j	8000348c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	0e0080e7          	jalr	224(ra) # 80001564 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000348c:	00008797          	auipc	a5,0x8
    80003490:	3fc7a783          	lw	a5,1020(a5) # 8000b888 <_ZL9threadEnd>
    80003494:	02079e63          	bnez	a5,800034d0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003498:	0004a583          	lw	a1,0(s1)
    8000349c:	0305859b          	addiw	a1,a1,48
    800034a0:	0084b503          	ld	a0,8(s1)
    800034a4:	00003097          	auipc	ra,0x3
    800034a8:	21c080e7          	jalr	540(ra) # 800066c0 <_ZN6Buffer3putEi>
        i++;
    800034ac:	0019071b          	addiw	a4,s2,1
    800034b0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800034b4:	0004a683          	lw	a3,0(s1)
    800034b8:	0026979b          	slliw	a5,a3,0x2
    800034bc:	00d787bb          	addw	a5,a5,a3
    800034c0:	0017979b          	slliw	a5,a5,0x1
    800034c4:	02f767bb          	remw	a5,a4,a5
    800034c8:	fc0792e3          	bnez	a5,8000348c <_ZL8producerPv+0x2c>
    800034cc:	fb9ff06f          	j	80003484 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800034d0:	0104b503          	ld	a0,16(s1)
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	164080e7          	jalr	356(ra) # 80001638 <_Z10sem_signalP4_sem>
}
    800034dc:	01813083          	ld	ra,24(sp)
    800034e0:	01013403          	ld	s0,16(sp)
    800034e4:	00813483          	ld	s1,8(sp)
    800034e8:	00013903          	ld	s2,0(sp)
    800034ec:	02010113          	addi	sp,sp,32
    800034f0:	00008067          	ret

00000000800034f4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800034f4:	fd010113          	addi	sp,sp,-48
    800034f8:	02113423          	sd	ra,40(sp)
    800034fc:	02813023          	sd	s0,32(sp)
    80003500:	00913c23          	sd	s1,24(sp)
    80003504:	01213823          	sd	s2,16(sp)
    80003508:	01313423          	sd	s3,8(sp)
    8000350c:	03010413          	addi	s0,sp,48
    80003510:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003514:	00000993          	li	s3,0
    80003518:	01c0006f          	j	80003534 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	048080e7          	jalr	72(ra) # 80001564 <_Z15thread_dispatchv>
    80003524:	0500006f          	j	80003574 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003528:	00a00513          	li	a0,10
    8000352c:	ffffe097          	auipc	ra,0xffffe
    80003530:	188080e7          	jalr	392(ra) # 800016b4 <_Z4putcc>
    while (!threadEnd) {
    80003534:	00008797          	auipc	a5,0x8
    80003538:	3547a783          	lw	a5,852(a5) # 8000b888 <_ZL9threadEnd>
    8000353c:	06079063          	bnez	a5,8000359c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003540:	00893503          	ld	a0,8(s2)
    80003544:	00003097          	auipc	ra,0x3
    80003548:	20c080e7          	jalr	524(ra) # 80006750 <_ZN6Buffer3getEv>
        i++;
    8000354c:	0019849b          	addiw	s1,s3,1
    80003550:	0004899b          	sext.w	s3,s1
        putc(key);
    80003554:	0ff57513          	andi	a0,a0,255
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	15c080e7          	jalr	348(ra) # 800016b4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003560:	00092703          	lw	a4,0(s2)
    80003564:	0027179b          	slliw	a5,a4,0x2
    80003568:	00e787bb          	addw	a5,a5,a4
    8000356c:	02f4e7bb          	remw	a5,s1,a5
    80003570:	fa0786e3          	beqz	a5,8000351c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003574:	05000793          	li	a5,80
    80003578:	02f4e4bb          	remw	s1,s1,a5
    8000357c:	fa049ce3          	bnez	s1,80003534 <_ZL8consumerPv+0x40>
    80003580:	fa9ff06f          	j	80003528 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003584:	00893503          	ld	a0,8(s2)
    80003588:	00003097          	auipc	ra,0x3
    8000358c:	1c8080e7          	jalr	456(ra) # 80006750 <_ZN6Buffer3getEv>
        putc(key);
    80003590:	0ff57513          	andi	a0,a0,255
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	120080e7          	jalr	288(ra) # 800016b4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000359c:	00893503          	ld	a0,8(s2)
    800035a0:	00003097          	auipc	ra,0x3
    800035a4:	23c080e7          	jalr	572(ra) # 800067dc <_ZN6Buffer6getCntEv>
    800035a8:	fca04ee3          	bgtz	a0,80003584 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800035ac:	01093503          	ld	a0,16(s2)
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	088080e7          	jalr	136(ra) # 80001638 <_Z10sem_signalP4_sem>
}
    800035b8:	02813083          	ld	ra,40(sp)
    800035bc:	02013403          	ld	s0,32(sp)
    800035c0:	01813483          	ld	s1,24(sp)
    800035c4:	01013903          	ld	s2,16(sp)
    800035c8:	00813983          	ld	s3,8(sp)
    800035cc:	03010113          	addi	sp,sp,48
    800035d0:	00008067          	ret

00000000800035d4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800035d4:	f9010113          	addi	sp,sp,-112
    800035d8:	06113423          	sd	ra,104(sp)
    800035dc:	06813023          	sd	s0,96(sp)
    800035e0:	04913c23          	sd	s1,88(sp)
    800035e4:	05213823          	sd	s2,80(sp)
    800035e8:	05313423          	sd	s3,72(sp)
    800035ec:	05413023          	sd	s4,64(sp)
    800035f0:	03513c23          	sd	s5,56(sp)
    800035f4:	03613823          	sd	s6,48(sp)
    800035f8:	07010413          	addi	s0,sp,112
    }


    sem_close(waitForAll);

    delete buffer;
    800035fc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003600:	00006517          	auipc	a0,0x6
    80003604:	d2050513          	addi	a0,a0,-736 # 80009320 <CONSOLE_STATUS+0x310>
    80003608:	00002097          	auipc	ra,0x2
    8000360c:	234080e7          	jalr	564(ra) # 8000583c <_Z11printStringPKc>
    getString(input, 30);
    80003610:	01e00593          	li	a1,30
    80003614:	fa040493          	addi	s1,s0,-96
    80003618:	00048513          	mv	a0,s1
    8000361c:	00002097          	auipc	ra,0x2
    80003620:	2a8080e7          	jalr	680(ra) # 800058c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003624:	00048513          	mv	a0,s1
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	374080e7          	jalr	884(ra) # 8000599c <_Z11stringToIntPKc>
    80003630:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003634:	00006517          	auipc	a0,0x6
    80003638:	d0c50513          	addi	a0,a0,-756 # 80009340 <CONSOLE_STATUS+0x330>
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	200080e7          	jalr	512(ra) # 8000583c <_Z11printStringPKc>
    getString(input, 30);
    80003644:	01e00593          	li	a1,30
    80003648:	00048513          	mv	a0,s1
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	278080e7          	jalr	632(ra) # 800058c4 <_Z9getStringPci>
    n = stringToInt(input);
    80003654:	00048513          	mv	a0,s1
    80003658:	00002097          	auipc	ra,0x2
    8000365c:	344080e7          	jalr	836(ra) # 8000599c <_Z11stringToIntPKc>
    80003660:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003664:	00006517          	auipc	a0,0x6
    80003668:	cfc50513          	addi	a0,a0,-772 # 80009360 <CONSOLE_STATUS+0x350>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	1d0080e7          	jalr	464(ra) # 8000583c <_Z11printStringPKc>
    80003674:	00000613          	li	a2,0
    80003678:	00a00593          	li	a1,10
    8000367c:	00090513          	mv	a0,s2
    80003680:	00002097          	auipc	ra,0x2
    80003684:	36c080e7          	jalr	876(ra) # 800059ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003688:	00006517          	auipc	a0,0x6
    8000368c:	cf050513          	addi	a0,a0,-784 # 80009378 <CONSOLE_STATUS+0x368>
    80003690:	00002097          	auipc	ra,0x2
    80003694:	1ac080e7          	jalr	428(ra) # 8000583c <_Z11printStringPKc>
    80003698:	00000613          	li	a2,0
    8000369c:	00a00593          	li	a1,10
    800036a0:	00048513          	mv	a0,s1
    800036a4:	00002097          	auipc	ra,0x2
    800036a8:	348080e7          	jalr	840(ra) # 800059ec <_Z8printIntiii>
    printString(".\n");
    800036ac:	00006517          	auipc	a0,0x6
    800036b0:	ce450513          	addi	a0,a0,-796 # 80009390 <CONSOLE_STATUS+0x380>
    800036b4:	00002097          	auipc	ra,0x2
    800036b8:	188080e7          	jalr	392(ra) # 8000583c <_Z11printStringPKc>
    if(threadNum > n) {
    800036bc:	0324c463          	blt	s1,s2,800036e4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800036c0:	03205c63          	blez	s2,800036f8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800036c4:	03800513          	li	a0,56
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	f14080e7          	jalr	-236(ra) # 800025dc <_Znwm>
    800036d0:	00050a13          	mv	s4,a0
    800036d4:	00048593          	mv	a1,s1
    800036d8:	00003097          	auipc	ra,0x3
    800036dc:	f4c080e7          	jalr	-180(ra) # 80006624 <_ZN6BufferC1Ei>
    800036e0:	0300006f          	j	80003710 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800036e4:	00006517          	auipc	a0,0x6
    800036e8:	cb450513          	addi	a0,a0,-844 # 80009398 <CONSOLE_STATUS+0x388>
    800036ec:	00002097          	auipc	ra,0x2
    800036f0:	150080e7          	jalr	336(ra) # 8000583c <_Z11printStringPKc>
        return;
    800036f4:	0140006f          	j	80003708 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800036f8:	00006517          	auipc	a0,0x6
    800036fc:	ce050513          	addi	a0,a0,-800 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80003700:	00002097          	auipc	ra,0x2
    80003704:	13c080e7          	jalr	316(ra) # 8000583c <_Z11printStringPKc>
        return;
    80003708:	000b0113          	mv	sp,s6
    8000370c:	1640006f          	j	80003870 <_Z22producerConsumer_C_APIv+0x29c>
    sem_open(&waitForAll, 0);
    80003710:	00000593          	li	a1,0
    80003714:	00008517          	auipc	a0,0x8
    80003718:	17c50513          	addi	a0,a0,380 # 8000b890 <_ZL10waitForAll>
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	e8c080e7          	jalr	-372(ra) # 800015a8 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003724:	00391793          	slli	a5,s2,0x3
    80003728:	00f78793          	addi	a5,a5,15
    8000372c:	ff07f793          	andi	a5,a5,-16
    80003730:	40f10133          	sub	sp,sp,a5
    80003734:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003738:	0019071b          	addiw	a4,s2,1
    8000373c:	00171793          	slli	a5,a4,0x1
    80003740:	00e787b3          	add	a5,a5,a4
    80003744:	00379793          	slli	a5,a5,0x3
    80003748:	00f78793          	addi	a5,a5,15
    8000374c:	ff07f793          	andi	a5,a5,-16
    80003750:	40f10133          	sub	sp,sp,a5
    80003754:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003758:	00191613          	slli	a2,s2,0x1
    8000375c:	012607b3          	add	a5,a2,s2
    80003760:	00379793          	slli	a5,a5,0x3
    80003764:	00f987b3          	add	a5,s3,a5
    80003768:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000376c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003770:	00008717          	auipc	a4,0x8
    80003774:	12073703          	ld	a4,288(a4) # 8000b890 <_ZL10waitForAll>
    80003778:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000377c:	00078613          	mv	a2,a5
    80003780:	00000597          	auipc	a1,0x0
    80003784:	d7458593          	addi	a1,a1,-652 # 800034f4 <_ZL8consumerPv>
    80003788:	f9840513          	addi	a0,s0,-104
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	d7c080e7          	jalr	-644(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003794:	00000493          	li	s1,0
    80003798:	0280006f          	j	800037c0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000379c:	00000597          	auipc	a1,0x0
    800037a0:	c1458593          	addi	a1,a1,-1004 # 800033b0 <_ZL16producerKeyboardPv>
                      data + i);
    800037a4:	00179613          	slli	a2,a5,0x1
    800037a8:	00f60633          	add	a2,a2,a5
    800037ac:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800037b0:	00c98633          	add	a2,s3,a2
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	d54080e7          	jalr	-684(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800037bc:	0014849b          	addiw	s1,s1,1
    800037c0:	0524d263          	bge	s1,s2,80003804 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800037c4:	00149793          	slli	a5,s1,0x1
    800037c8:	009787b3          	add	a5,a5,s1
    800037cc:	00379793          	slli	a5,a5,0x3
    800037d0:	00f987b3          	add	a5,s3,a5
    800037d4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800037d8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800037dc:	00008717          	auipc	a4,0x8
    800037e0:	0b473703          	ld	a4,180(a4) # 8000b890 <_ZL10waitForAll>
    800037e4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800037e8:	00048793          	mv	a5,s1
    800037ec:	00349513          	slli	a0,s1,0x3
    800037f0:	00aa8533          	add	a0,s5,a0
    800037f4:	fa9054e3          	blez	s1,8000379c <_Z22producerConsumer_C_APIv+0x1c8>
    800037f8:	00000597          	auipc	a1,0x0
    800037fc:	c6858593          	addi	a1,a1,-920 # 80003460 <_ZL8producerPv>
    80003800:	fa5ff06f          	j	800037a4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	d60080e7          	jalr	-672(ra) # 80001564 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000380c:	00000493          	li	s1,0
    80003810:	02994863          	blt	s2,s1,80003840 <_Z22producerConsumer_C_APIv+0x26c>
        sem_wait(waitForAll);
    80003814:	00008517          	auipc	a0,0x8
    80003818:	07c53503          	ld	a0,124(a0) # 8000b890 <_ZL10waitForAll>
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	df0080e7          	jalr	-528(ra) # 8000160c <_Z8sem_waitP4_sem>
        printInt(i);
    80003824:	00000613          	li	a2,0
    80003828:	00a00593          	li	a1,10
    8000382c:	00048513          	mv	a0,s1
    80003830:	00002097          	auipc	ra,0x2
    80003834:	1bc080e7          	jalr	444(ra) # 800059ec <_Z8printIntiii>
    for (int i = 0; i <= threadNum; i++) {
    80003838:	0014849b          	addiw	s1,s1,1
    8000383c:	fd5ff06f          	j	80003810 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003840:	00008517          	auipc	a0,0x8
    80003844:	05053503          	ld	a0,80(a0) # 8000b890 <_ZL10waitForAll>
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	d98080e7          	jalr	-616(ra) # 800015e0 <_Z9sem_closeP4_sem>
    delete buffer;
    80003850:	000a0e63          	beqz	s4,8000386c <_Z22producerConsumer_C_APIv+0x298>
    80003854:	000a0513          	mv	a0,s4
    80003858:	00003097          	auipc	ra,0x3
    8000385c:	00c080e7          	jalr	12(ra) # 80006864 <_ZN6BufferD1Ev>
    80003860:	000a0513          	mv	a0,s4
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	dc8080e7          	jalr	-568(ra) # 8000262c <_ZdlPv>
    8000386c:	000b0113          	mv	sp,s6

}
    80003870:	f9040113          	addi	sp,s0,-112
    80003874:	06813083          	ld	ra,104(sp)
    80003878:	06013403          	ld	s0,96(sp)
    8000387c:	05813483          	ld	s1,88(sp)
    80003880:	05013903          	ld	s2,80(sp)
    80003884:	04813983          	ld	s3,72(sp)
    80003888:	04013a03          	ld	s4,64(sp)
    8000388c:	03813a83          	ld	s5,56(sp)
    80003890:	03013b03          	ld	s6,48(sp)
    80003894:	07010113          	addi	sp,sp,112
    80003898:	00008067          	ret
    8000389c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800038a0:	000a0513          	mv	a0,s4
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	d88080e7          	jalr	-632(ra) # 8000262c <_ZdlPv>
    800038ac:	00048513          	mv	a0,s1
    800038b0:	00009097          	auipc	ra,0x9
    800038b4:	0f8080e7          	jalr	248(ra) # 8000c9a8 <_Unwind_Resume>

00000000800038b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800038b8:	fe010113          	addi	sp,sp,-32
    800038bc:	00113c23          	sd	ra,24(sp)
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00913423          	sd	s1,8(sp)
    800038c8:	01213023          	sd	s2,0(sp)
    800038cc:	02010413          	addi	s0,sp,32
    800038d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800038d4:	00100793          	li	a5,1
    800038d8:	02a7f863          	bgeu	a5,a0,80003908 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800038dc:	00a00793          	li	a5,10
    800038e0:	02f577b3          	remu	a5,a0,a5
    800038e4:	02078e63          	beqz	a5,80003920 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800038e8:	fff48513          	addi	a0,s1,-1
    800038ec:	00000097          	auipc	ra,0x0
    800038f0:	fcc080e7          	jalr	-52(ra) # 800038b8 <_ZL9fibonaccim>
    800038f4:	00050913          	mv	s2,a0
    800038f8:	ffe48513          	addi	a0,s1,-2
    800038fc:	00000097          	auipc	ra,0x0
    80003900:	fbc080e7          	jalr	-68(ra) # 800038b8 <_ZL9fibonaccim>
    80003904:	00a90533          	add	a0,s2,a0
}
    80003908:	01813083          	ld	ra,24(sp)
    8000390c:	01013403          	ld	s0,16(sp)
    80003910:	00813483          	ld	s1,8(sp)
    80003914:	00013903          	ld	s2,0(sp)
    80003918:	02010113          	addi	sp,sp,32
    8000391c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	c44080e7          	jalr	-956(ra) # 80001564 <_Z15thread_dispatchv>
    80003928:	fc1ff06f          	j	800038e8 <_ZL9fibonaccim+0x30>

000000008000392c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000392c:	fe010113          	addi	sp,sp,-32
    80003930:	00113c23          	sd	ra,24(sp)
    80003934:	00813823          	sd	s0,16(sp)
    80003938:	00913423          	sd	s1,8(sp)
    8000393c:	01213023          	sd	s2,0(sp)
    80003940:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003944:	00000913          	li	s2,0
    80003948:	0380006f          	j	80003980 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	c18080e7          	jalr	-1000(ra) # 80001564 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003954:	00148493          	addi	s1,s1,1
    80003958:	000027b7          	lui	a5,0x2
    8000395c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003960:	0097ee63          	bltu	a5,s1,8000397c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003964:	00000713          	li	a4,0
    80003968:	000077b7          	lui	a5,0x7
    8000396c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003970:	fce7eee3          	bltu	a5,a4,8000394c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003974:	00170713          	addi	a4,a4,1
    80003978:	ff1ff06f          	j	80003968 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000397c:	00190913          	addi	s2,s2,1
    80003980:	00900793          	li	a5,9
    80003984:	0527e063          	bltu	a5,s2,800039c4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003988:	00006517          	auipc	a0,0x6
    8000398c:	a8050513          	addi	a0,a0,-1408 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003990:	00002097          	auipc	ra,0x2
    80003994:	eac080e7          	jalr	-340(ra) # 8000583c <_Z11printStringPKc>
    80003998:	00000613          	li	a2,0
    8000399c:	00a00593          	li	a1,10
    800039a0:	0009051b          	sext.w	a0,s2
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	048080e7          	jalr	72(ra) # 800059ec <_Z8printIntiii>
    800039ac:	00005517          	auipc	a0,0x5
    800039b0:	7b450513          	addi	a0,a0,1972 # 80009160 <CONSOLE_STATUS+0x150>
    800039b4:	00002097          	auipc	ra,0x2
    800039b8:	e88080e7          	jalr	-376(ra) # 8000583c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039bc:	00000493          	li	s1,0
    800039c0:	f99ff06f          	j	80003958 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800039c4:	00006517          	auipc	a0,0x6
    800039c8:	a4c50513          	addi	a0,a0,-1460 # 80009410 <CONSOLE_STATUS+0x400>
    800039cc:	00002097          	auipc	ra,0x2
    800039d0:	e70080e7          	jalr	-400(ra) # 8000583c <_Z11printStringPKc>
    finishedA = true;
    800039d4:	00100793          	li	a5,1
    800039d8:	00008717          	auipc	a4,0x8
    800039dc:	ecf70023          	sb	a5,-320(a4) # 8000b898 <_ZL9finishedA>

}
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	00813483          	ld	s1,8(sp)
    800039ec:	00013903          	ld	s2,0(sp)
    800039f0:	02010113          	addi	sp,sp,32
    800039f4:	00008067          	ret

00000000800039f8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800039f8:	fe010113          	addi	sp,sp,-32
    800039fc:	00113c23          	sd	ra,24(sp)
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00913423          	sd	s1,8(sp)
    80003a08:	01213023          	sd	s2,0(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003a10:	00000913          	li	s2,0
    80003a14:	0380006f          	j	80003a4c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	b4c080e7          	jalr	-1204(ra) # 80001564 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a20:	00148493          	addi	s1,s1,1
    80003a24:	000027b7          	lui	a5,0x2
    80003a28:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a2c:	0097ee63          	bltu	a5,s1,80003a48 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a30:	00000713          	li	a4,0
    80003a34:	000077b7          	lui	a5,0x7
    80003a38:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a3c:	fce7eee3          	bltu	a5,a4,80003a18 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003a40:	00170713          	addi	a4,a4,1
    80003a44:	ff1ff06f          	j	80003a34 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003a48:	00190913          	addi	s2,s2,1
    80003a4c:	00f00793          	li	a5,15
    80003a50:	0527e063          	bltu	a5,s2,80003a90 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003a54:	00006517          	auipc	a0,0x6
    80003a58:	9cc50513          	addi	a0,a0,-1588 # 80009420 <CONSOLE_STATUS+0x410>
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	de0080e7          	jalr	-544(ra) # 8000583c <_Z11printStringPKc>
    80003a64:	00000613          	li	a2,0
    80003a68:	00a00593          	li	a1,10
    80003a6c:	0009051b          	sext.w	a0,s2
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	f7c080e7          	jalr	-132(ra) # 800059ec <_Z8printIntiii>
    80003a78:	00005517          	auipc	a0,0x5
    80003a7c:	6e850513          	addi	a0,a0,1768 # 80009160 <CONSOLE_STATUS+0x150>
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	dbc080e7          	jalr	-580(ra) # 8000583c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003a88:	00000493          	li	s1,0
    80003a8c:	f99ff06f          	j	80003a24 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003a90:	00006517          	auipc	a0,0x6
    80003a94:	99850513          	addi	a0,a0,-1640 # 80009428 <CONSOLE_STATUS+0x418>
    80003a98:	00002097          	auipc	ra,0x2
    80003a9c:	da4080e7          	jalr	-604(ra) # 8000583c <_Z11printStringPKc>
    finishedB = true;
    80003aa0:	00100793          	li	a5,1
    80003aa4:	00008717          	auipc	a4,0x8
    80003aa8:	def70aa3          	sb	a5,-523(a4) # 8000b899 <_ZL9finishedB>
    thread_dispatch();
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	ab8080e7          	jalr	-1352(ra) # 80001564 <_Z15thread_dispatchv>
}
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	00013903          	ld	s2,0(sp)
    80003ac4:	02010113          	addi	sp,sp,32
    80003ac8:	00008067          	ret

0000000080003acc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003acc:	fe010113          	addi	sp,sp,-32
    80003ad0:	00113c23          	sd	ra,24(sp)
    80003ad4:	00813823          	sd	s0,16(sp)
    80003ad8:	00913423          	sd	s1,8(sp)
    80003adc:	01213023          	sd	s2,0(sp)
    80003ae0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ae4:	00000493          	li	s1,0
    80003ae8:	0400006f          	j	80003b28 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003aec:	00006517          	auipc	a0,0x6
    80003af0:	94c50513          	addi	a0,a0,-1716 # 80009438 <CONSOLE_STATUS+0x428>
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	d48080e7          	jalr	-696(ra) # 8000583c <_Z11printStringPKc>
    80003afc:	00000613          	li	a2,0
    80003b00:	00a00593          	li	a1,10
    80003b04:	00048513          	mv	a0,s1
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	ee4080e7          	jalr	-284(ra) # 800059ec <_Z8printIntiii>
    80003b10:	00005517          	auipc	a0,0x5
    80003b14:	65050513          	addi	a0,a0,1616 # 80009160 <CONSOLE_STATUS+0x150>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	d24080e7          	jalr	-732(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003b20:	0014849b          	addiw	s1,s1,1
    80003b24:	0ff4f493          	andi	s1,s1,255
    80003b28:	00200793          	li	a5,2
    80003b2c:	fc97f0e3          	bgeu	a5,s1,80003aec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003b30:	00006517          	auipc	a0,0x6
    80003b34:	91050513          	addi	a0,a0,-1776 # 80009440 <CONSOLE_STATUS+0x430>
    80003b38:	00002097          	auipc	ra,0x2
    80003b3c:	d04080e7          	jalr	-764(ra) # 8000583c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003b40:	00700313          	li	t1,7
    thread_dispatch();
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	a20080e7          	jalr	-1504(ra) # 80001564 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003b4c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003b50:	00006517          	auipc	a0,0x6
    80003b54:	90050513          	addi	a0,a0,-1792 # 80009450 <CONSOLE_STATUS+0x440>
    80003b58:	00002097          	auipc	ra,0x2
    80003b5c:	ce4080e7          	jalr	-796(ra) # 8000583c <_Z11printStringPKc>
    80003b60:	00000613          	li	a2,0
    80003b64:	00a00593          	li	a1,10
    80003b68:	0009051b          	sext.w	a0,s2
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	e80080e7          	jalr	-384(ra) # 800059ec <_Z8printIntiii>
    80003b74:	00005517          	auipc	a0,0x5
    80003b78:	5ec50513          	addi	a0,a0,1516 # 80009160 <CONSOLE_STATUS+0x150>
    80003b7c:	00002097          	auipc	ra,0x2
    80003b80:	cc0080e7          	jalr	-832(ra) # 8000583c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003b84:	00c00513          	li	a0,12
    80003b88:	00000097          	auipc	ra,0x0
    80003b8c:	d30080e7          	jalr	-720(ra) # 800038b8 <_ZL9fibonaccim>
    80003b90:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003b94:	00006517          	auipc	a0,0x6
    80003b98:	8c450513          	addi	a0,a0,-1852 # 80009458 <CONSOLE_STATUS+0x448>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	ca0080e7          	jalr	-864(ra) # 8000583c <_Z11printStringPKc>
    80003ba4:	00000613          	li	a2,0
    80003ba8:	00a00593          	li	a1,10
    80003bac:	0009051b          	sext.w	a0,s2
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	e3c080e7          	jalr	-452(ra) # 800059ec <_Z8printIntiii>
    80003bb8:	00005517          	auipc	a0,0x5
    80003bbc:	5a850513          	addi	a0,a0,1448 # 80009160 <CONSOLE_STATUS+0x150>
    80003bc0:	00002097          	auipc	ra,0x2
    80003bc4:	c7c080e7          	jalr	-900(ra) # 8000583c <_Z11printStringPKc>
    80003bc8:	0400006f          	j	80003c08 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003bcc:	00006517          	auipc	a0,0x6
    80003bd0:	86c50513          	addi	a0,a0,-1940 # 80009438 <CONSOLE_STATUS+0x428>
    80003bd4:	00002097          	auipc	ra,0x2
    80003bd8:	c68080e7          	jalr	-920(ra) # 8000583c <_Z11printStringPKc>
    80003bdc:	00000613          	li	a2,0
    80003be0:	00a00593          	li	a1,10
    80003be4:	00048513          	mv	a0,s1
    80003be8:	00002097          	auipc	ra,0x2
    80003bec:	e04080e7          	jalr	-508(ra) # 800059ec <_Z8printIntiii>
    80003bf0:	00005517          	auipc	a0,0x5
    80003bf4:	57050513          	addi	a0,a0,1392 # 80009160 <CONSOLE_STATUS+0x150>
    80003bf8:	00002097          	auipc	ra,0x2
    80003bfc:	c44080e7          	jalr	-956(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003c00:	0014849b          	addiw	s1,s1,1
    80003c04:	0ff4f493          	andi	s1,s1,255
    80003c08:	00500793          	li	a5,5
    80003c0c:	fc97f0e3          	bgeu	a5,s1,80003bcc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003c10:	00006517          	auipc	a0,0x6
    80003c14:	80050513          	addi	a0,a0,-2048 # 80009410 <CONSOLE_STATUS+0x400>
    80003c18:	00002097          	auipc	ra,0x2
    80003c1c:	c24080e7          	jalr	-988(ra) # 8000583c <_Z11printStringPKc>
    finishedC = true;
    80003c20:	00100793          	li	a5,1
    80003c24:	00008717          	auipc	a4,0x8
    80003c28:	c6f70b23          	sb	a5,-906(a4) # 8000b89a <_ZL9finishedC>
    thread_dispatch();
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	938080e7          	jalr	-1736(ra) # 80001564 <_Z15thread_dispatchv>
}
    80003c34:	01813083          	ld	ra,24(sp)
    80003c38:	01013403          	ld	s0,16(sp)
    80003c3c:	00813483          	ld	s1,8(sp)
    80003c40:	00013903          	ld	s2,0(sp)
    80003c44:	02010113          	addi	sp,sp,32
    80003c48:	00008067          	ret

0000000080003c4c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	01213023          	sd	s2,0(sp)
    80003c60:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003c64:	00a00493          	li	s1,10
    80003c68:	0400006f          	j	80003ca8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c6c:	00005517          	auipc	a0,0x5
    80003c70:	7fc50513          	addi	a0,a0,2044 # 80009468 <CONSOLE_STATUS+0x458>
    80003c74:	00002097          	auipc	ra,0x2
    80003c78:	bc8080e7          	jalr	-1080(ra) # 8000583c <_Z11printStringPKc>
    80003c7c:	00000613          	li	a2,0
    80003c80:	00a00593          	li	a1,10
    80003c84:	00048513          	mv	a0,s1
    80003c88:	00002097          	auipc	ra,0x2
    80003c8c:	d64080e7          	jalr	-668(ra) # 800059ec <_Z8printIntiii>
    80003c90:	00005517          	auipc	a0,0x5
    80003c94:	4d050513          	addi	a0,a0,1232 # 80009160 <CONSOLE_STATUS+0x150>
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	ba4080e7          	jalr	-1116(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ca0:	0014849b          	addiw	s1,s1,1
    80003ca4:	0ff4f493          	andi	s1,s1,255
    80003ca8:	00c00793          	li	a5,12
    80003cac:	fc97f0e3          	bgeu	a5,s1,80003c6c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	7c050513          	addi	a0,a0,1984 # 80009470 <CONSOLE_STATUS+0x460>
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	b84080e7          	jalr	-1148(ra) # 8000583c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003cc0:	00500313          	li	t1,5
    thread_dispatch();
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	8a0080e7          	jalr	-1888(ra) # 80001564 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ccc:	01000513          	li	a0,16
    80003cd0:	00000097          	auipc	ra,0x0
    80003cd4:	be8080e7          	jalr	-1048(ra) # 800038b8 <_ZL9fibonaccim>
    80003cd8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003cdc:	00005517          	auipc	a0,0x5
    80003ce0:	7a450513          	addi	a0,a0,1956 # 80009480 <CONSOLE_STATUS+0x470>
    80003ce4:	00002097          	auipc	ra,0x2
    80003ce8:	b58080e7          	jalr	-1192(ra) # 8000583c <_Z11printStringPKc>
    80003cec:	00000613          	li	a2,0
    80003cf0:	00a00593          	li	a1,10
    80003cf4:	0009051b          	sext.w	a0,s2
    80003cf8:	00002097          	auipc	ra,0x2
    80003cfc:	cf4080e7          	jalr	-780(ra) # 800059ec <_Z8printIntiii>
    80003d00:	00005517          	auipc	a0,0x5
    80003d04:	46050513          	addi	a0,a0,1120 # 80009160 <CONSOLE_STATUS+0x150>
    80003d08:	00002097          	auipc	ra,0x2
    80003d0c:	b34080e7          	jalr	-1228(ra) # 8000583c <_Z11printStringPKc>
    80003d10:	0400006f          	j	80003d50 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d14:	00005517          	auipc	a0,0x5
    80003d18:	75450513          	addi	a0,a0,1876 # 80009468 <CONSOLE_STATUS+0x458>
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	b20080e7          	jalr	-1248(ra) # 8000583c <_Z11printStringPKc>
    80003d24:	00000613          	li	a2,0
    80003d28:	00a00593          	li	a1,10
    80003d2c:	00048513          	mv	a0,s1
    80003d30:	00002097          	auipc	ra,0x2
    80003d34:	cbc080e7          	jalr	-836(ra) # 800059ec <_Z8printIntiii>
    80003d38:	00005517          	auipc	a0,0x5
    80003d3c:	42850513          	addi	a0,a0,1064 # 80009160 <CONSOLE_STATUS+0x150>
    80003d40:	00002097          	auipc	ra,0x2
    80003d44:	afc080e7          	jalr	-1284(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003d48:	0014849b          	addiw	s1,s1,1
    80003d4c:	0ff4f493          	andi	s1,s1,255
    80003d50:	00f00793          	li	a5,15
    80003d54:	fc97f0e3          	bgeu	a5,s1,80003d14 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003d58:	00005517          	auipc	a0,0x5
    80003d5c:	73850513          	addi	a0,a0,1848 # 80009490 <CONSOLE_STATUS+0x480>
    80003d60:	00002097          	auipc	ra,0x2
    80003d64:	adc080e7          	jalr	-1316(ra) # 8000583c <_Z11printStringPKc>
    finishedD = true;
    80003d68:	00100793          	li	a5,1
    80003d6c:	00008717          	auipc	a4,0x8
    80003d70:	b2f707a3          	sb	a5,-1233(a4) # 8000b89b <_ZL9finishedD>
    thread_dispatch();
    80003d74:	ffffd097          	auipc	ra,0xffffd
    80003d78:	7f0080e7          	jalr	2032(ra) # 80001564 <_Z15thread_dispatchv>
}
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	00813483          	ld	s1,8(sp)
    80003d88:	00013903          	ld	s2,0(sp)
    80003d8c:	02010113          	addi	sp,sp,32
    80003d90:	00008067          	ret

0000000080003d94 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003d94:	fc010113          	addi	sp,sp,-64
    80003d98:	02113c23          	sd	ra,56(sp)
    80003d9c:	02813823          	sd	s0,48(sp)
    80003da0:	02913423          	sd	s1,40(sp)
    80003da4:	03213023          	sd	s2,32(sp)
    80003da8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003dac:	02000513          	li	a0,32
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	82c080e7          	jalr	-2004(ra) # 800025dc <_Znwm>
    80003db8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003dbc:	ffffe097          	auipc	ra,0xffffe
    80003dc0:	b84080e7          	jalr	-1148(ra) # 80001940 <_ZN6ThreadC1Ev>
    80003dc4:	00008797          	auipc	a5,0x8
    80003dc8:	84478793          	addi	a5,a5,-1980 # 8000b608 <_ZTV7WorkerA+0x10>
    80003dcc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003dd0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003dd4:	00005517          	auipc	a0,0x5
    80003dd8:	6cc50513          	addi	a0,a0,1740 # 800094a0 <CONSOLE_STATUS+0x490>
    80003ddc:	00002097          	auipc	ra,0x2
    80003de0:	a60080e7          	jalr	-1440(ra) # 8000583c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003de4:	02000513          	li	a0,32
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	7f4080e7          	jalr	2036(ra) # 800025dc <_Znwm>
    80003df0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	b4c080e7          	jalr	-1204(ra) # 80001940 <_ZN6ThreadC1Ev>
    80003dfc:	00008797          	auipc	a5,0x8
    80003e00:	83478793          	addi	a5,a5,-1996 # 8000b630 <_ZTV7WorkerB+0x10>
    80003e04:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003e08:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003e0c:	00005517          	auipc	a0,0x5
    80003e10:	6ac50513          	addi	a0,a0,1708 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80003e14:	00002097          	auipc	ra,0x2
    80003e18:	a28080e7          	jalr	-1496(ra) # 8000583c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003e1c:	02000513          	li	a0,32
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	7bc080e7          	jalr	1980(ra) # 800025dc <_Znwm>
    80003e28:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	b14080e7          	jalr	-1260(ra) # 80001940 <_ZN6ThreadC1Ev>
    80003e34:	00008797          	auipc	a5,0x8
    80003e38:	82478793          	addi	a5,a5,-2012 # 8000b658 <_ZTV7WorkerC+0x10>
    80003e3c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003e40:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003e44:	00005517          	auipc	a0,0x5
    80003e48:	68c50513          	addi	a0,a0,1676 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003e4c:	00002097          	auipc	ra,0x2
    80003e50:	9f0080e7          	jalr	-1552(ra) # 8000583c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003e54:	02000513          	li	a0,32
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	784080e7          	jalr	1924(ra) # 800025dc <_Znwm>
    80003e60:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	adc080e7          	jalr	-1316(ra) # 80001940 <_ZN6ThreadC1Ev>
    80003e6c:	00008797          	auipc	a5,0x8
    80003e70:	81478793          	addi	a5,a5,-2028 # 8000b680 <_ZTV7WorkerD+0x10>
    80003e74:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003e78:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003e7c:	00005517          	auipc	a0,0x5
    80003e80:	66c50513          	addi	a0,a0,1644 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003e84:	00002097          	auipc	ra,0x2
    80003e88:	9b8080e7          	jalr	-1608(ra) # 8000583c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003e8c:	00000493          	li	s1,0
    80003e90:	00300793          	li	a5,3
    80003e94:	0297c663          	blt	a5,s1,80003ec0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003e98:	00349793          	slli	a5,s1,0x3
    80003e9c:	fe040713          	addi	a4,s0,-32
    80003ea0:	00f707b3          	add	a5,a4,a5
    80003ea4:	fe07b503          	ld	a0,-32(a5)
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	ae8080e7          	jalr	-1304(ra) # 80001990 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003eb0:	0014849b          	addiw	s1,s1,1
    80003eb4:	fddff06f          	j	80003e90 <_Z20Threads_CPP_API_testv+0xfc>
    }


    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	b34080e7          	jalr	-1228(ra) # 800019ec <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003ec0:	00008797          	auipc	a5,0x8
    80003ec4:	9d87c783          	lbu	a5,-1576(a5) # 8000b898 <_ZL9finishedA>
    80003ec8:	fe0788e3          	beqz	a5,80003eb8 <_Z20Threads_CPP_API_testv+0x124>
    80003ecc:	00008797          	auipc	a5,0x8
    80003ed0:	9cd7c783          	lbu	a5,-1587(a5) # 8000b899 <_ZL9finishedB>
    80003ed4:	fe0782e3          	beqz	a5,80003eb8 <_Z20Threads_CPP_API_testv+0x124>
    80003ed8:	00008797          	auipc	a5,0x8
    80003edc:	9c27c783          	lbu	a5,-1598(a5) # 8000b89a <_ZL9finishedC>
    80003ee0:	fc078ce3          	beqz	a5,80003eb8 <_Z20Threads_CPP_API_testv+0x124>
    80003ee4:	00008797          	auipc	a5,0x8
    80003ee8:	9b77c783          	lbu	a5,-1609(a5) # 8000b89b <_ZL9finishedD>
    80003eec:	fc0786e3          	beqz	a5,80003eb8 <_Z20Threads_CPP_API_testv+0x124>
    80003ef0:	fc040493          	addi	s1,s0,-64
    80003ef4:	0080006f          	j	80003efc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003ef8:	00848493          	addi	s1,s1,8
    80003efc:	fe040793          	addi	a5,s0,-32
    80003f00:	08f48663          	beq	s1,a5,80003f8c <_Z20Threads_CPP_API_testv+0x1f8>
    80003f04:	0004b503          	ld	a0,0(s1)
    80003f08:	fe0508e3          	beqz	a0,80003ef8 <_Z20Threads_CPP_API_testv+0x164>
    80003f0c:	00053783          	ld	a5,0(a0)
    80003f10:	0087b783          	ld	a5,8(a5)
    80003f14:	000780e7          	jalr	a5
    80003f18:	fe1ff06f          	j	80003ef8 <_Z20Threads_CPP_API_testv+0x164>
    80003f1c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003f20:	00048513          	mv	a0,s1
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	708080e7          	jalr	1800(ra) # 8000262c <_ZdlPv>
    80003f2c:	00090513          	mv	a0,s2
    80003f30:	00009097          	auipc	ra,0x9
    80003f34:	a78080e7          	jalr	-1416(ra) # 8000c9a8 <_Unwind_Resume>
    80003f38:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003f3c:	00048513          	mv	a0,s1
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	6ec080e7          	jalr	1772(ra) # 8000262c <_ZdlPv>
    80003f48:	00090513          	mv	a0,s2
    80003f4c:	00009097          	auipc	ra,0x9
    80003f50:	a5c080e7          	jalr	-1444(ra) # 8000c9a8 <_Unwind_Resume>
    80003f54:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	6d0080e7          	jalr	1744(ra) # 8000262c <_ZdlPv>
    80003f64:	00090513          	mv	a0,s2
    80003f68:	00009097          	auipc	ra,0x9
    80003f6c:	a40080e7          	jalr	-1472(ra) # 8000c9a8 <_Unwind_Resume>
    80003f70:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003f74:	00048513          	mv	a0,s1
    80003f78:	ffffe097          	auipc	ra,0xffffe
    80003f7c:	6b4080e7          	jalr	1716(ra) # 8000262c <_ZdlPv>
    80003f80:	00090513          	mv	a0,s2
    80003f84:	00009097          	auipc	ra,0x9
    80003f88:	a24080e7          	jalr	-1500(ra) # 8000c9a8 <_Unwind_Resume>
}
    80003f8c:	03813083          	ld	ra,56(sp)
    80003f90:	03013403          	ld	s0,48(sp)
    80003f94:	02813483          	ld	s1,40(sp)
    80003f98:	02013903          	ld	s2,32(sp)
    80003f9c:	04010113          	addi	sp,sp,64
    80003fa0:	00008067          	ret

0000000080003fa4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00113423          	sd	ra,8(sp)
    80003fac:	00813023          	sd	s0,0(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    80003fb4:	00007797          	auipc	a5,0x7
    80003fb8:	65478793          	addi	a5,a5,1620 # 8000b608 <_ZTV7WorkerA+0x10>
    80003fbc:	00f53023          	sd	a5,0(a0)
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	898080e7          	jalr	-1896(ra) # 80001858 <_ZN6ThreadD1Ev>
    80003fc8:	00813083          	ld	ra,8(sp)
    80003fcc:	00013403          	ld	s0,0(sp)
    80003fd0:	01010113          	addi	sp,sp,16
    80003fd4:	00008067          	ret

0000000080003fd8 <_ZN7WorkerAD0Ev>:
    80003fd8:	fe010113          	addi	sp,sp,-32
    80003fdc:	00113c23          	sd	ra,24(sp)
    80003fe0:	00813823          	sd	s0,16(sp)
    80003fe4:	00913423          	sd	s1,8(sp)
    80003fe8:	02010413          	addi	s0,sp,32
    80003fec:	00050493          	mv	s1,a0
    80003ff0:	00007797          	auipc	a5,0x7
    80003ff4:	61878793          	addi	a5,a5,1560 # 8000b608 <_ZTV7WorkerA+0x10>
    80003ff8:	00f53023          	sd	a5,0(a0)
    80003ffc:	ffffe097          	auipc	ra,0xffffe
    80004000:	85c080e7          	jalr	-1956(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004004:	00048513          	mv	a0,s1
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	624080e7          	jalr	1572(ra) # 8000262c <_ZdlPv>
    80004010:	01813083          	ld	ra,24(sp)
    80004014:	01013403          	ld	s0,16(sp)
    80004018:	00813483          	ld	s1,8(sp)
    8000401c:	02010113          	addi	sp,sp,32
    80004020:	00008067          	ret

0000000080004024 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004024:	ff010113          	addi	sp,sp,-16
    80004028:	00113423          	sd	ra,8(sp)
    8000402c:	00813023          	sd	s0,0(sp)
    80004030:	01010413          	addi	s0,sp,16
    80004034:	00007797          	auipc	a5,0x7
    80004038:	5fc78793          	addi	a5,a5,1532 # 8000b630 <_ZTV7WorkerB+0x10>
    8000403c:	00f53023          	sd	a5,0(a0)
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	818080e7          	jalr	-2024(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004048:	00813083          	ld	ra,8(sp)
    8000404c:	00013403          	ld	s0,0(sp)
    80004050:	01010113          	addi	sp,sp,16
    80004054:	00008067          	ret

0000000080004058 <_ZN7WorkerBD0Ev>:
    80004058:	fe010113          	addi	sp,sp,-32
    8000405c:	00113c23          	sd	ra,24(sp)
    80004060:	00813823          	sd	s0,16(sp)
    80004064:	00913423          	sd	s1,8(sp)
    80004068:	02010413          	addi	s0,sp,32
    8000406c:	00050493          	mv	s1,a0
    80004070:	00007797          	auipc	a5,0x7
    80004074:	5c078793          	addi	a5,a5,1472 # 8000b630 <_ZTV7WorkerB+0x10>
    80004078:	00f53023          	sd	a5,0(a0)
    8000407c:	ffffd097          	auipc	ra,0xffffd
    80004080:	7dc080e7          	jalr	2012(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004084:	00048513          	mv	a0,s1
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	5a4080e7          	jalr	1444(ra) # 8000262c <_ZdlPv>
    80004090:	01813083          	ld	ra,24(sp)
    80004094:	01013403          	ld	s0,16(sp)
    80004098:	00813483          	ld	s1,8(sp)
    8000409c:	02010113          	addi	sp,sp,32
    800040a0:	00008067          	ret

00000000800040a4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800040a4:	ff010113          	addi	sp,sp,-16
    800040a8:	00113423          	sd	ra,8(sp)
    800040ac:	00813023          	sd	s0,0(sp)
    800040b0:	01010413          	addi	s0,sp,16
    800040b4:	00007797          	auipc	a5,0x7
    800040b8:	5a478793          	addi	a5,a5,1444 # 8000b658 <_ZTV7WorkerC+0x10>
    800040bc:	00f53023          	sd	a5,0(a0)
    800040c0:	ffffd097          	auipc	ra,0xffffd
    800040c4:	798080e7          	jalr	1944(ra) # 80001858 <_ZN6ThreadD1Ev>
    800040c8:	00813083          	ld	ra,8(sp)
    800040cc:	00013403          	ld	s0,0(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret

00000000800040d8 <_ZN7WorkerCD0Ev>:
    800040d8:	fe010113          	addi	sp,sp,-32
    800040dc:	00113c23          	sd	ra,24(sp)
    800040e0:	00813823          	sd	s0,16(sp)
    800040e4:	00913423          	sd	s1,8(sp)
    800040e8:	02010413          	addi	s0,sp,32
    800040ec:	00050493          	mv	s1,a0
    800040f0:	00007797          	auipc	a5,0x7
    800040f4:	56878793          	addi	a5,a5,1384 # 8000b658 <_ZTV7WorkerC+0x10>
    800040f8:	00f53023          	sd	a5,0(a0)
    800040fc:	ffffd097          	auipc	ra,0xffffd
    80004100:	75c080e7          	jalr	1884(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004104:	00048513          	mv	a0,s1
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	524080e7          	jalr	1316(ra) # 8000262c <_ZdlPv>
    80004110:	01813083          	ld	ra,24(sp)
    80004114:	01013403          	ld	s0,16(sp)
    80004118:	00813483          	ld	s1,8(sp)
    8000411c:	02010113          	addi	sp,sp,32
    80004120:	00008067          	ret

0000000080004124 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004124:	ff010113          	addi	sp,sp,-16
    80004128:	00113423          	sd	ra,8(sp)
    8000412c:	00813023          	sd	s0,0(sp)
    80004130:	01010413          	addi	s0,sp,16
    80004134:	00007797          	auipc	a5,0x7
    80004138:	54c78793          	addi	a5,a5,1356 # 8000b680 <_ZTV7WorkerD+0x10>
    8000413c:	00f53023          	sd	a5,0(a0)
    80004140:	ffffd097          	auipc	ra,0xffffd
    80004144:	718080e7          	jalr	1816(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004148:	00813083          	ld	ra,8(sp)
    8000414c:	00013403          	ld	s0,0(sp)
    80004150:	01010113          	addi	sp,sp,16
    80004154:	00008067          	ret

0000000080004158 <_ZN7WorkerDD0Ev>:
    80004158:	fe010113          	addi	sp,sp,-32
    8000415c:	00113c23          	sd	ra,24(sp)
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00913423          	sd	s1,8(sp)
    80004168:	02010413          	addi	s0,sp,32
    8000416c:	00050493          	mv	s1,a0
    80004170:	00007797          	auipc	a5,0x7
    80004174:	51078793          	addi	a5,a5,1296 # 8000b680 <_ZTV7WorkerD+0x10>
    80004178:	00f53023          	sd	a5,0(a0)
    8000417c:	ffffd097          	auipc	ra,0xffffd
    80004180:	6dc080e7          	jalr	1756(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004184:	00048513          	mv	a0,s1
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	4a4080e7          	jalr	1188(ra) # 8000262c <_ZdlPv>
    80004190:	01813083          	ld	ra,24(sp)
    80004194:	01013403          	ld	s0,16(sp)
    80004198:	00813483          	ld	s1,8(sp)
    8000419c:	02010113          	addi	sp,sp,32
    800041a0:	00008067          	ret

00000000800041a4 <_ZN7WorkerA3runEv>:
    void run() override {
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00113423          	sd	ra,8(sp)
    800041ac:	00813023          	sd	s0,0(sp)
    800041b0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800041b4:	00000593          	li	a1,0
    800041b8:	fffff097          	auipc	ra,0xfffff
    800041bc:	774080e7          	jalr	1908(ra) # 8000392c <_ZN7WorkerA11workerBodyAEPv>
    }
    800041c0:	00813083          	ld	ra,8(sp)
    800041c4:	00013403          	ld	s0,0(sp)
    800041c8:	01010113          	addi	sp,sp,16
    800041cc:	00008067          	ret

00000000800041d0 <_ZN7WorkerB3runEv>:
    void run() override {
    800041d0:	ff010113          	addi	sp,sp,-16
    800041d4:	00113423          	sd	ra,8(sp)
    800041d8:	00813023          	sd	s0,0(sp)
    800041dc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800041e0:	00000593          	li	a1,0
    800041e4:	00000097          	auipc	ra,0x0
    800041e8:	814080e7          	jalr	-2028(ra) # 800039f8 <_ZN7WorkerB11workerBodyBEPv>
    }
    800041ec:	00813083          	ld	ra,8(sp)
    800041f0:	00013403          	ld	s0,0(sp)
    800041f4:	01010113          	addi	sp,sp,16
    800041f8:	00008067          	ret

00000000800041fc <_ZN7WorkerC3runEv>:
    void run() override {
    800041fc:	ff010113          	addi	sp,sp,-16
    80004200:	00113423          	sd	ra,8(sp)
    80004204:	00813023          	sd	s0,0(sp)
    80004208:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000420c:	00000593          	li	a1,0
    80004210:	00000097          	auipc	ra,0x0
    80004214:	8bc080e7          	jalr	-1860(ra) # 80003acc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004218:	00813083          	ld	ra,8(sp)
    8000421c:	00013403          	ld	s0,0(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN7WorkerD3runEv>:
    void run() override {
    80004228:	ff010113          	addi	sp,sp,-16
    8000422c:	00113423          	sd	ra,8(sp)
    80004230:	00813023          	sd	s0,0(sp)
    80004234:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004238:	00000593          	li	a1,0
    8000423c:	00000097          	auipc	ra,0x0
    80004240:	a10080e7          	jalr	-1520(ra) # 80003c4c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004244:	00813083          	ld	ra,8(sp)
    80004248:	00013403          	ld	s0,0(sp)
    8000424c:	01010113          	addi	sp,sp,16
    80004250:	00008067          	ret

0000000080004254 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004254:	f8010113          	addi	sp,sp,-128
    80004258:	06113c23          	sd	ra,120(sp)
    8000425c:	06813823          	sd	s0,112(sp)
    80004260:	06913423          	sd	s1,104(sp)
    80004264:	07213023          	sd	s2,96(sp)
    80004268:	05313c23          	sd	s3,88(sp)
    8000426c:	05413823          	sd	s4,80(sp)
    80004270:	05513423          	sd	s5,72(sp)
    80004274:	05613023          	sd	s6,64(sp)
    80004278:	03713c23          	sd	s7,56(sp)
    8000427c:	03813823          	sd	s8,48(sp)
    80004280:	03913423          	sd	s9,40(sp)
    80004284:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004288:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000428c:	00005517          	auipc	a0,0x5
    80004290:	09450513          	addi	a0,a0,148 # 80009320 <CONSOLE_STATUS+0x310>
    80004294:	00001097          	auipc	ra,0x1
    80004298:	5a8080e7          	jalr	1448(ra) # 8000583c <_Z11printStringPKc>
    getString(input, 30);
    8000429c:	01e00593          	li	a1,30
    800042a0:	f8040493          	addi	s1,s0,-128
    800042a4:	00048513          	mv	a0,s1
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	61c080e7          	jalr	1564(ra) # 800058c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800042b0:	00048513          	mv	a0,s1
    800042b4:	00001097          	auipc	ra,0x1
    800042b8:	6e8080e7          	jalr	1768(ra) # 8000599c <_Z11stringToIntPKc>
    800042bc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800042c0:	00005517          	auipc	a0,0x5
    800042c4:	08050513          	addi	a0,a0,128 # 80009340 <CONSOLE_STATUS+0x330>
    800042c8:	00001097          	auipc	ra,0x1
    800042cc:	574080e7          	jalr	1396(ra) # 8000583c <_Z11printStringPKc>
    getString(input, 30);
    800042d0:	01e00593          	li	a1,30
    800042d4:	00048513          	mv	a0,s1
    800042d8:	00001097          	auipc	ra,0x1
    800042dc:	5ec080e7          	jalr	1516(ra) # 800058c4 <_Z9getStringPci>
    n = stringToInt(input);
    800042e0:	00048513          	mv	a0,s1
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	6b8080e7          	jalr	1720(ra) # 8000599c <_Z11stringToIntPKc>
    800042ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800042f0:	00005517          	auipc	a0,0x5
    800042f4:	07050513          	addi	a0,a0,112 # 80009360 <CONSOLE_STATUS+0x350>
    800042f8:	00001097          	auipc	ra,0x1
    800042fc:	544080e7          	jalr	1348(ra) # 8000583c <_Z11printStringPKc>
    printInt(threadNum);
    80004300:	00000613          	li	a2,0
    80004304:	00a00593          	li	a1,10
    80004308:	00098513          	mv	a0,s3
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	6e0080e7          	jalr	1760(ra) # 800059ec <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004314:	00005517          	auipc	a0,0x5
    80004318:	06450513          	addi	a0,a0,100 # 80009378 <CONSOLE_STATUS+0x368>
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	520080e7          	jalr	1312(ra) # 8000583c <_Z11printStringPKc>
    printInt(n);
    80004324:	00000613          	li	a2,0
    80004328:	00a00593          	li	a1,10
    8000432c:	00048513          	mv	a0,s1
    80004330:	00001097          	auipc	ra,0x1
    80004334:	6bc080e7          	jalr	1724(ra) # 800059ec <_Z8printIntiii>
    printString(".\n");
    80004338:	00005517          	auipc	a0,0x5
    8000433c:	05850513          	addi	a0,a0,88 # 80009390 <CONSOLE_STATUS+0x380>
    80004340:	00001097          	auipc	ra,0x1
    80004344:	4fc080e7          	jalr	1276(ra) # 8000583c <_Z11printStringPKc>
    if (threadNum > n) {
    80004348:	0334c463          	blt	s1,s3,80004370 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000434c:	03305c63          	blez	s3,80004384 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004350:	03800513          	li	a0,56
    80004354:	ffffe097          	auipc	ra,0xffffe
    80004358:	288080e7          	jalr	648(ra) # 800025dc <_Znwm>
    8000435c:	00050a93          	mv	s5,a0
    80004360:	00048593          	mv	a1,s1
    80004364:	00001097          	auipc	ra,0x1
    80004368:	7a8080e7          	jalr	1960(ra) # 80005b0c <_ZN9BufferCPPC1Ei>
    8000436c:	0300006f          	j	8000439c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004370:	00005517          	auipc	a0,0x5
    80004374:	02850513          	addi	a0,a0,40 # 80009398 <CONSOLE_STATUS+0x388>
    80004378:	00001097          	auipc	ra,0x1
    8000437c:	4c4080e7          	jalr	1220(ra) # 8000583c <_Z11printStringPKc>
        return;
    80004380:	0140006f          	j	80004394 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004384:	00005517          	auipc	a0,0x5
    80004388:	05450513          	addi	a0,a0,84 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000438c:	00001097          	auipc	ra,0x1
    80004390:	4b0080e7          	jalr	1200(ra) # 8000583c <_Z11printStringPKc>
        return;
    80004394:	000c0113          	mv	sp,s8
    80004398:	2140006f          	j	800045ac <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000439c:	01000513          	li	a0,16
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	23c080e7          	jalr	572(ra) # 800025dc <_Znwm>
    800043a8:	00050913          	mv	s2,a0
    800043ac:	00000593          	li	a1,0
    800043b0:	ffffd097          	auipc	ra,0xffffd
    800043b4:	3e8080e7          	jalr	1000(ra) # 80001798 <_ZN9SemaphoreC1Ej>
    800043b8:	00007797          	auipc	a5,0x7
    800043bc:	4f27b823          	sd	s2,1264(a5) # 8000b8a8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800043c0:	00399793          	slli	a5,s3,0x3
    800043c4:	00f78793          	addi	a5,a5,15
    800043c8:	ff07f793          	andi	a5,a5,-16
    800043cc:	40f10133          	sub	sp,sp,a5
    800043d0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800043d4:	0019871b          	addiw	a4,s3,1
    800043d8:	00171793          	slli	a5,a4,0x1
    800043dc:	00e787b3          	add	a5,a5,a4
    800043e0:	00379793          	slli	a5,a5,0x3
    800043e4:	00f78793          	addi	a5,a5,15
    800043e8:	ff07f793          	andi	a5,a5,-16
    800043ec:	40f10133          	sub	sp,sp,a5
    800043f0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800043f4:	00199493          	slli	s1,s3,0x1
    800043f8:	013484b3          	add	s1,s1,s3
    800043fc:	00349493          	slli	s1,s1,0x3
    80004400:	009b04b3          	add	s1,s6,s1
    80004404:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004408:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000440c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004410:	02800513          	li	a0,40
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	1c8080e7          	jalr	456(ra) # 800025dc <_Znwm>
    8000441c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004420:	ffffd097          	auipc	ra,0xffffd
    80004424:	520080e7          	jalr	1312(ra) # 80001940 <_ZN6ThreadC1Ev>
    80004428:	00007797          	auipc	a5,0x7
    8000442c:	2d078793          	addi	a5,a5,720 # 8000b6f8 <_ZTV8Consumer+0x10>
    80004430:	00fbb023          	sd	a5,0(s7)
    80004434:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004438:	000b8513          	mv	a0,s7
    8000443c:	ffffd097          	auipc	ra,0xffffd
    80004440:	554080e7          	jalr	1364(ra) # 80001990 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004444:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004448:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000444c:	00007797          	auipc	a5,0x7
    80004450:	45c7b783          	ld	a5,1116(a5) # 8000b8a8 <_ZL10waitForAll>
    80004454:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004458:	02800513          	li	a0,40
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	180080e7          	jalr	384(ra) # 800025dc <_Znwm>
    80004464:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004468:	ffffd097          	auipc	ra,0xffffd
    8000446c:	4d8080e7          	jalr	1240(ra) # 80001940 <_ZN6ThreadC1Ev>
    80004470:	00007797          	auipc	a5,0x7
    80004474:	23878793          	addi	a5,a5,568 # 8000b6a8 <_ZTV16ProducerKeyborad+0x10>
    80004478:	00f4b023          	sd	a5,0(s1)
    8000447c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004480:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004484:	00048513          	mv	a0,s1
    80004488:	ffffd097          	auipc	ra,0xffffd
    8000448c:	508080e7          	jalr	1288(ra) # 80001990 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004490:	00100913          	li	s2,1
    80004494:	0300006f          	j	800044c4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004498:	00007797          	auipc	a5,0x7
    8000449c:	23878793          	addi	a5,a5,568 # 8000b6d0 <_ZTV8Producer+0x10>
    800044a0:	00fcb023          	sd	a5,0(s9)
    800044a4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800044a8:	00391793          	slli	a5,s2,0x3
    800044ac:	00fa07b3          	add	a5,s4,a5
    800044b0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800044b4:	000c8513          	mv	a0,s9
    800044b8:	ffffd097          	auipc	ra,0xffffd
    800044bc:	4d8080e7          	jalr	1240(ra) # 80001990 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800044c0:	0019091b          	addiw	s2,s2,1
    800044c4:	05395263          	bge	s2,s3,80004508 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800044c8:	00191493          	slli	s1,s2,0x1
    800044cc:	012484b3          	add	s1,s1,s2
    800044d0:	00349493          	slli	s1,s1,0x3
    800044d4:	009b04b3          	add	s1,s6,s1
    800044d8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800044dc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800044e0:	00007797          	auipc	a5,0x7
    800044e4:	3c87b783          	ld	a5,968(a5) # 8000b8a8 <_ZL10waitForAll>
    800044e8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800044ec:	02800513          	li	a0,40
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	0ec080e7          	jalr	236(ra) # 800025dc <_Znwm>
    800044f8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	444080e7          	jalr	1092(ra) # 80001940 <_ZN6ThreadC1Ev>
    80004504:	f95ff06f          	j	80004498 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004508:	ffffd097          	auipc	ra,0xffffd
    8000450c:	4e4080e7          	jalr	1252(ra) # 800019ec <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004510:	00000493          	li	s1,0
    80004514:	0099ce63          	blt	s3,s1,80004530 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004518:	00007517          	auipc	a0,0x7
    8000451c:	39053503          	ld	a0,912(a0) # 8000b8a8 <_ZL10waitForAll>
    80004520:	ffffd097          	auipc	ra,0xffffd
    80004524:	2b4080e7          	jalr	692(ra) # 800017d4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004528:	0014849b          	addiw	s1,s1,1
    8000452c:	fe9ff06f          	j	80004514 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004530:	00007517          	auipc	a0,0x7
    80004534:	37853503          	ld	a0,888(a0) # 8000b8a8 <_ZL10waitForAll>
    80004538:	00050863          	beqz	a0,80004548 <_Z20testConsumerProducerv+0x2f4>
    8000453c:	00053783          	ld	a5,0(a0)
    80004540:	0087b783          	ld	a5,8(a5)
    80004544:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004548:	00000493          	li	s1,0
    8000454c:	0080006f          	j	80004554 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004550:	0014849b          	addiw	s1,s1,1
    80004554:	0334d263          	bge	s1,s3,80004578 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004558:	00349793          	slli	a5,s1,0x3
    8000455c:	00fa07b3          	add	a5,s4,a5
    80004560:	0007b503          	ld	a0,0(a5)
    80004564:	fe0506e3          	beqz	a0,80004550 <_Z20testConsumerProducerv+0x2fc>
    80004568:	00053783          	ld	a5,0(a0)
    8000456c:	0087b783          	ld	a5,8(a5)
    80004570:	000780e7          	jalr	a5
    80004574:	fddff06f          	j	80004550 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004578:	000b8a63          	beqz	s7,8000458c <_Z20testConsumerProducerv+0x338>
    8000457c:	000bb783          	ld	a5,0(s7)
    80004580:	0087b783          	ld	a5,8(a5)
    80004584:	000b8513          	mv	a0,s7
    80004588:	000780e7          	jalr	a5
    delete buffer;
    8000458c:	000a8e63          	beqz	s5,800045a8 <_Z20testConsumerProducerv+0x354>
    80004590:	000a8513          	mv	a0,s5
    80004594:	00002097          	auipc	ra,0x2
    80004598:	870080e7          	jalr	-1936(ra) # 80005e04 <_ZN9BufferCPPD1Ev>
    8000459c:	000a8513          	mv	a0,s5
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	08c080e7          	jalr	140(ra) # 8000262c <_ZdlPv>
    800045a8:	000c0113          	mv	sp,s8
}
    800045ac:	f8040113          	addi	sp,s0,-128
    800045b0:	07813083          	ld	ra,120(sp)
    800045b4:	07013403          	ld	s0,112(sp)
    800045b8:	06813483          	ld	s1,104(sp)
    800045bc:	06013903          	ld	s2,96(sp)
    800045c0:	05813983          	ld	s3,88(sp)
    800045c4:	05013a03          	ld	s4,80(sp)
    800045c8:	04813a83          	ld	s5,72(sp)
    800045cc:	04013b03          	ld	s6,64(sp)
    800045d0:	03813b83          	ld	s7,56(sp)
    800045d4:	03013c03          	ld	s8,48(sp)
    800045d8:	02813c83          	ld	s9,40(sp)
    800045dc:	08010113          	addi	sp,sp,128
    800045e0:	00008067          	ret
    800045e4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800045e8:	000a8513          	mv	a0,s5
    800045ec:	ffffe097          	auipc	ra,0xffffe
    800045f0:	040080e7          	jalr	64(ra) # 8000262c <_ZdlPv>
    800045f4:	00048513          	mv	a0,s1
    800045f8:	00008097          	auipc	ra,0x8
    800045fc:	3b0080e7          	jalr	944(ra) # 8000c9a8 <_Unwind_Resume>
    80004600:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004604:	00090513          	mv	a0,s2
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	024080e7          	jalr	36(ra) # 8000262c <_ZdlPv>
    80004610:	00048513          	mv	a0,s1
    80004614:	00008097          	auipc	ra,0x8
    80004618:	394080e7          	jalr	916(ra) # 8000c9a8 <_Unwind_Resume>
    8000461c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004620:	000b8513          	mv	a0,s7
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	008080e7          	jalr	8(ra) # 8000262c <_ZdlPv>
    8000462c:	00048513          	mv	a0,s1
    80004630:	00008097          	auipc	ra,0x8
    80004634:	378080e7          	jalr	888(ra) # 8000c9a8 <_Unwind_Resume>
    80004638:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000463c:	00048513          	mv	a0,s1
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	fec080e7          	jalr	-20(ra) # 8000262c <_ZdlPv>
    80004648:	00090513          	mv	a0,s2
    8000464c:	00008097          	auipc	ra,0x8
    80004650:	35c080e7          	jalr	860(ra) # 8000c9a8 <_Unwind_Resume>
    80004654:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004658:	000c8513          	mv	a0,s9
    8000465c:	ffffe097          	auipc	ra,0xffffe
    80004660:	fd0080e7          	jalr	-48(ra) # 8000262c <_ZdlPv>
    80004664:	00048513          	mv	a0,s1
    80004668:	00008097          	auipc	ra,0x8
    8000466c:	340080e7          	jalr	832(ra) # 8000c9a8 <_Unwind_Resume>

0000000080004670 <_ZN8Consumer3runEv>:
    void run() override {
    80004670:	fd010113          	addi	sp,sp,-48
    80004674:	02113423          	sd	ra,40(sp)
    80004678:	02813023          	sd	s0,32(sp)
    8000467c:	00913c23          	sd	s1,24(sp)
    80004680:	01213823          	sd	s2,16(sp)
    80004684:	01313423          	sd	s3,8(sp)
    80004688:	03010413          	addi	s0,sp,48
    8000468c:	00050913          	mv	s2,a0
        int i = 0;
    80004690:	00000993          	li	s3,0
    80004694:	0100006f          	j	800046a4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004698:	00a00513          	li	a0,10
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	574080e7          	jalr	1396(ra) # 80001c10 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800046a4:	00007797          	auipc	a5,0x7
    800046a8:	1fc7a783          	lw	a5,508(a5) # 8000b8a0 <_ZL9threadEnd>
    800046ac:	04079a63          	bnez	a5,80004700 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800046b0:	02093783          	ld	a5,32(s2)
    800046b4:	0087b503          	ld	a0,8(a5)
    800046b8:	00001097          	auipc	ra,0x1
    800046bc:	638080e7          	jalr	1592(ra) # 80005cf0 <_ZN9BufferCPP3getEv>
            i++;
    800046c0:	0019849b          	addiw	s1,s3,1
    800046c4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800046c8:	0ff57513          	andi	a0,a0,255
    800046cc:	ffffd097          	auipc	ra,0xffffd
    800046d0:	544080e7          	jalr	1348(ra) # 80001c10 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800046d4:	05000793          	li	a5,80
    800046d8:	02f4e4bb          	remw	s1,s1,a5
    800046dc:	fc0494e3          	bnez	s1,800046a4 <_ZN8Consumer3runEv+0x34>
    800046e0:	fb9ff06f          	j	80004698 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800046e4:	02093783          	ld	a5,32(s2)
    800046e8:	0087b503          	ld	a0,8(a5)
    800046ec:	00001097          	auipc	ra,0x1
    800046f0:	604080e7          	jalr	1540(ra) # 80005cf0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800046f4:	0ff57513          	andi	a0,a0,255
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	518080e7          	jalr	1304(ra) # 80001c10 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004700:	02093783          	ld	a5,32(s2)
    80004704:	0087b503          	ld	a0,8(a5)
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	674080e7          	jalr	1652(ra) # 80005d7c <_ZN9BufferCPP6getCntEv>
    80004710:	fca04ae3          	bgtz	a0,800046e4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004714:	02093783          	ld	a5,32(s2)
    80004718:	0107b503          	ld	a0,16(a5)
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	0e4080e7          	jalr	228(ra) # 80001800 <_ZN9Semaphore6signalEv>
    }
    80004724:	02813083          	ld	ra,40(sp)
    80004728:	02013403          	ld	s0,32(sp)
    8000472c:	01813483          	ld	s1,24(sp)
    80004730:	01013903          	ld	s2,16(sp)
    80004734:	00813983          	ld	s3,8(sp)
    80004738:	03010113          	addi	sp,sp,48
    8000473c:	00008067          	ret

0000000080004740 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004740:	ff010113          	addi	sp,sp,-16
    80004744:	00113423          	sd	ra,8(sp)
    80004748:	00813023          	sd	s0,0(sp)
    8000474c:	01010413          	addi	s0,sp,16
    80004750:	00007797          	auipc	a5,0x7
    80004754:	fa878793          	addi	a5,a5,-88 # 8000b6f8 <_ZTV8Consumer+0x10>
    80004758:	00f53023          	sd	a5,0(a0)
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	0fc080e7          	jalr	252(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004764:	00813083          	ld	ra,8(sp)
    80004768:	00013403          	ld	s0,0(sp)
    8000476c:	01010113          	addi	sp,sp,16
    80004770:	00008067          	ret

0000000080004774 <_ZN8ConsumerD0Ev>:
    80004774:	fe010113          	addi	sp,sp,-32
    80004778:	00113c23          	sd	ra,24(sp)
    8000477c:	00813823          	sd	s0,16(sp)
    80004780:	00913423          	sd	s1,8(sp)
    80004784:	02010413          	addi	s0,sp,32
    80004788:	00050493          	mv	s1,a0
    8000478c:	00007797          	auipc	a5,0x7
    80004790:	f6c78793          	addi	a5,a5,-148 # 8000b6f8 <_ZTV8Consumer+0x10>
    80004794:	00f53023          	sd	a5,0(a0)
    80004798:	ffffd097          	auipc	ra,0xffffd
    8000479c:	0c0080e7          	jalr	192(ra) # 80001858 <_ZN6ThreadD1Ev>
    800047a0:	00048513          	mv	a0,s1
    800047a4:	ffffe097          	auipc	ra,0xffffe
    800047a8:	e88080e7          	jalr	-376(ra) # 8000262c <_ZdlPv>
    800047ac:	01813083          	ld	ra,24(sp)
    800047b0:	01013403          	ld	s0,16(sp)
    800047b4:	00813483          	ld	s1,8(sp)
    800047b8:	02010113          	addi	sp,sp,32
    800047bc:	00008067          	ret

00000000800047c0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800047c0:	ff010113          	addi	sp,sp,-16
    800047c4:	00113423          	sd	ra,8(sp)
    800047c8:	00813023          	sd	s0,0(sp)
    800047cc:	01010413          	addi	s0,sp,16
    800047d0:	00007797          	auipc	a5,0x7
    800047d4:	ed878793          	addi	a5,a5,-296 # 8000b6a8 <_ZTV16ProducerKeyborad+0x10>
    800047d8:	00f53023          	sd	a5,0(a0)
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	07c080e7          	jalr	124(ra) # 80001858 <_ZN6ThreadD1Ev>
    800047e4:	00813083          	ld	ra,8(sp)
    800047e8:	00013403          	ld	s0,0(sp)
    800047ec:	01010113          	addi	sp,sp,16
    800047f0:	00008067          	ret

00000000800047f4 <_ZN16ProducerKeyboradD0Ev>:
    800047f4:	fe010113          	addi	sp,sp,-32
    800047f8:	00113c23          	sd	ra,24(sp)
    800047fc:	00813823          	sd	s0,16(sp)
    80004800:	00913423          	sd	s1,8(sp)
    80004804:	02010413          	addi	s0,sp,32
    80004808:	00050493          	mv	s1,a0
    8000480c:	00007797          	auipc	a5,0x7
    80004810:	e9c78793          	addi	a5,a5,-356 # 8000b6a8 <_ZTV16ProducerKeyborad+0x10>
    80004814:	00f53023          	sd	a5,0(a0)
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	040080e7          	jalr	64(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004820:	00048513          	mv	a0,s1
    80004824:	ffffe097          	auipc	ra,0xffffe
    80004828:	e08080e7          	jalr	-504(ra) # 8000262c <_ZdlPv>
    8000482c:	01813083          	ld	ra,24(sp)
    80004830:	01013403          	ld	s0,16(sp)
    80004834:	00813483          	ld	s1,8(sp)
    80004838:	02010113          	addi	sp,sp,32
    8000483c:	00008067          	ret

0000000080004840 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004840:	ff010113          	addi	sp,sp,-16
    80004844:	00113423          	sd	ra,8(sp)
    80004848:	00813023          	sd	s0,0(sp)
    8000484c:	01010413          	addi	s0,sp,16
    80004850:	00007797          	auipc	a5,0x7
    80004854:	e8078793          	addi	a5,a5,-384 # 8000b6d0 <_ZTV8Producer+0x10>
    80004858:	00f53023          	sd	a5,0(a0)
    8000485c:	ffffd097          	auipc	ra,0xffffd
    80004860:	ffc080e7          	jalr	-4(ra) # 80001858 <_ZN6ThreadD1Ev>
    80004864:	00813083          	ld	ra,8(sp)
    80004868:	00013403          	ld	s0,0(sp)
    8000486c:	01010113          	addi	sp,sp,16
    80004870:	00008067          	ret

0000000080004874 <_ZN8ProducerD0Ev>:
    80004874:	fe010113          	addi	sp,sp,-32
    80004878:	00113c23          	sd	ra,24(sp)
    8000487c:	00813823          	sd	s0,16(sp)
    80004880:	00913423          	sd	s1,8(sp)
    80004884:	02010413          	addi	s0,sp,32
    80004888:	00050493          	mv	s1,a0
    8000488c:	00007797          	auipc	a5,0x7
    80004890:	e4478793          	addi	a5,a5,-444 # 8000b6d0 <_ZTV8Producer+0x10>
    80004894:	00f53023          	sd	a5,0(a0)
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	fc0080e7          	jalr	-64(ra) # 80001858 <_ZN6ThreadD1Ev>
    800048a0:	00048513          	mv	a0,s1
    800048a4:	ffffe097          	auipc	ra,0xffffe
    800048a8:	d88080e7          	jalr	-632(ra) # 8000262c <_ZdlPv>
    800048ac:	01813083          	ld	ra,24(sp)
    800048b0:	01013403          	ld	s0,16(sp)
    800048b4:	00813483          	ld	s1,8(sp)
    800048b8:	02010113          	addi	sp,sp,32
    800048bc:	00008067          	ret

00000000800048c0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800048c0:	fe010113          	addi	sp,sp,-32
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00813823          	sd	s0,16(sp)
    800048cc:	00913423          	sd	s1,8(sp)
    800048d0:	02010413          	addi	s0,sp,32
    800048d4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800048d8:	ffffd097          	auipc	ra,0xffffd
    800048dc:	db4080e7          	jalr	-588(ra) # 8000168c <_Z4getcv>
    800048e0:	0005059b          	sext.w	a1,a0
    800048e4:	01b00793          	li	a5,27
    800048e8:	00f58c63          	beq	a1,a5,80004900 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800048ec:	0204b783          	ld	a5,32(s1)
    800048f0:	0087b503          	ld	a0,8(a5)
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	36c080e7          	jalr	876(ra) # 80005c60 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800048fc:	fddff06f          	j	800048d8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004900:	00100793          	li	a5,1
    80004904:	00007717          	auipc	a4,0x7
    80004908:	f8f72e23          	sw	a5,-100(a4) # 8000b8a0 <_ZL9threadEnd>
        td->buffer->put('!');
    8000490c:	0204b783          	ld	a5,32(s1)
    80004910:	02100593          	li	a1,33
    80004914:	0087b503          	ld	a0,8(a5)
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	348080e7          	jalr	840(ra) # 80005c60 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004920:	0204b783          	ld	a5,32(s1)
    80004924:	0107b503          	ld	a0,16(a5)
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	ed8080e7          	jalr	-296(ra) # 80001800 <_ZN9Semaphore6signalEv>
    }
    80004930:	01813083          	ld	ra,24(sp)
    80004934:	01013403          	ld	s0,16(sp)
    80004938:	00813483          	ld	s1,8(sp)
    8000493c:	02010113          	addi	sp,sp,32
    80004940:	00008067          	ret

0000000080004944 <_ZN8Producer3runEv>:
    void run() override {
    80004944:	fe010113          	addi	sp,sp,-32
    80004948:	00113c23          	sd	ra,24(sp)
    8000494c:	00813823          	sd	s0,16(sp)
    80004950:	00913423          	sd	s1,8(sp)
    80004954:	01213023          	sd	s2,0(sp)
    80004958:	02010413          	addi	s0,sp,32
    8000495c:	00050493          	mv	s1,a0
        int i = 0;
    80004960:	00000913          	li	s2,0
        while (!threadEnd) {
    80004964:	00007797          	auipc	a5,0x7
    80004968:	f3c7a783          	lw	a5,-196(a5) # 8000b8a0 <_ZL9threadEnd>
    8000496c:	04079263          	bnez	a5,800049b0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004970:	0204b783          	ld	a5,32(s1)
    80004974:	0007a583          	lw	a1,0(a5)
    80004978:	0305859b          	addiw	a1,a1,48
    8000497c:	0087b503          	ld	a0,8(a5)
    80004980:	00001097          	auipc	ra,0x1
    80004984:	2e0080e7          	jalr	736(ra) # 80005c60 <_ZN9BufferCPP3putEi>
            i++;
    80004988:	0019071b          	addiw	a4,s2,1
    8000498c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004990:	0204b783          	ld	a5,32(s1)
    80004994:	0007a783          	lw	a5,0(a5)
    80004998:	00e787bb          	addw	a5,a5,a4
    8000499c:	00500513          	li	a0,5
    800049a0:	02a7e53b          	remw	a0,a5,a0
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	070080e7          	jalr	112(ra) # 80001a14 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800049ac:	fb9ff06f          	j	80004964 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800049b0:	0204b783          	ld	a5,32(s1)
    800049b4:	0107b503          	ld	a0,16(a5)
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	e48080e7          	jalr	-440(ra) # 80001800 <_ZN9Semaphore6signalEv>
    }
    800049c0:	01813083          	ld	ra,24(sp)
    800049c4:	01013403          	ld	s0,16(sp)
    800049c8:	00813483          	ld	s1,8(sp)
    800049cc:	00013903          	ld	s2,0(sp)
    800049d0:	02010113          	addi	sp,sp,32
    800049d4:	00008067          	ret

00000000800049d8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800049d8:	fe010113          	addi	sp,sp,-32
    800049dc:	00113c23          	sd	ra,24(sp)
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	01213023          	sd	s2,0(sp)
    800049ec:	02010413          	addi	s0,sp,32
    800049f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800049f4:	00100793          	li	a5,1
    800049f8:	02a7f863          	bgeu	a5,a0,80004a28 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800049fc:	00a00793          	li	a5,10
    80004a00:	02f577b3          	remu	a5,a0,a5
    80004a04:	02078e63          	beqz	a5,80004a40 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004a08:	fff48513          	addi	a0,s1,-1
    80004a0c:	00000097          	auipc	ra,0x0
    80004a10:	fcc080e7          	jalr	-52(ra) # 800049d8 <_ZL9fibonaccim>
    80004a14:	00050913          	mv	s2,a0
    80004a18:	ffe48513          	addi	a0,s1,-2
    80004a1c:	00000097          	auipc	ra,0x0
    80004a20:	fbc080e7          	jalr	-68(ra) # 800049d8 <_ZL9fibonaccim>
    80004a24:	00a90533          	add	a0,s2,a0
}
    80004a28:	01813083          	ld	ra,24(sp)
    80004a2c:	01013403          	ld	s0,16(sp)
    80004a30:	00813483          	ld	s1,8(sp)
    80004a34:	00013903          	ld	s2,0(sp)
    80004a38:	02010113          	addi	sp,sp,32
    80004a3c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004a40:	ffffd097          	auipc	ra,0xffffd
    80004a44:	b24080e7          	jalr	-1244(ra) # 80001564 <_Z15thread_dispatchv>
    80004a48:	fc1ff06f          	j	80004a08 <_ZL9fibonaccim+0x30>

0000000080004a4c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004a4c:	fe010113          	addi	sp,sp,-32
    80004a50:	00113c23          	sd	ra,24(sp)
    80004a54:	00813823          	sd	s0,16(sp)
    80004a58:	00913423          	sd	s1,8(sp)
    80004a5c:	01213023          	sd	s2,0(sp)
    80004a60:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004a64:	00a00493          	li	s1,10
    80004a68:	0400006f          	j	80004aa8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a6c:	00005517          	auipc	a0,0x5
    80004a70:	9fc50513          	addi	a0,a0,-1540 # 80009468 <CONSOLE_STATUS+0x458>
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	dc8080e7          	jalr	-568(ra) # 8000583c <_Z11printStringPKc>
    80004a7c:	00000613          	li	a2,0
    80004a80:	00a00593          	li	a1,10
    80004a84:	00048513          	mv	a0,s1
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	f64080e7          	jalr	-156(ra) # 800059ec <_Z8printIntiii>
    80004a90:	00004517          	auipc	a0,0x4
    80004a94:	6d050513          	addi	a0,a0,1744 # 80009160 <CONSOLE_STATUS+0x150>
    80004a98:	00001097          	auipc	ra,0x1
    80004a9c:	da4080e7          	jalr	-604(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004aa0:	0014849b          	addiw	s1,s1,1
    80004aa4:	0ff4f493          	andi	s1,s1,255
    80004aa8:	00c00793          	li	a5,12
    80004aac:	fc97f0e3          	bgeu	a5,s1,80004a6c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004ab0:	00005517          	auipc	a0,0x5
    80004ab4:	9c050513          	addi	a0,a0,-1600 # 80009470 <CONSOLE_STATUS+0x460>
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	d84080e7          	jalr	-636(ra) # 8000583c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004ac0:	00500313          	li	t1,5
    thread_dispatch();
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	aa0080e7          	jalr	-1376(ra) # 80001564 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004acc:	01000513          	li	a0,16
    80004ad0:	00000097          	auipc	ra,0x0
    80004ad4:	f08080e7          	jalr	-248(ra) # 800049d8 <_ZL9fibonaccim>
    80004ad8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004adc:	00005517          	auipc	a0,0x5
    80004ae0:	9a450513          	addi	a0,a0,-1628 # 80009480 <CONSOLE_STATUS+0x470>
    80004ae4:	00001097          	auipc	ra,0x1
    80004ae8:	d58080e7          	jalr	-680(ra) # 8000583c <_Z11printStringPKc>
    80004aec:	00000613          	li	a2,0
    80004af0:	00a00593          	li	a1,10
    80004af4:	0009051b          	sext.w	a0,s2
    80004af8:	00001097          	auipc	ra,0x1
    80004afc:	ef4080e7          	jalr	-268(ra) # 800059ec <_Z8printIntiii>
    80004b00:	00004517          	auipc	a0,0x4
    80004b04:	66050513          	addi	a0,a0,1632 # 80009160 <CONSOLE_STATUS+0x150>
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	d34080e7          	jalr	-716(ra) # 8000583c <_Z11printStringPKc>
    80004b10:	0400006f          	j	80004b50 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b14:	00005517          	auipc	a0,0x5
    80004b18:	95450513          	addi	a0,a0,-1708 # 80009468 <CONSOLE_STATUS+0x458>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	d20080e7          	jalr	-736(ra) # 8000583c <_Z11printStringPKc>
    80004b24:	00000613          	li	a2,0
    80004b28:	00a00593          	li	a1,10
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	ebc080e7          	jalr	-324(ra) # 800059ec <_Z8printIntiii>
    80004b38:	00004517          	auipc	a0,0x4
    80004b3c:	62850513          	addi	a0,a0,1576 # 80009160 <CONSOLE_STATUS+0x150>
    80004b40:	00001097          	auipc	ra,0x1
    80004b44:	cfc080e7          	jalr	-772(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004b48:	0014849b          	addiw	s1,s1,1
    80004b4c:	0ff4f493          	andi	s1,s1,255
    80004b50:	00f00793          	li	a5,15
    80004b54:	fc97f0e3          	bgeu	a5,s1,80004b14 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004b58:	00005517          	auipc	a0,0x5
    80004b5c:	93850513          	addi	a0,a0,-1736 # 80009490 <CONSOLE_STATUS+0x480>
    80004b60:	00001097          	auipc	ra,0x1
    80004b64:	cdc080e7          	jalr	-804(ra) # 8000583c <_Z11printStringPKc>
    finishedD = true;
    80004b68:	00100793          	li	a5,1
    80004b6c:	00007717          	auipc	a4,0x7
    80004b70:	d4f70223          	sb	a5,-700(a4) # 8000b8b0 <_ZL9finishedD>
    thread_dispatch();
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	9f0080e7          	jalr	-1552(ra) # 80001564 <_Z15thread_dispatchv>
}
    80004b7c:	01813083          	ld	ra,24(sp)
    80004b80:	01013403          	ld	s0,16(sp)
    80004b84:	00813483          	ld	s1,8(sp)
    80004b88:	00013903          	ld	s2,0(sp)
    80004b8c:	02010113          	addi	sp,sp,32
    80004b90:	00008067          	ret

0000000080004b94 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004b94:	fe010113          	addi	sp,sp,-32
    80004b98:	00113c23          	sd	ra,24(sp)
    80004b9c:	00813823          	sd	s0,16(sp)
    80004ba0:	00913423          	sd	s1,8(sp)
    80004ba4:	01213023          	sd	s2,0(sp)
    80004ba8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004bac:	00000493          	li	s1,0
    80004bb0:	0400006f          	j	80004bf0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004bb4:	00005517          	auipc	a0,0x5
    80004bb8:	88450513          	addi	a0,a0,-1916 # 80009438 <CONSOLE_STATUS+0x428>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	c80080e7          	jalr	-896(ra) # 8000583c <_Z11printStringPKc>
    80004bc4:	00000613          	li	a2,0
    80004bc8:	00a00593          	li	a1,10
    80004bcc:	00048513          	mv	a0,s1
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	e1c080e7          	jalr	-484(ra) # 800059ec <_Z8printIntiii>
    80004bd8:	00004517          	auipc	a0,0x4
    80004bdc:	58850513          	addi	a0,a0,1416 # 80009160 <CONSOLE_STATUS+0x150>
    80004be0:	00001097          	auipc	ra,0x1
    80004be4:	c5c080e7          	jalr	-932(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004be8:	0014849b          	addiw	s1,s1,1
    80004bec:	0ff4f493          	andi	s1,s1,255
    80004bf0:	00200793          	li	a5,2
    80004bf4:	fc97f0e3          	bgeu	a5,s1,80004bb4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004bf8:	00005517          	auipc	a0,0x5
    80004bfc:	84850513          	addi	a0,a0,-1976 # 80009440 <CONSOLE_STATUS+0x430>
    80004c00:	00001097          	auipc	ra,0x1
    80004c04:	c3c080e7          	jalr	-964(ra) # 8000583c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004c08:	00700313          	li	t1,7
    thread_dispatch();
    80004c0c:	ffffd097          	auipc	ra,0xffffd
    80004c10:	958080e7          	jalr	-1704(ra) # 80001564 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004c14:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004c18:	00005517          	auipc	a0,0x5
    80004c1c:	83850513          	addi	a0,a0,-1992 # 80009450 <CONSOLE_STATUS+0x440>
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	c1c080e7          	jalr	-996(ra) # 8000583c <_Z11printStringPKc>
    80004c28:	00000613          	li	a2,0
    80004c2c:	00a00593          	li	a1,10
    80004c30:	0009051b          	sext.w	a0,s2
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	db8080e7          	jalr	-584(ra) # 800059ec <_Z8printIntiii>
    80004c3c:	00004517          	auipc	a0,0x4
    80004c40:	52450513          	addi	a0,a0,1316 # 80009160 <CONSOLE_STATUS+0x150>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	bf8080e7          	jalr	-1032(ra) # 8000583c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004c4c:	00c00513          	li	a0,12
    80004c50:	00000097          	auipc	ra,0x0
    80004c54:	d88080e7          	jalr	-632(ra) # 800049d8 <_ZL9fibonaccim>
    80004c58:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004c5c:	00004517          	auipc	a0,0x4
    80004c60:	7fc50513          	addi	a0,a0,2044 # 80009458 <CONSOLE_STATUS+0x448>
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	bd8080e7          	jalr	-1064(ra) # 8000583c <_Z11printStringPKc>
    80004c6c:	00000613          	li	a2,0
    80004c70:	00a00593          	li	a1,10
    80004c74:	0009051b          	sext.w	a0,s2
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	d74080e7          	jalr	-652(ra) # 800059ec <_Z8printIntiii>
    80004c80:	00004517          	auipc	a0,0x4
    80004c84:	4e050513          	addi	a0,a0,1248 # 80009160 <CONSOLE_STATUS+0x150>
    80004c88:	00001097          	auipc	ra,0x1
    80004c8c:	bb4080e7          	jalr	-1100(ra) # 8000583c <_Z11printStringPKc>
    80004c90:	0400006f          	j	80004cd0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004c94:	00004517          	auipc	a0,0x4
    80004c98:	7a450513          	addi	a0,a0,1956 # 80009438 <CONSOLE_STATUS+0x428>
    80004c9c:	00001097          	auipc	ra,0x1
    80004ca0:	ba0080e7          	jalr	-1120(ra) # 8000583c <_Z11printStringPKc>
    80004ca4:	00000613          	li	a2,0
    80004ca8:	00a00593          	li	a1,10
    80004cac:	00048513          	mv	a0,s1
    80004cb0:	00001097          	auipc	ra,0x1
    80004cb4:	d3c080e7          	jalr	-708(ra) # 800059ec <_Z8printIntiii>
    80004cb8:	00004517          	auipc	a0,0x4
    80004cbc:	4a850513          	addi	a0,a0,1192 # 80009160 <CONSOLE_STATUS+0x150>
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	b7c080e7          	jalr	-1156(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004cc8:	0014849b          	addiw	s1,s1,1
    80004ccc:	0ff4f493          	andi	s1,s1,255
    80004cd0:	00500793          	li	a5,5
    80004cd4:	fc97f0e3          	bgeu	a5,s1,80004c94 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004cd8:	00004517          	auipc	a0,0x4
    80004cdc:	73850513          	addi	a0,a0,1848 # 80009410 <CONSOLE_STATUS+0x400>
    80004ce0:	00001097          	auipc	ra,0x1
    80004ce4:	b5c080e7          	jalr	-1188(ra) # 8000583c <_Z11printStringPKc>
    finishedC = true;
    80004ce8:	00100793          	li	a5,1
    80004cec:	00007717          	auipc	a4,0x7
    80004cf0:	bcf702a3          	sb	a5,-1083(a4) # 8000b8b1 <_ZL9finishedC>
    thread_dispatch();
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	870080e7          	jalr	-1936(ra) # 80001564 <_Z15thread_dispatchv>
}
    80004cfc:	01813083          	ld	ra,24(sp)
    80004d00:	01013403          	ld	s0,16(sp)
    80004d04:	00813483          	ld	s1,8(sp)
    80004d08:	00013903          	ld	s2,0(sp)
    80004d0c:	02010113          	addi	sp,sp,32
    80004d10:	00008067          	ret

0000000080004d14 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004d14:	fe010113          	addi	sp,sp,-32
    80004d18:	00113c23          	sd	ra,24(sp)
    80004d1c:	00813823          	sd	s0,16(sp)
    80004d20:	00913423          	sd	s1,8(sp)
    80004d24:	01213023          	sd	s2,0(sp)
    80004d28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004d2c:	00000913          	li	s2,0
    80004d30:	0380006f          	j	80004d68 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	830080e7          	jalr	-2000(ra) # 80001564 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d3c:	00148493          	addi	s1,s1,1
    80004d40:	000027b7          	lui	a5,0x2
    80004d44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d48:	0097ee63          	bltu	a5,s1,80004d64 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d4c:	00000713          	li	a4,0
    80004d50:	000077b7          	lui	a5,0x7
    80004d54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d58:	fce7eee3          	bltu	a5,a4,80004d34 <_ZL11workerBodyBPv+0x20>
    80004d5c:	00170713          	addi	a4,a4,1
    80004d60:	ff1ff06f          	j	80004d50 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004d64:	00190913          	addi	s2,s2,1
    80004d68:	00f00793          	li	a5,15
    80004d6c:	0527e063          	bltu	a5,s2,80004dac <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004d70:	00004517          	auipc	a0,0x4
    80004d74:	6b050513          	addi	a0,a0,1712 # 80009420 <CONSOLE_STATUS+0x410>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	ac4080e7          	jalr	-1340(ra) # 8000583c <_Z11printStringPKc>
    80004d80:	00000613          	li	a2,0
    80004d84:	00a00593          	li	a1,10
    80004d88:	0009051b          	sext.w	a0,s2
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	c60080e7          	jalr	-928(ra) # 800059ec <_Z8printIntiii>
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	3cc50513          	addi	a0,a0,972 # 80009160 <CONSOLE_STATUS+0x150>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	aa0080e7          	jalr	-1376(ra) # 8000583c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004da4:	00000493          	li	s1,0
    80004da8:	f99ff06f          	j	80004d40 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004dac:	00004517          	auipc	a0,0x4
    80004db0:	67c50513          	addi	a0,a0,1660 # 80009428 <CONSOLE_STATUS+0x418>
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	a88080e7          	jalr	-1400(ra) # 8000583c <_Z11printStringPKc>
    finishedB = true;
    80004dbc:	00100793          	li	a5,1
    80004dc0:	00007717          	auipc	a4,0x7
    80004dc4:	aef70923          	sb	a5,-1294(a4) # 8000b8b2 <_ZL9finishedB>
    thread_dispatch();
    80004dc8:	ffffc097          	auipc	ra,0xffffc
    80004dcc:	79c080e7          	jalr	1948(ra) # 80001564 <_Z15thread_dispatchv>
}
    80004dd0:	01813083          	ld	ra,24(sp)
    80004dd4:	01013403          	ld	s0,16(sp)
    80004dd8:	00813483          	ld	s1,8(sp)
    80004ddc:	00013903          	ld	s2,0(sp)
    80004de0:	02010113          	addi	sp,sp,32
    80004de4:	00008067          	ret

0000000080004de8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004de8:	fe010113          	addi	sp,sp,-32
    80004dec:	00113c23          	sd	ra,24(sp)
    80004df0:	00813823          	sd	s0,16(sp)
    80004df4:	00913423          	sd	s1,8(sp)
    80004df8:	01213023          	sd	s2,0(sp)
    80004dfc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004e00:	00000913          	li	s2,0
    80004e04:	0380006f          	j	80004e3c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004e08:	ffffc097          	auipc	ra,0xffffc
    80004e0c:	75c080e7          	jalr	1884(ra) # 80001564 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e10:	00148493          	addi	s1,s1,1
    80004e14:	000027b7          	lui	a5,0x2
    80004e18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e1c:	0097ee63          	bltu	a5,s1,80004e38 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e20:	00000713          	li	a4,0
    80004e24:	000077b7          	lui	a5,0x7
    80004e28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e2c:	fce7eee3          	bltu	a5,a4,80004e08 <_ZL11workerBodyAPv+0x20>
    80004e30:	00170713          	addi	a4,a4,1
    80004e34:	ff1ff06f          	j	80004e24 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004e38:	00190913          	addi	s2,s2,1
    80004e3c:	00900793          	li	a5,9
    80004e40:	0527e063          	bltu	a5,s2,80004e80 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004e44:	00004517          	auipc	a0,0x4
    80004e48:	5c450513          	addi	a0,a0,1476 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004e4c:	00001097          	auipc	ra,0x1
    80004e50:	9f0080e7          	jalr	-1552(ra) # 8000583c <_Z11printStringPKc>
    80004e54:	00000613          	li	a2,0
    80004e58:	00a00593          	li	a1,10
    80004e5c:	0009051b          	sext.w	a0,s2
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	b8c080e7          	jalr	-1140(ra) # 800059ec <_Z8printIntiii>
    80004e68:	00004517          	auipc	a0,0x4
    80004e6c:	2f850513          	addi	a0,a0,760 # 80009160 <CONSOLE_STATUS+0x150>
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	9cc080e7          	jalr	-1588(ra) # 8000583c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004e78:	00000493          	li	s1,0
    80004e7c:	f99ff06f          	j	80004e14 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004e80:	00004517          	auipc	a0,0x4
    80004e84:	59050513          	addi	a0,a0,1424 # 80009410 <CONSOLE_STATUS+0x400>
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	9b4080e7          	jalr	-1612(ra) # 8000583c <_Z11printStringPKc>
    finishedA = true;
    80004e90:	00100793          	li	a5,1
    80004e94:	00007717          	auipc	a4,0x7
    80004e98:	a0f70fa3          	sb	a5,-1505(a4) # 8000b8b3 <_ZL9finishedA>
}
    80004e9c:	01813083          	ld	ra,24(sp)
    80004ea0:	01013403          	ld	s0,16(sp)
    80004ea4:	00813483          	ld	s1,8(sp)
    80004ea8:	00013903          	ld	s2,0(sp)
    80004eac:	02010113          	addi	sp,sp,32
    80004eb0:	00008067          	ret

0000000080004eb4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004eb4:	fd010113          	addi	sp,sp,-48
    80004eb8:	02113423          	sd	ra,40(sp)
    80004ebc:	02813023          	sd	s0,32(sp)
    80004ec0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004ec4:	00000613          	li	a2,0
    80004ec8:	00000597          	auipc	a1,0x0
    80004ecc:	f2058593          	addi	a1,a1,-224 # 80004de8 <_ZL11workerBodyAPv>
    80004ed0:	fd040513          	addi	a0,s0,-48
    80004ed4:	ffffc097          	auipc	ra,0xffffc
    80004ed8:	634080e7          	jalr	1588(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004edc:	00004517          	auipc	a0,0x4
    80004ee0:	5c450513          	addi	a0,a0,1476 # 800094a0 <CONSOLE_STATUS+0x490>
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	958080e7          	jalr	-1704(ra) # 8000583c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004eec:	00000613          	li	a2,0
    80004ef0:	00000597          	auipc	a1,0x0
    80004ef4:	e2458593          	addi	a1,a1,-476 # 80004d14 <_ZL11workerBodyBPv>
    80004ef8:	fd840513          	addi	a0,s0,-40
    80004efc:	ffffc097          	auipc	ra,0xffffc
    80004f00:	60c080e7          	jalr	1548(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004f04:	00004517          	auipc	a0,0x4
    80004f08:	5b450513          	addi	a0,a0,1460 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	930080e7          	jalr	-1744(ra) # 8000583c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004f14:	00000613          	li	a2,0
    80004f18:	00000597          	auipc	a1,0x0
    80004f1c:	c7c58593          	addi	a1,a1,-900 # 80004b94 <_ZL11workerBodyCPv>
    80004f20:	fe040513          	addi	a0,s0,-32
    80004f24:	ffffc097          	auipc	ra,0xffffc
    80004f28:	5e4080e7          	jalr	1508(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004f2c:	00004517          	auipc	a0,0x4
    80004f30:	5a450513          	addi	a0,a0,1444 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	908080e7          	jalr	-1784(ra) # 8000583c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004f3c:	00000613          	li	a2,0
    80004f40:	00000597          	auipc	a1,0x0
    80004f44:	b0c58593          	addi	a1,a1,-1268 # 80004a4c <_ZL11workerBodyDPv>
    80004f48:	fe840513          	addi	a0,s0,-24
    80004f4c:	ffffc097          	auipc	ra,0xffffc
    80004f50:	5bc080e7          	jalr	1468(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004f54:	00004517          	auipc	a0,0x4
    80004f58:	59450513          	addi	a0,a0,1428 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	8e0080e7          	jalr	-1824(ra) # 8000583c <_Z11printStringPKc>
    80004f64:	00c0006f          	j	80004f70 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004f68:	ffffc097          	auipc	ra,0xffffc
    80004f6c:	5fc080e7          	jalr	1532(ra) # 80001564 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004f70:	00007797          	auipc	a5,0x7
    80004f74:	9437c783          	lbu	a5,-1725(a5) # 8000b8b3 <_ZL9finishedA>
    80004f78:	fe0788e3          	beqz	a5,80004f68 <_Z18Threads_C_API_testv+0xb4>
    80004f7c:	00007797          	auipc	a5,0x7
    80004f80:	9367c783          	lbu	a5,-1738(a5) # 8000b8b2 <_ZL9finishedB>
    80004f84:	fe0782e3          	beqz	a5,80004f68 <_Z18Threads_C_API_testv+0xb4>
    80004f88:	00007797          	auipc	a5,0x7
    80004f8c:	9297c783          	lbu	a5,-1751(a5) # 8000b8b1 <_ZL9finishedC>
    80004f90:	fc078ce3          	beqz	a5,80004f68 <_Z18Threads_C_API_testv+0xb4>
    80004f94:	00007797          	auipc	a5,0x7
    80004f98:	91c7c783          	lbu	a5,-1764(a5) # 8000b8b0 <_ZL9finishedD>
    80004f9c:	fc0786e3          	beqz	a5,80004f68 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004fa0:	02813083          	ld	ra,40(sp)
    80004fa4:	02013403          	ld	s0,32(sp)
    80004fa8:	03010113          	addi	sp,sp,48
    80004fac:	00008067          	ret

0000000080004fb0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004fb0:	fd010113          	addi	sp,sp,-48
    80004fb4:	02113423          	sd	ra,40(sp)
    80004fb8:	02813023          	sd	s0,32(sp)
    80004fbc:	00913c23          	sd	s1,24(sp)
    80004fc0:	01213823          	sd	s2,16(sp)
    80004fc4:	01313423          	sd	s3,8(sp)
    80004fc8:	03010413          	addi	s0,sp,48
    80004fcc:	00050993          	mv	s3,a0
    80004fd0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004fd4:	00000913          	li	s2,0
    80004fd8:	00c0006f          	j	80004fe4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004fdc:	ffffd097          	auipc	ra,0xffffd
    80004fe0:	a10080e7          	jalr	-1520(ra) # 800019ec <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004fe4:	ffffc097          	auipc	ra,0xffffc
    80004fe8:	6a8080e7          	jalr	1704(ra) # 8000168c <_Z4getcv>
    80004fec:	0005059b          	sext.w	a1,a0
    80004ff0:	01b00793          	li	a5,27
    80004ff4:	02f58a63          	beq	a1,a5,80005028 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ff8:	0084b503          	ld	a0,8(s1)
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	c64080e7          	jalr	-924(ra) # 80005c60 <_ZN9BufferCPP3putEi>
        i++;
    80005004:	0019071b          	addiw	a4,s2,1
    80005008:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000500c:	0004a683          	lw	a3,0(s1)
    80005010:	0026979b          	slliw	a5,a3,0x2
    80005014:	00d787bb          	addw	a5,a5,a3
    80005018:	0017979b          	slliw	a5,a5,0x1
    8000501c:	02f767bb          	remw	a5,a4,a5
    80005020:	fc0792e3          	bnez	a5,80004fe4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005024:	fb9ff06f          	j	80004fdc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005028:	00100793          	li	a5,1
    8000502c:	00007717          	auipc	a4,0x7
    80005030:	88f72623          	sw	a5,-1908(a4) # 8000b8b8 <_ZL9threadEnd>
    td->buffer->put('!');
    80005034:	0209b783          	ld	a5,32(s3)
    80005038:	02100593          	li	a1,33
    8000503c:	0087b503          	ld	a0,8(a5)
    80005040:	00001097          	auipc	ra,0x1
    80005044:	c20080e7          	jalr	-992(ra) # 80005c60 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005048:	0104b503          	ld	a0,16(s1)
    8000504c:	ffffc097          	auipc	ra,0xffffc
    80005050:	7b4080e7          	jalr	1972(ra) # 80001800 <_ZN9Semaphore6signalEv>
}
    80005054:	02813083          	ld	ra,40(sp)
    80005058:	02013403          	ld	s0,32(sp)
    8000505c:	01813483          	ld	s1,24(sp)
    80005060:	01013903          	ld	s2,16(sp)
    80005064:	00813983          	ld	s3,8(sp)
    80005068:	03010113          	addi	sp,sp,48
    8000506c:	00008067          	ret

0000000080005070 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005070:	fe010113          	addi	sp,sp,-32
    80005074:	00113c23          	sd	ra,24(sp)
    80005078:	00813823          	sd	s0,16(sp)
    8000507c:	00913423          	sd	s1,8(sp)
    80005080:	01213023          	sd	s2,0(sp)
    80005084:	02010413          	addi	s0,sp,32
    80005088:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000508c:	00000913          	li	s2,0
    80005090:	00c0006f          	j	8000509c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005094:	ffffd097          	auipc	ra,0xffffd
    80005098:	958080e7          	jalr	-1704(ra) # 800019ec <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    8000509c:	00007797          	auipc	a5,0x7
    800050a0:	81c7a783          	lw	a5,-2020(a5) # 8000b8b8 <_ZL9threadEnd>
    800050a4:	02079e63          	bnez	a5,800050e0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800050a8:	0004a583          	lw	a1,0(s1)
    800050ac:	0305859b          	addiw	a1,a1,48
    800050b0:	0084b503          	ld	a0,8(s1)
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	bac080e7          	jalr	-1108(ra) # 80005c60 <_ZN9BufferCPP3putEi>
        i++;
    800050bc:	0019071b          	addiw	a4,s2,1
    800050c0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800050c4:	0004a683          	lw	a3,0(s1)
    800050c8:	0026979b          	slliw	a5,a3,0x2
    800050cc:	00d787bb          	addw	a5,a5,a3
    800050d0:	0017979b          	slliw	a5,a5,0x1
    800050d4:	02f767bb          	remw	a5,a4,a5
    800050d8:	fc0792e3          	bnez	a5,8000509c <_ZN12ProducerSync8producerEPv+0x2c>
    800050dc:	fb9ff06f          	j	80005094 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800050e0:	0104b503          	ld	a0,16(s1)
    800050e4:	ffffc097          	auipc	ra,0xffffc
    800050e8:	71c080e7          	jalr	1820(ra) # 80001800 <_ZN9Semaphore6signalEv>
}
    800050ec:	01813083          	ld	ra,24(sp)
    800050f0:	01013403          	ld	s0,16(sp)
    800050f4:	00813483          	ld	s1,8(sp)
    800050f8:	00013903          	ld	s2,0(sp)
    800050fc:	02010113          	addi	sp,sp,32
    80005100:	00008067          	ret

0000000080005104 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005104:	fd010113          	addi	sp,sp,-48
    80005108:	02113423          	sd	ra,40(sp)
    8000510c:	02813023          	sd	s0,32(sp)
    80005110:	00913c23          	sd	s1,24(sp)
    80005114:	01213823          	sd	s2,16(sp)
    80005118:	01313423          	sd	s3,8(sp)
    8000511c:	01413023          	sd	s4,0(sp)
    80005120:	03010413          	addi	s0,sp,48
    80005124:	00050993          	mv	s3,a0
    80005128:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000512c:	00000a13          	li	s4,0
    80005130:	01c0006f          	j	8000514c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	8b8080e7          	jalr	-1864(ra) # 800019ec <_ZN6Thread8dispatchEv>
    8000513c:	0500006f          	j	8000518c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005140:	00a00513          	li	a0,10
    80005144:	ffffc097          	auipc	ra,0xffffc
    80005148:	570080e7          	jalr	1392(ra) # 800016b4 <_Z4putcc>
    while (!threadEnd) {
    8000514c:	00006797          	auipc	a5,0x6
    80005150:	76c7a783          	lw	a5,1900(a5) # 8000b8b8 <_ZL9threadEnd>
    80005154:	06079263          	bnez	a5,800051b8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005158:	00893503          	ld	a0,8(s2)
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	b94080e7          	jalr	-1132(ra) # 80005cf0 <_ZN9BufferCPP3getEv>
        i++;
    80005164:	001a049b          	addiw	s1,s4,1
    80005168:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000516c:	0ff57513          	andi	a0,a0,255
    80005170:	ffffc097          	auipc	ra,0xffffc
    80005174:	544080e7          	jalr	1348(ra) # 800016b4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005178:	00092703          	lw	a4,0(s2)
    8000517c:	0027179b          	slliw	a5,a4,0x2
    80005180:	00e787bb          	addw	a5,a5,a4
    80005184:	02f4e7bb          	remw	a5,s1,a5
    80005188:	fa0786e3          	beqz	a5,80005134 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000518c:	05000793          	li	a5,80
    80005190:	02f4e4bb          	remw	s1,s1,a5
    80005194:	fa049ce3          	bnez	s1,8000514c <_ZN12ConsumerSync8consumerEPv+0x48>
    80005198:	fa9ff06f          	j	80005140 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000519c:	0209b783          	ld	a5,32(s3)
    800051a0:	0087b503          	ld	a0,8(a5)
    800051a4:	00001097          	auipc	ra,0x1
    800051a8:	b4c080e7          	jalr	-1204(ra) # 80005cf0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800051ac:	0ff57513          	andi	a0,a0,255
    800051b0:	ffffd097          	auipc	ra,0xffffd
    800051b4:	a60080e7          	jalr	-1440(ra) # 80001c10 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800051b8:	0209b783          	ld	a5,32(s3)
    800051bc:	0087b503          	ld	a0,8(a5)
    800051c0:	00001097          	auipc	ra,0x1
    800051c4:	bbc080e7          	jalr	-1092(ra) # 80005d7c <_ZN9BufferCPP6getCntEv>
    800051c8:	fca04ae3          	bgtz	a0,8000519c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800051cc:	01093503          	ld	a0,16(s2)
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	630080e7          	jalr	1584(ra) # 80001800 <_ZN9Semaphore6signalEv>
}
    800051d8:	02813083          	ld	ra,40(sp)
    800051dc:	02013403          	ld	s0,32(sp)
    800051e0:	01813483          	ld	s1,24(sp)
    800051e4:	01013903          	ld	s2,16(sp)
    800051e8:	00813983          	ld	s3,8(sp)
    800051ec:	00013a03          	ld	s4,0(sp)
    800051f0:	03010113          	addi	sp,sp,48
    800051f4:	00008067          	ret

00000000800051f8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800051f8:	f8010113          	addi	sp,sp,-128
    800051fc:	06113c23          	sd	ra,120(sp)
    80005200:	06813823          	sd	s0,112(sp)
    80005204:	06913423          	sd	s1,104(sp)
    80005208:	07213023          	sd	s2,96(sp)
    8000520c:	05313c23          	sd	s3,88(sp)
    80005210:	05413823          	sd	s4,80(sp)
    80005214:	05513423          	sd	s5,72(sp)
    80005218:	05613023          	sd	s6,64(sp)
    8000521c:	03713c23          	sd	s7,56(sp)
    80005220:	03813823          	sd	s8,48(sp)
    80005224:	03913423          	sd	s9,40(sp)
    80005228:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000522c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005230:	00004517          	auipc	a0,0x4
    80005234:	0f050513          	addi	a0,a0,240 # 80009320 <CONSOLE_STATUS+0x310>
    80005238:	00000097          	auipc	ra,0x0
    8000523c:	604080e7          	jalr	1540(ra) # 8000583c <_Z11printStringPKc>
    getString(input, 30);
    80005240:	01e00593          	li	a1,30
    80005244:	f8040493          	addi	s1,s0,-128
    80005248:	00048513          	mv	a0,s1
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	678080e7          	jalr	1656(ra) # 800058c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005254:	00048513          	mv	a0,s1
    80005258:	00000097          	auipc	ra,0x0
    8000525c:	744080e7          	jalr	1860(ra) # 8000599c <_Z11stringToIntPKc>
    80005260:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005264:	00004517          	auipc	a0,0x4
    80005268:	0dc50513          	addi	a0,a0,220 # 80009340 <CONSOLE_STATUS+0x330>
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	5d0080e7          	jalr	1488(ra) # 8000583c <_Z11printStringPKc>
    getString(input, 30);
    80005274:	01e00593          	li	a1,30
    80005278:	00048513          	mv	a0,s1
    8000527c:	00000097          	auipc	ra,0x0
    80005280:	648080e7          	jalr	1608(ra) # 800058c4 <_Z9getStringPci>
    n = stringToInt(input);
    80005284:	00048513          	mv	a0,s1
    80005288:	00000097          	auipc	ra,0x0
    8000528c:	714080e7          	jalr	1812(ra) # 8000599c <_Z11stringToIntPKc>
    80005290:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005294:	00004517          	auipc	a0,0x4
    80005298:	0cc50513          	addi	a0,a0,204 # 80009360 <CONSOLE_STATUS+0x350>
    8000529c:	00000097          	auipc	ra,0x0
    800052a0:	5a0080e7          	jalr	1440(ra) # 8000583c <_Z11printStringPKc>
    800052a4:	00000613          	li	a2,0
    800052a8:	00a00593          	li	a1,10
    800052ac:	00090513          	mv	a0,s2
    800052b0:	00000097          	auipc	ra,0x0
    800052b4:	73c080e7          	jalr	1852(ra) # 800059ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800052b8:	00004517          	auipc	a0,0x4
    800052bc:	0c050513          	addi	a0,a0,192 # 80009378 <CONSOLE_STATUS+0x368>
    800052c0:	00000097          	auipc	ra,0x0
    800052c4:	57c080e7          	jalr	1404(ra) # 8000583c <_Z11printStringPKc>
    800052c8:	00000613          	li	a2,0
    800052cc:	00a00593          	li	a1,10
    800052d0:	00048513          	mv	a0,s1
    800052d4:	00000097          	auipc	ra,0x0
    800052d8:	718080e7          	jalr	1816(ra) # 800059ec <_Z8printIntiii>
    printString(".\n");
    800052dc:	00004517          	auipc	a0,0x4
    800052e0:	0b450513          	addi	a0,a0,180 # 80009390 <CONSOLE_STATUS+0x380>
    800052e4:	00000097          	auipc	ra,0x0
    800052e8:	558080e7          	jalr	1368(ra) # 8000583c <_Z11printStringPKc>
    if(threadNum > n) {
    800052ec:	0324c463          	blt	s1,s2,80005314 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800052f0:	03205c63          	blez	s2,80005328 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800052f4:	03800513          	li	a0,56
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	2e4080e7          	jalr	740(ra) # 800025dc <_Znwm>
    80005300:	00050a93          	mv	s5,a0
    80005304:	00048593          	mv	a1,s1
    80005308:	00001097          	auipc	ra,0x1
    8000530c:	804080e7          	jalr	-2044(ra) # 80005b0c <_ZN9BufferCPPC1Ei>
    80005310:	0300006f          	j	80005340 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005314:	00004517          	auipc	a0,0x4
    80005318:	08450513          	addi	a0,a0,132 # 80009398 <CONSOLE_STATUS+0x388>
    8000531c:	00000097          	auipc	ra,0x0
    80005320:	520080e7          	jalr	1312(ra) # 8000583c <_Z11printStringPKc>
        return;
    80005324:	0140006f          	j	80005338 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005328:	00004517          	auipc	a0,0x4
    8000532c:	0b050513          	addi	a0,a0,176 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005330:	00000097          	auipc	ra,0x0
    80005334:	50c080e7          	jalr	1292(ra) # 8000583c <_Z11printStringPKc>
        return;
    80005338:	000b8113          	mv	sp,s7
    8000533c:	2380006f          	j	80005574 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005340:	01000513          	li	a0,16
    80005344:	ffffd097          	auipc	ra,0xffffd
    80005348:	298080e7          	jalr	664(ra) # 800025dc <_Znwm>
    8000534c:	00050493          	mv	s1,a0
    80005350:	00000593          	li	a1,0
    80005354:	ffffc097          	auipc	ra,0xffffc
    80005358:	444080e7          	jalr	1092(ra) # 80001798 <_ZN9SemaphoreC1Ej>
    8000535c:	00006797          	auipc	a5,0x6
    80005360:	5697b223          	sd	s1,1380(a5) # 8000b8c0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005364:	00391793          	slli	a5,s2,0x3
    80005368:	00f78793          	addi	a5,a5,15
    8000536c:	ff07f793          	andi	a5,a5,-16
    80005370:	40f10133          	sub	sp,sp,a5
    80005374:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005378:	0019071b          	addiw	a4,s2,1
    8000537c:	00171793          	slli	a5,a4,0x1
    80005380:	00e787b3          	add	a5,a5,a4
    80005384:	00379793          	slli	a5,a5,0x3
    80005388:	00f78793          	addi	a5,a5,15
    8000538c:	ff07f793          	andi	a5,a5,-16
    80005390:	40f10133          	sub	sp,sp,a5
    80005394:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005398:	00191c13          	slli	s8,s2,0x1
    8000539c:	012c07b3          	add	a5,s8,s2
    800053a0:	00379793          	slli	a5,a5,0x3
    800053a4:	00fa07b3          	add	a5,s4,a5
    800053a8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800053ac:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800053b0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800053b4:	02800513          	li	a0,40
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	224080e7          	jalr	548(ra) # 800025dc <_Znwm>
    800053c0:	00050b13          	mv	s6,a0
    800053c4:	012c0c33          	add	s8,s8,s2
    800053c8:	003c1c13          	slli	s8,s8,0x3
    800053cc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800053d0:	ffffc097          	auipc	ra,0xffffc
    800053d4:	570080e7          	jalr	1392(ra) # 80001940 <_ZN6ThreadC1Ev>
    800053d8:	00006797          	auipc	a5,0x6
    800053dc:	39878793          	addi	a5,a5,920 # 8000b770 <_ZTV12ConsumerSync+0x10>
    800053e0:	00fb3023          	sd	a5,0(s6)
    800053e4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800053e8:	000b0513          	mv	a0,s6
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	5a4080e7          	jalr	1444(ra) # 80001990 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800053f4:	00000493          	li	s1,0
    800053f8:	0380006f          	j	80005430 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053fc:	00006797          	auipc	a5,0x6
    80005400:	34c78793          	addi	a5,a5,844 # 8000b748 <_ZTV12ProducerSync+0x10>
    80005404:	00fcb023          	sd	a5,0(s9)
    80005408:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000540c:	00349793          	slli	a5,s1,0x3
    80005410:	00f987b3          	add	a5,s3,a5
    80005414:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005418:	00349793          	slli	a5,s1,0x3
    8000541c:	00f987b3          	add	a5,s3,a5
    80005420:	0007b503          	ld	a0,0(a5)
    80005424:	ffffc097          	auipc	ra,0xffffc
    80005428:	56c080e7          	jalr	1388(ra) # 80001990 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000542c:	0014849b          	addiw	s1,s1,1
    80005430:	0b24d063          	bge	s1,s2,800054d0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005434:	00149793          	slli	a5,s1,0x1
    80005438:	009787b3          	add	a5,a5,s1
    8000543c:	00379793          	slli	a5,a5,0x3
    80005440:	00fa07b3          	add	a5,s4,a5
    80005444:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005448:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000544c:	00006717          	auipc	a4,0x6
    80005450:	47473703          	ld	a4,1140(a4) # 8000b8c0 <_ZL10waitForAll>
    80005454:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005458:	02905863          	blez	s1,80005488 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000545c:	02800513          	li	a0,40
    80005460:	ffffd097          	auipc	ra,0xffffd
    80005464:	17c080e7          	jalr	380(ra) # 800025dc <_Znwm>
    80005468:	00050c93          	mv	s9,a0
    8000546c:	00149c13          	slli	s8,s1,0x1
    80005470:	009c0c33          	add	s8,s8,s1
    80005474:	003c1c13          	slli	s8,s8,0x3
    80005478:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000547c:	ffffc097          	auipc	ra,0xffffc
    80005480:	4c4080e7          	jalr	1220(ra) # 80001940 <_ZN6ThreadC1Ev>
    80005484:	f79ff06f          	j	800053fc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005488:	02800513          	li	a0,40
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	150080e7          	jalr	336(ra) # 800025dc <_Znwm>
    80005494:	00050c93          	mv	s9,a0
    80005498:	00149c13          	slli	s8,s1,0x1
    8000549c:	009c0c33          	add	s8,s8,s1
    800054a0:	003c1c13          	slli	s8,s8,0x3
    800054a4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800054a8:	ffffc097          	auipc	ra,0xffffc
    800054ac:	498080e7          	jalr	1176(ra) # 80001940 <_ZN6ThreadC1Ev>
    800054b0:	00006797          	auipc	a5,0x6
    800054b4:	27078793          	addi	a5,a5,624 # 8000b720 <_ZTV16ProducerKeyboard+0x10>
    800054b8:	00fcb023          	sd	a5,0(s9)
    800054bc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800054c0:	00349793          	slli	a5,s1,0x3
    800054c4:	00f987b3          	add	a5,s3,a5
    800054c8:	0197b023          	sd	s9,0(a5)
    800054cc:	f4dff06f          	j	80005418 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800054d0:	ffffc097          	auipc	ra,0xffffc
    800054d4:	51c080e7          	jalr	1308(ra) # 800019ec <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800054d8:	00000493          	li	s1,0
    800054dc:	00994e63          	blt	s2,s1,800054f8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800054e0:	00006517          	auipc	a0,0x6
    800054e4:	3e053503          	ld	a0,992(a0) # 8000b8c0 <_ZL10waitForAll>
    800054e8:	ffffc097          	auipc	ra,0xffffc
    800054ec:	2ec080e7          	jalr	748(ra) # 800017d4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800054f0:	0014849b          	addiw	s1,s1,1
    800054f4:	fe9ff06f          	j	800054dc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800054f8:	00000493          	li	s1,0
    800054fc:	0080006f          	j	80005504 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005500:	0014849b          	addiw	s1,s1,1
    80005504:	0324d263          	bge	s1,s2,80005528 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005508:	00349793          	slli	a5,s1,0x3
    8000550c:	00f987b3          	add	a5,s3,a5
    80005510:	0007b503          	ld	a0,0(a5)
    80005514:	fe0506e3          	beqz	a0,80005500 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005518:	00053783          	ld	a5,0(a0)
    8000551c:	0087b783          	ld	a5,8(a5)
    80005520:	000780e7          	jalr	a5
    80005524:	fddff06f          	j	80005500 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005528:	000b0a63          	beqz	s6,8000553c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000552c:	000b3783          	ld	a5,0(s6)
    80005530:	0087b783          	ld	a5,8(a5)
    80005534:	000b0513          	mv	a0,s6
    80005538:	000780e7          	jalr	a5
    delete waitForAll;
    8000553c:	00006517          	auipc	a0,0x6
    80005540:	38453503          	ld	a0,900(a0) # 8000b8c0 <_ZL10waitForAll>
    80005544:	00050863          	beqz	a0,80005554 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005548:	00053783          	ld	a5,0(a0)
    8000554c:	0087b783          	ld	a5,8(a5)
    80005550:	000780e7          	jalr	a5
    delete buffer;
    80005554:	000a8e63          	beqz	s5,80005570 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005558:	000a8513          	mv	a0,s5
    8000555c:	00001097          	auipc	ra,0x1
    80005560:	8a8080e7          	jalr	-1880(ra) # 80005e04 <_ZN9BufferCPPD1Ev>
    80005564:	000a8513          	mv	a0,s5
    80005568:	ffffd097          	auipc	ra,0xffffd
    8000556c:	0c4080e7          	jalr	196(ra) # 8000262c <_ZdlPv>
    80005570:	000b8113          	mv	sp,s7

}
    80005574:	f8040113          	addi	sp,s0,-128
    80005578:	07813083          	ld	ra,120(sp)
    8000557c:	07013403          	ld	s0,112(sp)
    80005580:	06813483          	ld	s1,104(sp)
    80005584:	06013903          	ld	s2,96(sp)
    80005588:	05813983          	ld	s3,88(sp)
    8000558c:	05013a03          	ld	s4,80(sp)
    80005590:	04813a83          	ld	s5,72(sp)
    80005594:	04013b03          	ld	s6,64(sp)
    80005598:	03813b83          	ld	s7,56(sp)
    8000559c:	03013c03          	ld	s8,48(sp)
    800055a0:	02813c83          	ld	s9,40(sp)
    800055a4:	08010113          	addi	sp,sp,128
    800055a8:	00008067          	ret
    800055ac:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800055b0:	000a8513          	mv	a0,s5
    800055b4:	ffffd097          	auipc	ra,0xffffd
    800055b8:	078080e7          	jalr	120(ra) # 8000262c <_ZdlPv>
    800055bc:	00048513          	mv	a0,s1
    800055c0:	00007097          	auipc	ra,0x7
    800055c4:	3e8080e7          	jalr	1000(ra) # 8000c9a8 <_Unwind_Resume>
    800055c8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800055cc:	00048513          	mv	a0,s1
    800055d0:	ffffd097          	auipc	ra,0xffffd
    800055d4:	05c080e7          	jalr	92(ra) # 8000262c <_ZdlPv>
    800055d8:	00090513          	mv	a0,s2
    800055dc:	00007097          	auipc	ra,0x7
    800055e0:	3cc080e7          	jalr	972(ra) # 8000c9a8 <_Unwind_Resume>
    800055e4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800055e8:	000b0513          	mv	a0,s6
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	040080e7          	jalr	64(ra) # 8000262c <_ZdlPv>
    800055f4:	00048513          	mv	a0,s1
    800055f8:	00007097          	auipc	ra,0x7
    800055fc:	3b0080e7          	jalr	944(ra) # 8000c9a8 <_Unwind_Resume>
    80005600:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005604:	000c8513          	mv	a0,s9
    80005608:	ffffd097          	auipc	ra,0xffffd
    8000560c:	024080e7          	jalr	36(ra) # 8000262c <_ZdlPv>
    80005610:	00048513          	mv	a0,s1
    80005614:	00007097          	auipc	ra,0x7
    80005618:	394080e7          	jalr	916(ra) # 8000c9a8 <_Unwind_Resume>
    8000561c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005620:	000c8513          	mv	a0,s9
    80005624:	ffffd097          	auipc	ra,0xffffd
    80005628:	008080e7          	jalr	8(ra) # 8000262c <_ZdlPv>
    8000562c:	00048513          	mv	a0,s1
    80005630:	00007097          	auipc	ra,0x7
    80005634:	378080e7          	jalr	888(ra) # 8000c9a8 <_Unwind_Resume>

0000000080005638 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005638:	ff010113          	addi	sp,sp,-16
    8000563c:	00113423          	sd	ra,8(sp)
    80005640:	00813023          	sd	s0,0(sp)
    80005644:	01010413          	addi	s0,sp,16
    80005648:	00006797          	auipc	a5,0x6
    8000564c:	12878793          	addi	a5,a5,296 # 8000b770 <_ZTV12ConsumerSync+0x10>
    80005650:	00f53023          	sd	a5,0(a0)
    80005654:	ffffc097          	auipc	ra,0xffffc
    80005658:	204080e7          	jalr	516(ra) # 80001858 <_ZN6ThreadD1Ev>
    8000565c:	00813083          	ld	ra,8(sp)
    80005660:	00013403          	ld	s0,0(sp)
    80005664:	01010113          	addi	sp,sp,16
    80005668:	00008067          	ret

000000008000566c <_ZN12ConsumerSyncD0Ev>:
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00113c23          	sd	ra,24(sp)
    80005674:	00813823          	sd	s0,16(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	02010413          	addi	s0,sp,32
    80005680:	00050493          	mv	s1,a0
    80005684:	00006797          	auipc	a5,0x6
    80005688:	0ec78793          	addi	a5,a5,236 # 8000b770 <_ZTV12ConsumerSync+0x10>
    8000568c:	00f53023          	sd	a5,0(a0)
    80005690:	ffffc097          	auipc	ra,0xffffc
    80005694:	1c8080e7          	jalr	456(ra) # 80001858 <_ZN6ThreadD1Ev>
    80005698:	00048513          	mv	a0,s1
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	f90080e7          	jalr	-112(ra) # 8000262c <_ZdlPv>
    800056a4:	01813083          	ld	ra,24(sp)
    800056a8:	01013403          	ld	s0,16(sp)
    800056ac:	00813483          	ld	s1,8(sp)
    800056b0:	02010113          	addi	sp,sp,32
    800056b4:	00008067          	ret

00000000800056b8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800056b8:	ff010113          	addi	sp,sp,-16
    800056bc:	00113423          	sd	ra,8(sp)
    800056c0:	00813023          	sd	s0,0(sp)
    800056c4:	01010413          	addi	s0,sp,16
    800056c8:	00006797          	auipc	a5,0x6
    800056cc:	08078793          	addi	a5,a5,128 # 8000b748 <_ZTV12ProducerSync+0x10>
    800056d0:	00f53023          	sd	a5,0(a0)
    800056d4:	ffffc097          	auipc	ra,0xffffc
    800056d8:	184080e7          	jalr	388(ra) # 80001858 <_ZN6ThreadD1Ev>
    800056dc:	00813083          	ld	ra,8(sp)
    800056e0:	00013403          	ld	s0,0(sp)
    800056e4:	01010113          	addi	sp,sp,16
    800056e8:	00008067          	ret

00000000800056ec <_ZN12ProducerSyncD0Ev>:
    800056ec:	fe010113          	addi	sp,sp,-32
    800056f0:	00113c23          	sd	ra,24(sp)
    800056f4:	00813823          	sd	s0,16(sp)
    800056f8:	00913423          	sd	s1,8(sp)
    800056fc:	02010413          	addi	s0,sp,32
    80005700:	00050493          	mv	s1,a0
    80005704:	00006797          	auipc	a5,0x6
    80005708:	04478793          	addi	a5,a5,68 # 8000b748 <_ZTV12ProducerSync+0x10>
    8000570c:	00f53023          	sd	a5,0(a0)
    80005710:	ffffc097          	auipc	ra,0xffffc
    80005714:	148080e7          	jalr	328(ra) # 80001858 <_ZN6ThreadD1Ev>
    80005718:	00048513          	mv	a0,s1
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	f10080e7          	jalr	-240(ra) # 8000262c <_ZdlPv>
    80005724:	01813083          	ld	ra,24(sp)
    80005728:	01013403          	ld	s0,16(sp)
    8000572c:	00813483          	ld	s1,8(sp)
    80005730:	02010113          	addi	sp,sp,32
    80005734:	00008067          	ret

0000000080005738 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005738:	ff010113          	addi	sp,sp,-16
    8000573c:	00113423          	sd	ra,8(sp)
    80005740:	00813023          	sd	s0,0(sp)
    80005744:	01010413          	addi	s0,sp,16
    80005748:	00006797          	auipc	a5,0x6
    8000574c:	fd878793          	addi	a5,a5,-40 # 8000b720 <_ZTV16ProducerKeyboard+0x10>
    80005750:	00f53023          	sd	a5,0(a0)
    80005754:	ffffc097          	auipc	ra,0xffffc
    80005758:	104080e7          	jalr	260(ra) # 80001858 <_ZN6ThreadD1Ev>
    8000575c:	00813083          	ld	ra,8(sp)
    80005760:	00013403          	ld	s0,0(sp)
    80005764:	01010113          	addi	sp,sp,16
    80005768:	00008067          	ret

000000008000576c <_ZN16ProducerKeyboardD0Ev>:
    8000576c:	fe010113          	addi	sp,sp,-32
    80005770:	00113c23          	sd	ra,24(sp)
    80005774:	00813823          	sd	s0,16(sp)
    80005778:	00913423          	sd	s1,8(sp)
    8000577c:	02010413          	addi	s0,sp,32
    80005780:	00050493          	mv	s1,a0
    80005784:	00006797          	auipc	a5,0x6
    80005788:	f9c78793          	addi	a5,a5,-100 # 8000b720 <_ZTV16ProducerKeyboard+0x10>
    8000578c:	00f53023          	sd	a5,0(a0)
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	0c8080e7          	jalr	200(ra) # 80001858 <_ZN6ThreadD1Ev>
    80005798:	00048513          	mv	a0,s1
    8000579c:	ffffd097          	auipc	ra,0xffffd
    800057a0:	e90080e7          	jalr	-368(ra) # 8000262c <_ZdlPv>
    800057a4:	01813083          	ld	ra,24(sp)
    800057a8:	01013403          	ld	s0,16(sp)
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret

00000000800057b8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800057b8:	ff010113          	addi	sp,sp,-16
    800057bc:	00113423          	sd	ra,8(sp)
    800057c0:	00813023          	sd	s0,0(sp)
    800057c4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800057c8:	02053583          	ld	a1,32(a0)
    800057cc:	fffff097          	auipc	ra,0xfffff
    800057d0:	7e4080e7          	jalr	2020(ra) # 80004fb0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800057d4:	00813083          	ld	ra,8(sp)
    800057d8:	00013403          	ld	s0,0(sp)
    800057dc:	01010113          	addi	sp,sp,16
    800057e0:	00008067          	ret

00000000800057e4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800057e4:	ff010113          	addi	sp,sp,-16
    800057e8:	00113423          	sd	ra,8(sp)
    800057ec:	00813023          	sd	s0,0(sp)
    800057f0:	01010413          	addi	s0,sp,16
        producer(td);
    800057f4:	02053583          	ld	a1,32(a0)
    800057f8:	00000097          	auipc	ra,0x0
    800057fc:	878080e7          	jalr	-1928(ra) # 80005070 <_ZN12ProducerSync8producerEPv>
    }
    80005800:	00813083          	ld	ra,8(sp)
    80005804:	00013403          	ld	s0,0(sp)
    80005808:	01010113          	addi	sp,sp,16
    8000580c:	00008067          	ret

0000000080005810 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005810:	ff010113          	addi	sp,sp,-16
    80005814:	00113423          	sd	ra,8(sp)
    80005818:	00813023          	sd	s0,0(sp)
    8000581c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005820:	02053583          	ld	a1,32(a0)
    80005824:	00000097          	auipc	ra,0x0
    80005828:	8e0080e7          	jalr	-1824(ra) # 80005104 <_ZN12ConsumerSync8consumerEPv>
    }
    8000582c:	00813083          	ld	ra,8(sp)
    80005830:	00013403          	ld	s0,0(sp)
    80005834:	01010113          	addi	sp,sp,16
    80005838:	00008067          	ret

000000008000583c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000583c:	fe010113          	addi	sp,sp,-32
    80005840:	00113c23          	sd	ra,24(sp)
    80005844:	00813823          	sd	s0,16(sp)
    80005848:	00913423          	sd	s1,8(sp)
    8000584c:	02010413          	addi	s0,sp,32
    80005850:	00050493          	mv	s1,a0
    LOCK();
    80005854:	00100613          	li	a2,1
    80005858:	00000593          	li	a1,0
    8000585c:	00006517          	auipc	a0,0x6
    80005860:	06c50513          	addi	a0,a0,108 # 8000b8c8 <lockPrint>
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	c00080e7          	jalr	-1024(ra) # 80001464 <copy_and_swap>
    8000586c:	00050863          	beqz	a0,8000587c <_Z11printStringPKc+0x40>
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	cf4080e7          	jalr	-780(ra) # 80001564 <_Z15thread_dispatchv>
    80005878:	fddff06f          	j	80005854 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000587c:	0004c503          	lbu	a0,0(s1)
    80005880:	00050a63          	beqz	a0,80005894 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	e30080e7          	jalr	-464(ra) # 800016b4 <_Z4putcc>
        string++;
    8000588c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005890:	fedff06f          	j	8000587c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005894:	00000613          	li	a2,0
    80005898:	00100593          	li	a1,1
    8000589c:	00006517          	auipc	a0,0x6
    800058a0:	02c50513          	addi	a0,a0,44 # 8000b8c8 <lockPrint>
    800058a4:	ffffc097          	auipc	ra,0xffffc
    800058a8:	bc0080e7          	jalr	-1088(ra) # 80001464 <copy_and_swap>
    800058ac:	fe0514e3          	bnez	a0,80005894 <_Z11printStringPKc+0x58>
}
    800058b0:	01813083          	ld	ra,24(sp)
    800058b4:	01013403          	ld	s0,16(sp)
    800058b8:	00813483          	ld	s1,8(sp)
    800058bc:	02010113          	addi	sp,sp,32
    800058c0:	00008067          	ret

00000000800058c4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800058c4:	fd010113          	addi	sp,sp,-48
    800058c8:	02113423          	sd	ra,40(sp)
    800058cc:	02813023          	sd	s0,32(sp)
    800058d0:	00913c23          	sd	s1,24(sp)
    800058d4:	01213823          	sd	s2,16(sp)
    800058d8:	01313423          	sd	s3,8(sp)
    800058dc:	01413023          	sd	s4,0(sp)
    800058e0:	03010413          	addi	s0,sp,48
    800058e4:	00050993          	mv	s3,a0
    800058e8:	00058a13          	mv	s4,a1
    LOCK();
    800058ec:	00100613          	li	a2,1
    800058f0:	00000593          	li	a1,0
    800058f4:	00006517          	auipc	a0,0x6
    800058f8:	fd450513          	addi	a0,a0,-44 # 8000b8c8 <lockPrint>
    800058fc:	ffffc097          	auipc	ra,0xffffc
    80005900:	b68080e7          	jalr	-1176(ra) # 80001464 <copy_and_swap>
    80005904:	00050863          	beqz	a0,80005914 <_Z9getStringPci+0x50>
    80005908:	ffffc097          	auipc	ra,0xffffc
    8000590c:	c5c080e7          	jalr	-932(ra) # 80001564 <_Z15thread_dispatchv>
    80005910:	fddff06f          	j	800058ec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005914:	00000913          	li	s2,0
    80005918:	00090493          	mv	s1,s2
    8000591c:	0019091b          	addiw	s2,s2,1
    80005920:	03495a63          	bge	s2,s4,80005954 <_Z9getStringPci+0x90>
        cc = getc();
    80005924:	ffffc097          	auipc	ra,0xffffc
    80005928:	d68080e7          	jalr	-664(ra) # 8000168c <_Z4getcv>
        if(cc < 1)
    8000592c:	02050463          	beqz	a0,80005954 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005930:	009984b3          	add	s1,s3,s1
    80005934:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005938:	00a00793          	li	a5,10
    8000593c:	00f50a63          	beq	a0,a5,80005950 <_Z9getStringPci+0x8c>
    80005940:	00d00793          	li	a5,13
    80005944:	fcf51ae3          	bne	a0,a5,80005918 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005948:	00090493          	mv	s1,s2
    8000594c:	0080006f          	j	80005954 <_Z9getStringPci+0x90>
    80005950:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005954:	009984b3          	add	s1,s3,s1
    80005958:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000595c:	00000613          	li	a2,0
    80005960:	00100593          	li	a1,1
    80005964:	00006517          	auipc	a0,0x6
    80005968:	f6450513          	addi	a0,a0,-156 # 8000b8c8 <lockPrint>
    8000596c:	ffffc097          	auipc	ra,0xffffc
    80005970:	af8080e7          	jalr	-1288(ra) # 80001464 <copy_and_swap>
    80005974:	fe0514e3          	bnez	a0,8000595c <_Z9getStringPci+0x98>
    return buf;
}
    80005978:	00098513          	mv	a0,s3
    8000597c:	02813083          	ld	ra,40(sp)
    80005980:	02013403          	ld	s0,32(sp)
    80005984:	01813483          	ld	s1,24(sp)
    80005988:	01013903          	ld	s2,16(sp)
    8000598c:	00813983          	ld	s3,8(sp)
    80005990:	00013a03          	ld	s4,0(sp)
    80005994:	03010113          	addi	sp,sp,48
    80005998:	00008067          	ret

000000008000599c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000599c:	ff010113          	addi	sp,sp,-16
    800059a0:	00813423          	sd	s0,8(sp)
    800059a4:	01010413          	addi	s0,sp,16
    800059a8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800059ac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800059b0:	0006c603          	lbu	a2,0(a3)
    800059b4:	fd06071b          	addiw	a4,a2,-48
    800059b8:	0ff77713          	andi	a4,a4,255
    800059bc:	00900793          	li	a5,9
    800059c0:	02e7e063          	bltu	a5,a4,800059e0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800059c4:	0025179b          	slliw	a5,a0,0x2
    800059c8:	00a787bb          	addw	a5,a5,a0
    800059cc:	0017979b          	slliw	a5,a5,0x1
    800059d0:	00168693          	addi	a3,a3,1
    800059d4:	00c787bb          	addw	a5,a5,a2
    800059d8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800059dc:	fd5ff06f          	j	800059b0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800059e0:	00813403          	ld	s0,8(sp)
    800059e4:	01010113          	addi	sp,sp,16
    800059e8:	00008067          	ret

00000000800059ec <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800059ec:	fc010113          	addi	sp,sp,-64
    800059f0:	02113c23          	sd	ra,56(sp)
    800059f4:	02813823          	sd	s0,48(sp)
    800059f8:	02913423          	sd	s1,40(sp)
    800059fc:	03213023          	sd	s2,32(sp)
    80005a00:	01313c23          	sd	s3,24(sp)
    80005a04:	04010413          	addi	s0,sp,64
    80005a08:	00050493          	mv	s1,a0
    80005a0c:	00058913          	mv	s2,a1
    80005a10:	00060993          	mv	s3,a2
    LOCK();
    80005a14:	00100613          	li	a2,1
    80005a18:	00000593          	li	a1,0
    80005a1c:	00006517          	auipc	a0,0x6
    80005a20:	eac50513          	addi	a0,a0,-340 # 8000b8c8 <lockPrint>
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	a40080e7          	jalr	-1472(ra) # 80001464 <copy_and_swap>
    80005a2c:	00050863          	beqz	a0,80005a3c <_Z8printIntiii+0x50>
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	b34080e7          	jalr	-1228(ra) # 80001564 <_Z15thread_dispatchv>
    80005a38:	fddff06f          	j	80005a14 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005a3c:	00098463          	beqz	s3,80005a44 <_Z8printIntiii+0x58>
    80005a40:	0804c463          	bltz	s1,80005ac8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005a44:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005a48:	00000593          	li	a1,0
    }

    i = 0;
    80005a4c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005a50:	0009079b          	sext.w	a5,s2
    80005a54:	0325773b          	remuw	a4,a0,s2
    80005a58:	00048613          	mv	a2,s1
    80005a5c:	0014849b          	addiw	s1,s1,1
    80005a60:	02071693          	slli	a3,a4,0x20
    80005a64:	0206d693          	srli	a3,a3,0x20
    80005a68:	00006717          	auipc	a4,0x6
    80005a6c:	d2070713          	addi	a4,a4,-736 # 8000b788 <digits>
    80005a70:	00d70733          	add	a4,a4,a3
    80005a74:	00074683          	lbu	a3,0(a4)
    80005a78:	fd040713          	addi	a4,s0,-48
    80005a7c:	00c70733          	add	a4,a4,a2
    80005a80:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005a84:	0005071b          	sext.w	a4,a0
    80005a88:	0325553b          	divuw	a0,a0,s2
    80005a8c:	fcf772e3          	bgeu	a4,a5,80005a50 <_Z8printIntiii+0x64>
    if(neg)
    80005a90:	00058c63          	beqz	a1,80005aa8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005a94:	fd040793          	addi	a5,s0,-48
    80005a98:	009784b3          	add	s1,a5,s1
    80005a9c:	02d00793          	li	a5,45
    80005aa0:	fef48823          	sb	a5,-16(s1)
    80005aa4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005aa8:	fff4849b          	addiw	s1,s1,-1
    80005aac:	0204c463          	bltz	s1,80005ad4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005ab0:	fd040793          	addi	a5,s0,-48
    80005ab4:	009787b3          	add	a5,a5,s1
    80005ab8:	ff07c503          	lbu	a0,-16(a5)
    80005abc:	ffffc097          	auipc	ra,0xffffc
    80005ac0:	bf8080e7          	jalr	-1032(ra) # 800016b4 <_Z4putcc>
    80005ac4:	fe5ff06f          	j	80005aa8 <_Z8printIntiii+0xbc>
        x = -xx;
    80005ac8:	4090053b          	negw	a0,s1
        neg = 1;
    80005acc:	00100593          	li	a1,1
        x = -xx;
    80005ad0:	f7dff06f          	j	80005a4c <_Z8printIntiii+0x60>

    UNLOCK();
    80005ad4:	00000613          	li	a2,0
    80005ad8:	00100593          	li	a1,1
    80005adc:	00006517          	auipc	a0,0x6
    80005ae0:	dec50513          	addi	a0,a0,-532 # 8000b8c8 <lockPrint>
    80005ae4:	ffffc097          	auipc	ra,0xffffc
    80005ae8:	980080e7          	jalr	-1664(ra) # 80001464 <copy_and_swap>
    80005aec:	fe0514e3          	bnez	a0,80005ad4 <_Z8printIntiii+0xe8>
    80005af0:	03813083          	ld	ra,56(sp)
    80005af4:	03013403          	ld	s0,48(sp)
    80005af8:	02813483          	ld	s1,40(sp)
    80005afc:	02013903          	ld	s2,32(sp)
    80005b00:	01813983          	ld	s3,24(sp)
    80005b04:	04010113          	addi	sp,sp,64
    80005b08:	00008067          	ret

0000000080005b0c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005b0c:	fd010113          	addi	sp,sp,-48
    80005b10:	02113423          	sd	ra,40(sp)
    80005b14:	02813023          	sd	s0,32(sp)
    80005b18:	00913c23          	sd	s1,24(sp)
    80005b1c:	01213823          	sd	s2,16(sp)
    80005b20:	01313423          	sd	s3,8(sp)
    80005b24:	03010413          	addi	s0,sp,48
    80005b28:	00050493          	mv	s1,a0
    80005b2c:	00058913          	mv	s2,a1
    80005b30:	0015879b          	addiw	a5,a1,1
    80005b34:	0007851b          	sext.w	a0,a5
    80005b38:	00f4a023          	sw	a5,0(s1)
    80005b3c:	0004a823          	sw	zero,16(s1)
    80005b40:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b44:	00251513          	slli	a0,a0,0x2
    80005b48:	ffffc097          	auipc	ra,0xffffc
    80005b4c:	93c080e7          	jalr	-1732(ra) # 80001484 <_Z9mem_allocm>
    80005b50:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005b54:	01000513          	li	a0,16
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	a84080e7          	jalr	-1404(ra) # 800025dc <_Znwm>
    80005b60:	00050993          	mv	s3,a0
    80005b64:	00000593          	li	a1,0
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	c30080e7          	jalr	-976(ra) # 80001798 <_ZN9SemaphoreC1Ej>
    80005b70:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005b74:	01000513          	li	a0,16
    80005b78:	ffffd097          	auipc	ra,0xffffd
    80005b7c:	a64080e7          	jalr	-1436(ra) # 800025dc <_Znwm>
    80005b80:	00050993          	mv	s3,a0
    80005b84:	00090593          	mv	a1,s2
    80005b88:	ffffc097          	auipc	ra,0xffffc
    80005b8c:	c10080e7          	jalr	-1008(ra) # 80001798 <_ZN9SemaphoreC1Ej>
    80005b90:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005b94:	01000513          	li	a0,16
    80005b98:	ffffd097          	auipc	ra,0xffffd
    80005b9c:	a44080e7          	jalr	-1468(ra) # 800025dc <_Znwm>
    80005ba0:	00050913          	mv	s2,a0
    80005ba4:	00100593          	li	a1,1
    80005ba8:	ffffc097          	auipc	ra,0xffffc
    80005bac:	bf0080e7          	jalr	-1040(ra) # 80001798 <_ZN9SemaphoreC1Ej>
    80005bb0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005bb4:	01000513          	li	a0,16
    80005bb8:	ffffd097          	auipc	ra,0xffffd
    80005bbc:	a24080e7          	jalr	-1500(ra) # 800025dc <_Znwm>
    80005bc0:	00050913          	mv	s2,a0
    80005bc4:	00100593          	li	a1,1
    80005bc8:	ffffc097          	auipc	ra,0xffffc
    80005bcc:	bd0080e7          	jalr	-1072(ra) # 80001798 <_ZN9SemaphoreC1Ej>
    80005bd0:	0324b823          	sd	s2,48(s1)
}
    80005bd4:	02813083          	ld	ra,40(sp)
    80005bd8:	02013403          	ld	s0,32(sp)
    80005bdc:	01813483          	ld	s1,24(sp)
    80005be0:	01013903          	ld	s2,16(sp)
    80005be4:	00813983          	ld	s3,8(sp)
    80005be8:	03010113          	addi	sp,sp,48
    80005bec:	00008067          	ret
    80005bf0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005bf4:	00098513          	mv	a0,s3
    80005bf8:	ffffd097          	auipc	ra,0xffffd
    80005bfc:	a34080e7          	jalr	-1484(ra) # 8000262c <_ZdlPv>
    80005c00:	00048513          	mv	a0,s1
    80005c04:	00007097          	auipc	ra,0x7
    80005c08:	da4080e7          	jalr	-604(ra) # 8000c9a8 <_Unwind_Resume>
    80005c0c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005c10:	00098513          	mv	a0,s3
    80005c14:	ffffd097          	auipc	ra,0xffffd
    80005c18:	a18080e7          	jalr	-1512(ra) # 8000262c <_ZdlPv>
    80005c1c:	00048513          	mv	a0,s1
    80005c20:	00007097          	auipc	ra,0x7
    80005c24:	d88080e7          	jalr	-632(ra) # 8000c9a8 <_Unwind_Resume>
    80005c28:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005c2c:	00090513          	mv	a0,s2
    80005c30:	ffffd097          	auipc	ra,0xffffd
    80005c34:	9fc080e7          	jalr	-1540(ra) # 8000262c <_ZdlPv>
    80005c38:	00048513          	mv	a0,s1
    80005c3c:	00007097          	auipc	ra,0x7
    80005c40:	d6c080e7          	jalr	-660(ra) # 8000c9a8 <_Unwind_Resume>
    80005c44:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005c48:	00090513          	mv	a0,s2
    80005c4c:	ffffd097          	auipc	ra,0xffffd
    80005c50:	9e0080e7          	jalr	-1568(ra) # 8000262c <_ZdlPv>
    80005c54:	00048513          	mv	a0,s1
    80005c58:	00007097          	auipc	ra,0x7
    80005c5c:	d50080e7          	jalr	-688(ra) # 8000c9a8 <_Unwind_Resume>

0000000080005c60 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005c60:	fe010113          	addi	sp,sp,-32
    80005c64:	00113c23          	sd	ra,24(sp)
    80005c68:	00813823          	sd	s0,16(sp)
    80005c6c:	00913423          	sd	s1,8(sp)
    80005c70:	01213023          	sd	s2,0(sp)
    80005c74:	02010413          	addi	s0,sp,32
    80005c78:	00050493          	mv	s1,a0
    80005c7c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005c80:	01853503          	ld	a0,24(a0)
    80005c84:	ffffc097          	auipc	ra,0xffffc
    80005c88:	b50080e7          	jalr	-1200(ra) # 800017d4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005c8c:	0304b503          	ld	a0,48(s1)
    80005c90:	ffffc097          	auipc	ra,0xffffc
    80005c94:	b44080e7          	jalr	-1212(ra) # 800017d4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005c98:	0084b783          	ld	a5,8(s1)
    80005c9c:	0144a703          	lw	a4,20(s1)
    80005ca0:	00271713          	slli	a4,a4,0x2
    80005ca4:	00e787b3          	add	a5,a5,a4
    80005ca8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005cac:	0144a783          	lw	a5,20(s1)
    80005cb0:	0017879b          	addiw	a5,a5,1
    80005cb4:	0004a703          	lw	a4,0(s1)
    80005cb8:	02e7e7bb          	remw	a5,a5,a4
    80005cbc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005cc0:	0304b503          	ld	a0,48(s1)
    80005cc4:	ffffc097          	auipc	ra,0xffffc
    80005cc8:	b3c080e7          	jalr	-1220(ra) # 80001800 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005ccc:	0204b503          	ld	a0,32(s1)
    80005cd0:	ffffc097          	auipc	ra,0xffffc
    80005cd4:	b30080e7          	jalr	-1232(ra) # 80001800 <_ZN9Semaphore6signalEv>

}
    80005cd8:	01813083          	ld	ra,24(sp)
    80005cdc:	01013403          	ld	s0,16(sp)
    80005ce0:	00813483          	ld	s1,8(sp)
    80005ce4:	00013903          	ld	s2,0(sp)
    80005ce8:	02010113          	addi	sp,sp,32
    80005cec:	00008067          	ret

0000000080005cf0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005cf0:	fe010113          	addi	sp,sp,-32
    80005cf4:	00113c23          	sd	ra,24(sp)
    80005cf8:	00813823          	sd	s0,16(sp)
    80005cfc:	00913423          	sd	s1,8(sp)
    80005d00:	01213023          	sd	s2,0(sp)
    80005d04:	02010413          	addi	s0,sp,32
    80005d08:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005d0c:	02053503          	ld	a0,32(a0)
    80005d10:	ffffc097          	auipc	ra,0xffffc
    80005d14:	ac4080e7          	jalr	-1340(ra) # 800017d4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005d18:	0284b503          	ld	a0,40(s1)
    80005d1c:	ffffc097          	auipc	ra,0xffffc
    80005d20:	ab8080e7          	jalr	-1352(ra) # 800017d4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005d24:	0084b703          	ld	a4,8(s1)
    80005d28:	0104a783          	lw	a5,16(s1)
    80005d2c:	00279693          	slli	a3,a5,0x2
    80005d30:	00d70733          	add	a4,a4,a3
    80005d34:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005d38:	0017879b          	addiw	a5,a5,1
    80005d3c:	0004a703          	lw	a4,0(s1)
    80005d40:	02e7e7bb          	remw	a5,a5,a4
    80005d44:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005d48:	0284b503          	ld	a0,40(s1)
    80005d4c:	ffffc097          	auipc	ra,0xffffc
    80005d50:	ab4080e7          	jalr	-1356(ra) # 80001800 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005d54:	0184b503          	ld	a0,24(s1)
    80005d58:	ffffc097          	auipc	ra,0xffffc
    80005d5c:	aa8080e7          	jalr	-1368(ra) # 80001800 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d60:	00090513          	mv	a0,s2
    80005d64:	01813083          	ld	ra,24(sp)
    80005d68:	01013403          	ld	s0,16(sp)
    80005d6c:	00813483          	ld	s1,8(sp)
    80005d70:	00013903          	ld	s2,0(sp)
    80005d74:	02010113          	addi	sp,sp,32
    80005d78:	00008067          	ret

0000000080005d7c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005d7c:	fe010113          	addi	sp,sp,-32
    80005d80:	00113c23          	sd	ra,24(sp)
    80005d84:	00813823          	sd	s0,16(sp)
    80005d88:	00913423          	sd	s1,8(sp)
    80005d8c:	01213023          	sd	s2,0(sp)
    80005d90:	02010413          	addi	s0,sp,32
    80005d94:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005d98:	02853503          	ld	a0,40(a0)
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	a38080e7          	jalr	-1480(ra) # 800017d4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005da4:	0304b503          	ld	a0,48(s1)
    80005da8:	ffffc097          	auipc	ra,0xffffc
    80005dac:	a2c080e7          	jalr	-1492(ra) # 800017d4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005db0:	0144a783          	lw	a5,20(s1)
    80005db4:	0104a903          	lw	s2,16(s1)
    80005db8:	0327ce63          	blt	a5,s2,80005df4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005dbc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005dc0:	0304b503          	ld	a0,48(s1)
    80005dc4:	ffffc097          	auipc	ra,0xffffc
    80005dc8:	a3c080e7          	jalr	-1476(ra) # 80001800 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005dcc:	0284b503          	ld	a0,40(s1)
    80005dd0:	ffffc097          	auipc	ra,0xffffc
    80005dd4:	a30080e7          	jalr	-1488(ra) # 80001800 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005dd8:	00090513          	mv	a0,s2
    80005ddc:	01813083          	ld	ra,24(sp)
    80005de0:	01013403          	ld	s0,16(sp)
    80005de4:	00813483          	ld	s1,8(sp)
    80005de8:	00013903          	ld	s2,0(sp)
    80005dec:	02010113          	addi	sp,sp,32
    80005df0:	00008067          	ret
        ret = cap - head + tail;
    80005df4:	0004a703          	lw	a4,0(s1)
    80005df8:	4127093b          	subw	s2,a4,s2
    80005dfc:	00f9093b          	addw	s2,s2,a5
    80005e00:	fc1ff06f          	j	80005dc0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005e04 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005e04:	fe010113          	addi	sp,sp,-32
    80005e08:	00113c23          	sd	ra,24(sp)
    80005e0c:	00813823          	sd	s0,16(sp)
    80005e10:	00913423          	sd	s1,8(sp)
    80005e14:	02010413          	addi	s0,sp,32
    80005e18:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005e1c:	00a00513          	li	a0,10
    80005e20:	ffffc097          	auipc	ra,0xffffc
    80005e24:	df0080e7          	jalr	-528(ra) # 80001c10 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005e28:	00003517          	auipc	a0,0x3
    80005e2c:	6d850513          	addi	a0,a0,1752 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005e30:	00000097          	auipc	ra,0x0
    80005e34:	a0c080e7          	jalr	-1524(ra) # 8000583c <_Z11printStringPKc>
    while (getCnt()) {
    80005e38:	00048513          	mv	a0,s1
    80005e3c:	00000097          	auipc	ra,0x0
    80005e40:	f40080e7          	jalr	-192(ra) # 80005d7c <_ZN9BufferCPP6getCntEv>
    80005e44:	02050c63          	beqz	a0,80005e7c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005e48:	0084b783          	ld	a5,8(s1)
    80005e4c:	0104a703          	lw	a4,16(s1)
    80005e50:	00271713          	slli	a4,a4,0x2
    80005e54:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005e58:	0007c503          	lbu	a0,0(a5)
    80005e5c:	ffffc097          	auipc	ra,0xffffc
    80005e60:	db4080e7          	jalr	-588(ra) # 80001c10 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005e64:	0104a783          	lw	a5,16(s1)
    80005e68:	0017879b          	addiw	a5,a5,1
    80005e6c:	0004a703          	lw	a4,0(s1)
    80005e70:	02e7e7bb          	remw	a5,a5,a4
    80005e74:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005e78:	fc1ff06f          	j	80005e38 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005e7c:	02100513          	li	a0,33
    80005e80:	ffffc097          	auipc	ra,0xffffc
    80005e84:	d90080e7          	jalr	-624(ra) # 80001c10 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005e88:	00a00513          	li	a0,10
    80005e8c:	ffffc097          	auipc	ra,0xffffc
    80005e90:	d84080e7          	jalr	-636(ra) # 80001c10 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005e94:	0084b503          	ld	a0,8(s1)
    80005e98:	ffffb097          	auipc	ra,0xffffb
    80005e9c:	644080e7          	jalr	1604(ra) # 800014dc <_Z8mem_freePv>
    delete itemAvailable;
    80005ea0:	0204b503          	ld	a0,32(s1)
    80005ea4:	00050863          	beqz	a0,80005eb4 <_ZN9BufferCPPD1Ev+0xb0>
    80005ea8:	00053783          	ld	a5,0(a0)
    80005eac:	0087b783          	ld	a5,8(a5)
    80005eb0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005eb4:	0184b503          	ld	a0,24(s1)
    80005eb8:	00050863          	beqz	a0,80005ec8 <_ZN9BufferCPPD1Ev+0xc4>
    80005ebc:	00053783          	ld	a5,0(a0)
    80005ec0:	0087b783          	ld	a5,8(a5)
    80005ec4:	000780e7          	jalr	a5
    delete mutexTail;
    80005ec8:	0304b503          	ld	a0,48(s1)
    80005ecc:	00050863          	beqz	a0,80005edc <_ZN9BufferCPPD1Ev+0xd8>
    80005ed0:	00053783          	ld	a5,0(a0)
    80005ed4:	0087b783          	ld	a5,8(a5)
    80005ed8:	000780e7          	jalr	a5
    delete mutexHead;
    80005edc:	0284b503          	ld	a0,40(s1)
    80005ee0:	00050863          	beqz	a0,80005ef0 <_ZN9BufferCPPD1Ev+0xec>
    80005ee4:	00053783          	ld	a5,0(a0)
    80005ee8:	0087b783          	ld	a5,8(a5)
    80005eec:	000780e7          	jalr	a5
}
    80005ef0:	01813083          	ld	ra,24(sp)
    80005ef4:	01013403          	ld	s0,16(sp)
    80005ef8:	00813483          	ld	s1,8(sp)
    80005efc:	02010113          	addi	sp,sp,32
    80005f00:	00008067          	ret

0000000080005f04 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005f04:	fe010113          	addi	sp,sp,-32
    80005f08:	00113c23          	sd	ra,24(sp)
    80005f0c:	00813823          	sd	s0,16(sp)
    80005f10:	00913423          	sd	s1,8(sp)
    80005f14:	01213023          	sd	s2,0(sp)
    80005f18:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005f1c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005f20:	00600493          	li	s1,6
    while (--i > 0) {
    80005f24:	fff4849b          	addiw	s1,s1,-1
    80005f28:	04905463          	blez	s1,80005f70 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	5ec50513          	addi	a0,a0,1516 # 80009518 <CONSOLE_STATUS+0x508>
    80005f34:	00000097          	auipc	ra,0x0
    80005f38:	908080e7          	jalr	-1784(ra) # 8000583c <_Z11printStringPKc>
        printInt(sleep_time);
    80005f3c:	00000613          	li	a2,0
    80005f40:	00a00593          	li	a1,10
    80005f44:	0009051b          	sext.w	a0,s2
    80005f48:	00000097          	auipc	ra,0x0
    80005f4c:	aa4080e7          	jalr	-1372(ra) # 800059ec <_Z8printIntiii>
        printString(" !\n");
    80005f50:	00003517          	auipc	a0,0x3
    80005f54:	5d050513          	addi	a0,a0,1488 # 80009520 <CONSOLE_STATUS+0x510>
    80005f58:	00000097          	auipc	ra,0x0
    80005f5c:	8e4080e7          	jalr	-1820(ra) # 8000583c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005f60:	00090513          	mv	a0,s2
    80005f64:	ffffb097          	auipc	ra,0xffffb
    80005f68:	700080e7          	jalr	1792(ra) # 80001664 <_Z10time_sleepm>
    while (--i > 0) {
    80005f6c:	fb9ff06f          	j	80005f24 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005f70:	00a00793          	li	a5,10
    80005f74:	02f95933          	divu	s2,s2,a5
    80005f78:	fff90913          	addi	s2,s2,-1
    80005f7c:	00006797          	auipc	a5,0x6
    80005f80:	95478793          	addi	a5,a5,-1708 # 8000b8d0 <_ZL8finished>
    80005f84:	01278933          	add	s2,a5,s2
    80005f88:	00100793          	li	a5,1
    80005f8c:	00f90023          	sb	a5,0(s2)
}
    80005f90:	01813083          	ld	ra,24(sp)
    80005f94:	01013403          	ld	s0,16(sp)
    80005f98:	00813483          	ld	s1,8(sp)
    80005f9c:	00013903          	ld	s2,0(sp)
    80005fa0:	02010113          	addi	sp,sp,32
    80005fa4:	00008067          	ret

0000000080005fa8 <_Z12testSleepingv>:

void testSleeping() {
    80005fa8:	fc010113          	addi	sp,sp,-64
    80005fac:	02113c23          	sd	ra,56(sp)
    80005fb0:	02813823          	sd	s0,48(sp)
    80005fb4:	02913423          	sd	s1,40(sp)
    80005fb8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005fbc:	00a00793          	li	a5,10
    80005fc0:	fcf43823          	sd	a5,-48(s0)
    80005fc4:	01400793          	li	a5,20
    80005fc8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005fcc:	00000493          	li	s1,0
    80005fd0:	02c0006f          	j	80005ffc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005fd4:	00349793          	slli	a5,s1,0x3
    80005fd8:	fd040613          	addi	a2,s0,-48
    80005fdc:	00f60633          	add	a2,a2,a5
    80005fe0:	00000597          	auipc	a1,0x0
    80005fe4:	f2458593          	addi	a1,a1,-220 # 80005f04 <_ZL9sleepyRunPv>
    80005fe8:	fc040513          	addi	a0,s0,-64
    80005fec:	00f50533          	add	a0,a0,a5
    80005ff0:	ffffb097          	auipc	ra,0xffffb
    80005ff4:	518080e7          	jalr	1304(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ff8:	0014849b          	addiw	s1,s1,1
    80005ffc:	00100793          	li	a5,1
    80006000:	fc97dae3          	bge	a5,s1,80005fd4 <_Z12testSleepingv+0x2c>
    80006004:	00c0006f          	j	80006010 <_Z12testSleepingv+0x68>
    }

    while (!(finished[0] && finished[1])) {thread_dispatch();}
    80006008:	ffffb097          	auipc	ra,0xffffb
    8000600c:	55c080e7          	jalr	1372(ra) # 80001564 <_Z15thread_dispatchv>
    80006010:	00006797          	auipc	a5,0x6
    80006014:	8c07c783          	lbu	a5,-1856(a5) # 8000b8d0 <_ZL8finished>
    80006018:	fe0788e3          	beqz	a5,80006008 <_Z12testSleepingv+0x60>
    8000601c:	00006797          	auipc	a5,0x6
    80006020:	8b57c783          	lbu	a5,-1867(a5) # 8000b8d1 <_ZL8finished+0x1>
    80006024:	fe0782e3          	beqz	a5,80006008 <_Z12testSleepingv+0x60>
}
    80006028:	03813083          	ld	ra,56(sp)
    8000602c:	03013403          	ld	s0,48(sp)
    80006030:	02813483          	ld	s1,40(sp)
    80006034:	04010113          	addi	sp,sp,64
    80006038:	00008067          	ret

000000008000603c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000603c:	fe010113          	addi	sp,sp,-32
    80006040:	00113c23          	sd	ra,24(sp)
    80006044:	00813823          	sd	s0,16(sp)
    80006048:	00913423          	sd	s1,8(sp)
    8000604c:	01213023          	sd	s2,0(sp)
    80006050:	02010413          	addi	s0,sp,32
    80006054:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006058:	00100793          	li	a5,1
    8000605c:	02a7f863          	bgeu	a5,a0,8000608c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006060:	00a00793          	li	a5,10
    80006064:	02f577b3          	remu	a5,a0,a5
    80006068:	02078e63          	beqz	a5,800060a4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000606c:	fff48513          	addi	a0,s1,-1
    80006070:	00000097          	auipc	ra,0x0
    80006074:	fcc080e7          	jalr	-52(ra) # 8000603c <_ZL9fibonaccim>
    80006078:	00050913          	mv	s2,a0
    8000607c:	ffe48513          	addi	a0,s1,-2
    80006080:	00000097          	auipc	ra,0x0
    80006084:	fbc080e7          	jalr	-68(ra) # 8000603c <_ZL9fibonaccim>
    80006088:	00a90533          	add	a0,s2,a0
}
    8000608c:	01813083          	ld	ra,24(sp)
    80006090:	01013403          	ld	s0,16(sp)
    80006094:	00813483          	ld	s1,8(sp)
    80006098:	00013903          	ld	s2,0(sp)
    8000609c:	02010113          	addi	sp,sp,32
    800060a0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800060a4:	ffffb097          	auipc	ra,0xffffb
    800060a8:	4c0080e7          	jalr	1216(ra) # 80001564 <_Z15thread_dispatchv>
    800060ac:	fc1ff06f          	j	8000606c <_ZL9fibonaccim+0x30>

00000000800060b0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800060b0:	fe010113          	addi	sp,sp,-32
    800060b4:	00113c23          	sd	ra,24(sp)
    800060b8:	00813823          	sd	s0,16(sp)
    800060bc:	00913423          	sd	s1,8(sp)
    800060c0:	01213023          	sd	s2,0(sp)
    800060c4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800060c8:	00a00493          	li	s1,10
    800060cc:	0400006f          	j	8000610c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800060d0:	00003517          	auipc	a0,0x3
    800060d4:	39850513          	addi	a0,a0,920 # 80009468 <CONSOLE_STATUS+0x458>
    800060d8:	fffff097          	auipc	ra,0xfffff
    800060dc:	764080e7          	jalr	1892(ra) # 8000583c <_Z11printStringPKc>
    800060e0:	00000613          	li	a2,0
    800060e4:	00a00593          	li	a1,10
    800060e8:	00048513          	mv	a0,s1
    800060ec:	00000097          	auipc	ra,0x0
    800060f0:	900080e7          	jalr	-1792(ra) # 800059ec <_Z8printIntiii>
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	06c50513          	addi	a0,a0,108 # 80009160 <CONSOLE_STATUS+0x150>
    800060fc:	fffff097          	auipc	ra,0xfffff
    80006100:	740080e7          	jalr	1856(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006104:	0014849b          	addiw	s1,s1,1
    80006108:	0ff4f493          	andi	s1,s1,255
    8000610c:	00c00793          	li	a5,12
    80006110:	fc97f0e3          	bgeu	a5,s1,800060d0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006114:	00003517          	auipc	a0,0x3
    80006118:	35c50513          	addi	a0,a0,860 # 80009470 <CONSOLE_STATUS+0x460>
    8000611c:	fffff097          	auipc	ra,0xfffff
    80006120:	720080e7          	jalr	1824(ra) # 8000583c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006124:	00500313          	li	t1,5
    thread_dispatch();
    80006128:	ffffb097          	auipc	ra,0xffffb
    8000612c:	43c080e7          	jalr	1084(ra) # 80001564 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006130:	01000513          	li	a0,16
    80006134:	00000097          	auipc	ra,0x0
    80006138:	f08080e7          	jalr	-248(ra) # 8000603c <_ZL9fibonaccim>
    8000613c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006140:	00003517          	auipc	a0,0x3
    80006144:	34050513          	addi	a0,a0,832 # 80009480 <CONSOLE_STATUS+0x470>
    80006148:	fffff097          	auipc	ra,0xfffff
    8000614c:	6f4080e7          	jalr	1780(ra) # 8000583c <_Z11printStringPKc>
    80006150:	00000613          	li	a2,0
    80006154:	00a00593          	li	a1,10
    80006158:	0009051b          	sext.w	a0,s2
    8000615c:	00000097          	auipc	ra,0x0
    80006160:	890080e7          	jalr	-1904(ra) # 800059ec <_Z8printIntiii>
    80006164:	00003517          	auipc	a0,0x3
    80006168:	ffc50513          	addi	a0,a0,-4 # 80009160 <CONSOLE_STATUS+0x150>
    8000616c:	fffff097          	auipc	ra,0xfffff
    80006170:	6d0080e7          	jalr	1744(ra) # 8000583c <_Z11printStringPKc>
    80006174:	0400006f          	j	800061b4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006178:	00003517          	auipc	a0,0x3
    8000617c:	2f050513          	addi	a0,a0,752 # 80009468 <CONSOLE_STATUS+0x458>
    80006180:	fffff097          	auipc	ra,0xfffff
    80006184:	6bc080e7          	jalr	1724(ra) # 8000583c <_Z11printStringPKc>
    80006188:	00000613          	li	a2,0
    8000618c:	00a00593          	li	a1,10
    80006190:	00048513          	mv	a0,s1
    80006194:	00000097          	auipc	ra,0x0
    80006198:	858080e7          	jalr	-1960(ra) # 800059ec <_Z8printIntiii>
    8000619c:	00003517          	auipc	a0,0x3
    800061a0:	fc450513          	addi	a0,a0,-60 # 80009160 <CONSOLE_STATUS+0x150>
    800061a4:	fffff097          	auipc	ra,0xfffff
    800061a8:	698080e7          	jalr	1688(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800061ac:	0014849b          	addiw	s1,s1,1
    800061b0:	0ff4f493          	andi	s1,s1,255
    800061b4:	00f00793          	li	a5,15
    800061b8:	fc97f0e3          	bgeu	a5,s1,80006178 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800061bc:	00003517          	auipc	a0,0x3
    800061c0:	2d450513          	addi	a0,a0,724 # 80009490 <CONSOLE_STATUS+0x480>
    800061c4:	fffff097          	auipc	ra,0xfffff
    800061c8:	678080e7          	jalr	1656(ra) # 8000583c <_Z11printStringPKc>
    finishedD = true;
    800061cc:	00100793          	li	a5,1
    800061d0:	00005717          	auipc	a4,0x5
    800061d4:	70f70123          	sb	a5,1794(a4) # 8000b8d2 <_ZL9finishedD>
    thread_dispatch();
    800061d8:	ffffb097          	auipc	ra,0xffffb
    800061dc:	38c080e7          	jalr	908(ra) # 80001564 <_Z15thread_dispatchv>
}
    800061e0:	01813083          	ld	ra,24(sp)
    800061e4:	01013403          	ld	s0,16(sp)
    800061e8:	00813483          	ld	s1,8(sp)
    800061ec:	00013903          	ld	s2,0(sp)
    800061f0:	02010113          	addi	sp,sp,32
    800061f4:	00008067          	ret

00000000800061f8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800061f8:	fe010113          	addi	sp,sp,-32
    800061fc:	00113c23          	sd	ra,24(sp)
    80006200:	00813823          	sd	s0,16(sp)
    80006204:	00913423          	sd	s1,8(sp)
    80006208:	01213023          	sd	s2,0(sp)
    8000620c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006210:	00000493          	li	s1,0
    80006214:	0400006f          	j	80006254 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	22050513          	addi	a0,a0,544 # 80009438 <CONSOLE_STATUS+0x428>
    80006220:	fffff097          	auipc	ra,0xfffff
    80006224:	61c080e7          	jalr	1564(ra) # 8000583c <_Z11printStringPKc>
    80006228:	00000613          	li	a2,0
    8000622c:	00a00593          	li	a1,10
    80006230:	00048513          	mv	a0,s1
    80006234:	fffff097          	auipc	ra,0xfffff
    80006238:	7b8080e7          	jalr	1976(ra) # 800059ec <_Z8printIntiii>
    8000623c:	00003517          	auipc	a0,0x3
    80006240:	f2450513          	addi	a0,a0,-220 # 80009160 <CONSOLE_STATUS+0x150>
    80006244:	fffff097          	auipc	ra,0xfffff
    80006248:	5f8080e7          	jalr	1528(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000624c:	0014849b          	addiw	s1,s1,1
    80006250:	0ff4f493          	andi	s1,s1,255
    80006254:	00200793          	li	a5,2
    80006258:	fc97f0e3          	bgeu	a5,s1,80006218 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000625c:	00003517          	auipc	a0,0x3
    80006260:	1e450513          	addi	a0,a0,484 # 80009440 <CONSOLE_STATUS+0x430>
    80006264:	fffff097          	auipc	ra,0xfffff
    80006268:	5d8080e7          	jalr	1496(ra) # 8000583c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000626c:	00700313          	li	t1,7
    thread_dispatch();
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	2f4080e7          	jalr	756(ra) # 80001564 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006278:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000627c:	00003517          	auipc	a0,0x3
    80006280:	1d450513          	addi	a0,a0,468 # 80009450 <CONSOLE_STATUS+0x440>
    80006284:	fffff097          	auipc	ra,0xfffff
    80006288:	5b8080e7          	jalr	1464(ra) # 8000583c <_Z11printStringPKc>
    8000628c:	00000613          	li	a2,0
    80006290:	00a00593          	li	a1,10
    80006294:	0009051b          	sext.w	a0,s2
    80006298:	fffff097          	auipc	ra,0xfffff
    8000629c:	754080e7          	jalr	1876(ra) # 800059ec <_Z8printIntiii>
    800062a0:	00003517          	auipc	a0,0x3
    800062a4:	ec050513          	addi	a0,a0,-320 # 80009160 <CONSOLE_STATUS+0x150>
    800062a8:	fffff097          	auipc	ra,0xfffff
    800062ac:	594080e7          	jalr	1428(ra) # 8000583c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800062b0:	00c00513          	li	a0,12
    800062b4:	00000097          	auipc	ra,0x0
    800062b8:	d88080e7          	jalr	-632(ra) # 8000603c <_ZL9fibonaccim>
    800062bc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800062c0:	00003517          	auipc	a0,0x3
    800062c4:	19850513          	addi	a0,a0,408 # 80009458 <CONSOLE_STATUS+0x448>
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	574080e7          	jalr	1396(ra) # 8000583c <_Z11printStringPKc>
    800062d0:	00000613          	li	a2,0
    800062d4:	00a00593          	li	a1,10
    800062d8:	0009051b          	sext.w	a0,s2
    800062dc:	fffff097          	auipc	ra,0xfffff
    800062e0:	710080e7          	jalr	1808(ra) # 800059ec <_Z8printIntiii>
    800062e4:	00003517          	auipc	a0,0x3
    800062e8:	e7c50513          	addi	a0,a0,-388 # 80009160 <CONSOLE_STATUS+0x150>
    800062ec:	fffff097          	auipc	ra,0xfffff
    800062f0:	550080e7          	jalr	1360(ra) # 8000583c <_Z11printStringPKc>
    800062f4:	0400006f          	j	80006334 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	14050513          	addi	a0,a0,320 # 80009438 <CONSOLE_STATUS+0x428>
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	53c080e7          	jalr	1340(ra) # 8000583c <_Z11printStringPKc>
    80006308:	00000613          	li	a2,0
    8000630c:	00a00593          	li	a1,10
    80006310:	00048513          	mv	a0,s1
    80006314:	fffff097          	auipc	ra,0xfffff
    80006318:	6d8080e7          	jalr	1752(ra) # 800059ec <_Z8printIntiii>
    8000631c:	00003517          	auipc	a0,0x3
    80006320:	e4450513          	addi	a0,a0,-444 # 80009160 <CONSOLE_STATUS+0x150>
    80006324:	fffff097          	auipc	ra,0xfffff
    80006328:	518080e7          	jalr	1304(ra) # 8000583c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000632c:	0014849b          	addiw	s1,s1,1
    80006330:	0ff4f493          	andi	s1,s1,255
    80006334:	00500793          	li	a5,5
    80006338:	fc97f0e3          	bgeu	a5,s1,800062f8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000633c:	00003517          	auipc	a0,0x3
    80006340:	0d450513          	addi	a0,a0,212 # 80009410 <CONSOLE_STATUS+0x400>
    80006344:	fffff097          	auipc	ra,0xfffff
    80006348:	4f8080e7          	jalr	1272(ra) # 8000583c <_Z11printStringPKc>
    finishedC = true;
    8000634c:	00100793          	li	a5,1
    80006350:	00005717          	auipc	a4,0x5
    80006354:	58f701a3          	sb	a5,1411(a4) # 8000b8d3 <_ZL9finishedC>
    thread_dispatch();
    80006358:	ffffb097          	auipc	ra,0xffffb
    8000635c:	20c080e7          	jalr	524(ra) # 80001564 <_Z15thread_dispatchv>
}
    80006360:	01813083          	ld	ra,24(sp)
    80006364:	01013403          	ld	s0,16(sp)
    80006368:	00813483          	ld	s1,8(sp)
    8000636c:	00013903          	ld	s2,0(sp)
    80006370:	02010113          	addi	sp,sp,32
    80006374:	00008067          	ret

0000000080006378 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006378:	fe010113          	addi	sp,sp,-32
    8000637c:	00113c23          	sd	ra,24(sp)
    80006380:	00813823          	sd	s0,16(sp)
    80006384:	00913423          	sd	s1,8(sp)
    80006388:	01213023          	sd	s2,0(sp)
    8000638c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006390:	00000913          	li	s2,0
    80006394:	0400006f          	j	800063d4 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006398:	ffffb097          	auipc	ra,0xffffb
    8000639c:	1cc080e7          	jalr	460(ra) # 80001564 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800063a0:	00148493          	addi	s1,s1,1
    800063a4:	000027b7          	lui	a5,0x2
    800063a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800063ac:	0097ee63          	bltu	a5,s1,800063c8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800063b0:	00000713          	li	a4,0
    800063b4:	000077b7          	lui	a5,0x7
    800063b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800063bc:	fce7eee3          	bltu	a5,a4,80006398 <_ZL11workerBodyBPv+0x20>
    800063c0:	00170713          	addi	a4,a4,1
    800063c4:	ff1ff06f          	j	800063b4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800063c8:	00a00793          	li	a5,10
    800063cc:	04f90663          	beq	s2,a5,80006418 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800063d0:	00190913          	addi	s2,s2,1
    800063d4:	00f00793          	li	a5,15
    800063d8:	0527e463          	bltu	a5,s2,80006420 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	04450513          	addi	a0,a0,68 # 80009420 <CONSOLE_STATUS+0x410>
    800063e4:	fffff097          	auipc	ra,0xfffff
    800063e8:	458080e7          	jalr	1112(ra) # 8000583c <_Z11printStringPKc>
    800063ec:	00000613          	li	a2,0
    800063f0:	00a00593          	li	a1,10
    800063f4:	0009051b          	sext.w	a0,s2
    800063f8:	fffff097          	auipc	ra,0xfffff
    800063fc:	5f4080e7          	jalr	1524(ra) # 800059ec <_Z8printIntiii>
    80006400:	00003517          	auipc	a0,0x3
    80006404:	d6050513          	addi	a0,a0,-672 # 80009160 <CONSOLE_STATUS+0x150>
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	434080e7          	jalr	1076(ra) # 8000583c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006410:	00000493          	li	s1,0
    80006414:	f91ff06f          	j	800063a4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006418:	14102ff3          	csrr	t6,sepc
    8000641c:	fb5ff06f          	j	800063d0 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006420:	00003517          	auipc	a0,0x3
    80006424:	00850513          	addi	a0,a0,8 # 80009428 <CONSOLE_STATUS+0x418>
    80006428:	fffff097          	auipc	ra,0xfffff
    8000642c:	414080e7          	jalr	1044(ra) # 8000583c <_Z11printStringPKc>
    finishedB = true;
    80006430:	00100793          	li	a5,1
    80006434:	00005717          	auipc	a4,0x5
    80006438:	4af70023          	sb	a5,1184(a4) # 8000b8d4 <_ZL9finishedB>
    thread_dispatch();
    8000643c:	ffffb097          	auipc	ra,0xffffb
    80006440:	128080e7          	jalr	296(ra) # 80001564 <_Z15thread_dispatchv>
}
    80006444:	01813083          	ld	ra,24(sp)
    80006448:	01013403          	ld	s0,16(sp)
    8000644c:	00813483          	ld	s1,8(sp)
    80006450:	00013903          	ld	s2,0(sp)
    80006454:	02010113          	addi	sp,sp,32
    80006458:	00008067          	ret

000000008000645c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000645c:	fe010113          	addi	sp,sp,-32
    80006460:	00113c23          	sd	ra,24(sp)
    80006464:	00813823          	sd	s0,16(sp)
    80006468:	00913423          	sd	s1,8(sp)
    8000646c:	01213023          	sd	s2,0(sp)
    80006470:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006474:	00000913          	li	s2,0
    80006478:	0380006f          	j	800064b0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000647c:	ffffb097          	auipc	ra,0xffffb
    80006480:	0e8080e7          	jalr	232(ra) # 80001564 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006484:	00148493          	addi	s1,s1,1
    80006488:	000027b7          	lui	a5,0x2
    8000648c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006490:	0097ee63          	bltu	a5,s1,800064ac <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006494:	00000713          	li	a4,0
    80006498:	000077b7          	lui	a5,0x7
    8000649c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064a0:	fce7eee3          	bltu	a5,a4,8000647c <_ZL11workerBodyAPv+0x20>
    800064a4:	00170713          	addi	a4,a4,1
    800064a8:	ff1ff06f          	j	80006498 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800064ac:	00190913          	addi	s2,s2,1
    800064b0:	00900793          	li	a5,9
    800064b4:	0527e063          	bltu	a5,s2,800064f4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	f5050513          	addi	a0,a0,-176 # 80009408 <CONSOLE_STATUS+0x3f8>
    800064c0:	fffff097          	auipc	ra,0xfffff
    800064c4:	37c080e7          	jalr	892(ra) # 8000583c <_Z11printStringPKc>
    800064c8:	00000613          	li	a2,0
    800064cc:	00a00593          	li	a1,10
    800064d0:	0009051b          	sext.w	a0,s2
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	518080e7          	jalr	1304(ra) # 800059ec <_Z8printIntiii>
    800064dc:	00003517          	auipc	a0,0x3
    800064e0:	c8450513          	addi	a0,a0,-892 # 80009160 <CONSOLE_STATUS+0x150>
    800064e4:	fffff097          	auipc	ra,0xfffff
    800064e8:	358080e7          	jalr	856(ra) # 8000583c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800064ec:	00000493          	li	s1,0
    800064f0:	f99ff06f          	j	80006488 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800064f4:	00003517          	auipc	a0,0x3
    800064f8:	f1c50513          	addi	a0,a0,-228 # 80009410 <CONSOLE_STATUS+0x400>
    800064fc:	fffff097          	auipc	ra,0xfffff
    80006500:	340080e7          	jalr	832(ra) # 8000583c <_Z11printStringPKc>
    finishedA = true;
    80006504:	00100793          	li	a5,1
    80006508:	00005717          	auipc	a4,0x5
    8000650c:	3cf706a3          	sb	a5,973(a4) # 8000b8d5 <_ZL9finishedA>
}
    80006510:	01813083          	ld	ra,24(sp)
    80006514:	01013403          	ld	s0,16(sp)
    80006518:	00813483          	ld	s1,8(sp)
    8000651c:	00013903          	ld	s2,0(sp)
    80006520:	02010113          	addi	sp,sp,32
    80006524:	00008067          	ret

0000000080006528 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006528:	fd010113          	addi	sp,sp,-48
    8000652c:	02113423          	sd	ra,40(sp)
    80006530:	02813023          	sd	s0,32(sp)
    80006534:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006538:	00000613          	li	a2,0
    8000653c:	00000597          	auipc	a1,0x0
    80006540:	f2058593          	addi	a1,a1,-224 # 8000645c <_ZL11workerBodyAPv>
    80006544:	fd040513          	addi	a0,s0,-48
    80006548:	ffffb097          	auipc	ra,0xffffb
    8000654c:	fc0080e7          	jalr	-64(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006550:	00003517          	auipc	a0,0x3
    80006554:	f5050513          	addi	a0,a0,-176 # 800094a0 <CONSOLE_STATUS+0x490>
    80006558:	fffff097          	auipc	ra,0xfffff
    8000655c:	2e4080e7          	jalr	740(ra) # 8000583c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006560:	00000613          	li	a2,0
    80006564:	00000597          	auipc	a1,0x0
    80006568:	e1458593          	addi	a1,a1,-492 # 80006378 <_ZL11workerBodyBPv>
    8000656c:	fd840513          	addi	a0,s0,-40
    80006570:	ffffb097          	auipc	ra,0xffffb
    80006574:	f98080e7          	jalr	-104(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	f4050513          	addi	a0,a0,-192 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	2bc080e7          	jalr	700(ra) # 8000583c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006588:	00000613          	li	a2,0
    8000658c:	00000597          	auipc	a1,0x0
    80006590:	c6c58593          	addi	a1,a1,-916 # 800061f8 <_ZL11workerBodyCPv>
    80006594:	fe040513          	addi	a0,s0,-32
    80006598:	ffffb097          	auipc	ra,0xffffb
    8000659c:	f70080e7          	jalr	-144(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800065a0:	00003517          	auipc	a0,0x3
    800065a4:	f3050513          	addi	a0,a0,-208 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800065a8:	fffff097          	auipc	ra,0xfffff
    800065ac:	294080e7          	jalr	660(ra) # 8000583c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800065b0:	00000613          	li	a2,0
    800065b4:	00000597          	auipc	a1,0x0
    800065b8:	afc58593          	addi	a1,a1,-1284 # 800060b0 <_ZL11workerBodyDPv>
    800065bc:	fe840513          	addi	a0,s0,-24
    800065c0:	ffffb097          	auipc	ra,0xffffb
    800065c4:	f48080e7          	jalr	-184(ra) # 80001508 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	f2050513          	addi	a0,a0,-224 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	26c080e7          	jalr	620(ra) # 8000583c <_Z11printStringPKc>
    800065d8:	00c0006f          	j	800065e4 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800065dc:	ffffb097          	auipc	ra,0xffffb
    800065e0:	f88080e7          	jalr	-120(ra) # 80001564 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800065e4:	00005797          	auipc	a5,0x5
    800065e8:	2f17c783          	lbu	a5,753(a5) # 8000b8d5 <_ZL9finishedA>
    800065ec:	fe0788e3          	beqz	a5,800065dc <_Z16System_Mode_testv+0xb4>
    800065f0:	00005797          	auipc	a5,0x5
    800065f4:	2e47c783          	lbu	a5,740(a5) # 8000b8d4 <_ZL9finishedB>
    800065f8:	fe0782e3          	beqz	a5,800065dc <_Z16System_Mode_testv+0xb4>
    800065fc:	00005797          	auipc	a5,0x5
    80006600:	2d77c783          	lbu	a5,727(a5) # 8000b8d3 <_ZL9finishedC>
    80006604:	fc078ce3          	beqz	a5,800065dc <_Z16System_Mode_testv+0xb4>
    80006608:	00005797          	auipc	a5,0x5
    8000660c:	2ca7c783          	lbu	a5,714(a5) # 8000b8d2 <_ZL9finishedD>
    80006610:	fc0786e3          	beqz	a5,800065dc <_Z16System_Mode_testv+0xb4>
    }

}
    80006614:	02813083          	ld	ra,40(sp)
    80006618:	02013403          	ld	s0,32(sp)
    8000661c:	03010113          	addi	sp,sp,48
    80006620:	00008067          	ret

0000000080006624 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006624:	fe010113          	addi	sp,sp,-32
    80006628:	00113c23          	sd	ra,24(sp)
    8000662c:	00813823          	sd	s0,16(sp)
    80006630:	00913423          	sd	s1,8(sp)
    80006634:	01213023          	sd	s2,0(sp)
    80006638:	02010413          	addi	s0,sp,32
    8000663c:	00050493          	mv	s1,a0
    80006640:	00058913          	mv	s2,a1
    80006644:	0015879b          	addiw	a5,a1,1
    80006648:	0007851b          	sext.w	a0,a5
    8000664c:	00f4a023          	sw	a5,0(s1)
    80006650:	0004a823          	sw	zero,16(s1)
    80006654:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006658:	00251513          	slli	a0,a0,0x2
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	e28080e7          	jalr	-472(ra) # 80001484 <_Z9mem_allocm>
    80006664:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006668:	00000593          	li	a1,0
    8000666c:	02048513          	addi	a0,s1,32
    80006670:	ffffb097          	auipc	ra,0xffffb
    80006674:	f38080e7          	jalr	-200(ra) # 800015a8 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006678:	00090593          	mv	a1,s2
    8000667c:	01848513          	addi	a0,s1,24
    80006680:	ffffb097          	auipc	ra,0xffffb
    80006684:	f28080e7          	jalr	-216(ra) # 800015a8 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006688:	00100593          	li	a1,1
    8000668c:	02848513          	addi	a0,s1,40
    80006690:	ffffb097          	auipc	ra,0xffffb
    80006694:	f18080e7          	jalr	-232(ra) # 800015a8 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006698:	00100593          	li	a1,1
    8000669c:	03048513          	addi	a0,s1,48
    800066a0:	ffffb097          	auipc	ra,0xffffb
    800066a4:	f08080e7          	jalr	-248(ra) # 800015a8 <_Z8sem_openPP4_semj>
}
    800066a8:	01813083          	ld	ra,24(sp)
    800066ac:	01013403          	ld	s0,16(sp)
    800066b0:	00813483          	ld	s1,8(sp)
    800066b4:	00013903          	ld	s2,0(sp)
    800066b8:	02010113          	addi	sp,sp,32
    800066bc:	00008067          	ret

00000000800066c0 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800066c0:	fe010113          	addi	sp,sp,-32
    800066c4:	00113c23          	sd	ra,24(sp)
    800066c8:	00813823          	sd	s0,16(sp)
    800066cc:	00913423          	sd	s1,8(sp)
    800066d0:	01213023          	sd	s2,0(sp)
    800066d4:	02010413          	addi	s0,sp,32
    800066d8:	00050493          	mv	s1,a0
    800066dc:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800066e0:	01853503          	ld	a0,24(a0)
    800066e4:	ffffb097          	auipc	ra,0xffffb
    800066e8:	f28080e7          	jalr	-216(ra) # 8000160c <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800066ec:	0304b503          	ld	a0,48(s1)
    800066f0:	ffffb097          	auipc	ra,0xffffb
    800066f4:	f1c080e7          	jalr	-228(ra) # 8000160c <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800066f8:	0084b783          	ld	a5,8(s1)
    800066fc:	0144a703          	lw	a4,20(s1)
    80006700:	00271713          	slli	a4,a4,0x2
    80006704:	00e787b3          	add	a5,a5,a4
    80006708:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000670c:	0144a783          	lw	a5,20(s1)
    80006710:	0017879b          	addiw	a5,a5,1
    80006714:	0004a703          	lw	a4,0(s1)
    80006718:	02e7e7bb          	remw	a5,a5,a4
    8000671c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006720:	0304b503          	ld	a0,48(s1)
    80006724:	ffffb097          	auipc	ra,0xffffb
    80006728:	f14080e7          	jalr	-236(ra) # 80001638 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000672c:	0204b503          	ld	a0,32(s1)
    80006730:	ffffb097          	auipc	ra,0xffffb
    80006734:	f08080e7          	jalr	-248(ra) # 80001638 <_Z10sem_signalP4_sem>

}
    80006738:	01813083          	ld	ra,24(sp)
    8000673c:	01013403          	ld	s0,16(sp)
    80006740:	00813483          	ld	s1,8(sp)
    80006744:	00013903          	ld	s2,0(sp)
    80006748:	02010113          	addi	sp,sp,32
    8000674c:	00008067          	ret

0000000080006750 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006750:	fe010113          	addi	sp,sp,-32
    80006754:	00113c23          	sd	ra,24(sp)
    80006758:	00813823          	sd	s0,16(sp)
    8000675c:	00913423          	sd	s1,8(sp)
    80006760:	01213023          	sd	s2,0(sp)
    80006764:	02010413          	addi	s0,sp,32
    80006768:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000676c:	02053503          	ld	a0,32(a0)
    80006770:	ffffb097          	auipc	ra,0xffffb
    80006774:	e9c080e7          	jalr	-356(ra) # 8000160c <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006778:	0284b503          	ld	a0,40(s1)
    8000677c:	ffffb097          	auipc	ra,0xffffb
    80006780:	e90080e7          	jalr	-368(ra) # 8000160c <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006784:	0084b703          	ld	a4,8(s1)
    80006788:	0104a783          	lw	a5,16(s1)
    8000678c:	00279693          	slli	a3,a5,0x2
    80006790:	00d70733          	add	a4,a4,a3
    80006794:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006798:	0017879b          	addiw	a5,a5,1
    8000679c:	0004a703          	lw	a4,0(s1)
    800067a0:	02e7e7bb          	remw	a5,a5,a4
    800067a4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800067a8:	0284b503          	ld	a0,40(s1)
    800067ac:	ffffb097          	auipc	ra,0xffffb
    800067b0:	e8c080e7          	jalr	-372(ra) # 80001638 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800067b4:	0184b503          	ld	a0,24(s1)
    800067b8:	ffffb097          	auipc	ra,0xffffb
    800067bc:	e80080e7          	jalr	-384(ra) # 80001638 <_Z10sem_signalP4_sem>

    return ret;
}
    800067c0:	00090513          	mv	a0,s2
    800067c4:	01813083          	ld	ra,24(sp)
    800067c8:	01013403          	ld	s0,16(sp)
    800067cc:	00813483          	ld	s1,8(sp)
    800067d0:	00013903          	ld	s2,0(sp)
    800067d4:	02010113          	addi	sp,sp,32
    800067d8:	00008067          	ret

00000000800067dc <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800067dc:	fe010113          	addi	sp,sp,-32
    800067e0:	00113c23          	sd	ra,24(sp)
    800067e4:	00813823          	sd	s0,16(sp)
    800067e8:	00913423          	sd	s1,8(sp)
    800067ec:	01213023          	sd	s2,0(sp)
    800067f0:	02010413          	addi	s0,sp,32
    800067f4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800067f8:	02853503          	ld	a0,40(a0)
    800067fc:	ffffb097          	auipc	ra,0xffffb
    80006800:	e10080e7          	jalr	-496(ra) # 8000160c <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006804:	0304b503          	ld	a0,48(s1)
    80006808:	ffffb097          	auipc	ra,0xffffb
    8000680c:	e04080e7          	jalr	-508(ra) # 8000160c <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006810:	0144a783          	lw	a5,20(s1)
    80006814:	0104a903          	lw	s2,16(s1)
    80006818:	0327ce63          	blt	a5,s2,80006854 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000681c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006820:	0304b503          	ld	a0,48(s1)
    80006824:	ffffb097          	auipc	ra,0xffffb
    80006828:	e14080e7          	jalr	-492(ra) # 80001638 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000682c:	0284b503          	ld	a0,40(s1)
    80006830:	ffffb097          	auipc	ra,0xffffb
    80006834:	e08080e7          	jalr	-504(ra) # 80001638 <_Z10sem_signalP4_sem>

    return ret;
}
    80006838:	00090513          	mv	a0,s2
    8000683c:	01813083          	ld	ra,24(sp)
    80006840:	01013403          	ld	s0,16(sp)
    80006844:	00813483          	ld	s1,8(sp)
    80006848:	00013903          	ld	s2,0(sp)
    8000684c:	02010113          	addi	sp,sp,32
    80006850:	00008067          	ret
        ret = cap - head + tail;
    80006854:	0004a703          	lw	a4,0(s1)
    80006858:	4127093b          	subw	s2,a4,s2
    8000685c:	00f9093b          	addw	s2,s2,a5
    80006860:	fc1ff06f          	j	80006820 <_ZN6Buffer6getCntEv+0x44>

0000000080006864 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006864:	fe010113          	addi	sp,sp,-32
    80006868:	00113c23          	sd	ra,24(sp)
    8000686c:	00813823          	sd	s0,16(sp)
    80006870:	00913423          	sd	s1,8(sp)
    80006874:	02010413          	addi	s0,sp,32
    80006878:	00050493          	mv	s1,a0
    putc('\n');
    8000687c:	00a00513          	li	a0,10
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	e34080e7          	jalr	-460(ra) # 800016b4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006888:	00003517          	auipc	a0,0x3
    8000688c:	c7850513          	addi	a0,a0,-904 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	fac080e7          	jalr	-84(ra) # 8000583c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006898:	00048513          	mv	a0,s1
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	f40080e7          	jalr	-192(ra) # 800067dc <_ZN6Buffer6getCntEv>
    800068a4:	02a05c63          	blez	a0,800068dc <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800068a8:	0084b783          	ld	a5,8(s1)
    800068ac:	0104a703          	lw	a4,16(s1)
    800068b0:	00271713          	slli	a4,a4,0x2
    800068b4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800068b8:	0007c503          	lbu	a0,0(a5)
    800068bc:	ffffb097          	auipc	ra,0xffffb
    800068c0:	df8080e7          	jalr	-520(ra) # 800016b4 <_Z4putcc>
        head = (head + 1) % cap;
    800068c4:	0104a783          	lw	a5,16(s1)
    800068c8:	0017879b          	addiw	a5,a5,1
    800068cc:	0004a703          	lw	a4,0(s1)
    800068d0:	02e7e7bb          	remw	a5,a5,a4
    800068d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800068d8:	fc1ff06f          	j	80006898 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800068dc:	02100513          	li	a0,33
    800068e0:	ffffb097          	auipc	ra,0xffffb
    800068e4:	dd4080e7          	jalr	-556(ra) # 800016b4 <_Z4putcc>
    putc('\n');
    800068e8:	00a00513          	li	a0,10
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	dc8080e7          	jalr	-568(ra) # 800016b4 <_Z4putcc>
    mem_free(buffer);
    800068f4:	0084b503          	ld	a0,8(s1)
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	be4080e7          	jalr	-1052(ra) # 800014dc <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006900:	0204b503          	ld	a0,32(s1)
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	cdc080e7          	jalr	-804(ra) # 800015e0 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000690c:	0184b503          	ld	a0,24(s1)
    80006910:	ffffb097          	auipc	ra,0xffffb
    80006914:	cd0080e7          	jalr	-816(ra) # 800015e0 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006918:	0304b503          	ld	a0,48(s1)
    8000691c:	ffffb097          	auipc	ra,0xffffb
    80006920:	cc4080e7          	jalr	-828(ra) # 800015e0 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006924:	0284b503          	ld	a0,40(s1)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	cb8080e7          	jalr	-840(ra) # 800015e0 <_Z9sem_closeP4_sem>
}
    80006930:	01813083          	ld	ra,24(sp)
    80006934:	01013403          	ld	s0,16(sp)
    80006938:	00813483          	ld	s1,8(sp)
    8000693c:	02010113          	addi	sp,sp,32
    80006940:	00008067          	ret

0000000080006944 <start>:
    80006944:	ff010113          	addi	sp,sp,-16
    80006948:	00813423          	sd	s0,8(sp)
    8000694c:	01010413          	addi	s0,sp,16
    80006950:	300027f3          	csrr	a5,mstatus
    80006954:	ffffe737          	lui	a4,0xffffe
    80006958:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1cbf>
    8000695c:	00e7f7b3          	and	a5,a5,a4
    80006960:	00001737          	lui	a4,0x1
    80006964:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006968:	00e7e7b3          	or	a5,a5,a4
    8000696c:	30079073          	csrw	mstatus,a5
    80006970:	00000797          	auipc	a5,0x0
    80006974:	16078793          	addi	a5,a5,352 # 80006ad0 <system_main>
    80006978:	34179073          	csrw	mepc,a5
    8000697c:	00000793          	li	a5,0
    80006980:	18079073          	csrw	satp,a5
    80006984:	000107b7          	lui	a5,0x10
    80006988:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000698c:	30279073          	csrw	medeleg,a5
    80006990:	30379073          	csrw	mideleg,a5
    80006994:	104027f3          	csrr	a5,sie
    80006998:	2227e793          	ori	a5,a5,546
    8000699c:	10479073          	csrw	sie,a5
    800069a0:	fff00793          	li	a5,-1
    800069a4:	00a7d793          	srli	a5,a5,0xa
    800069a8:	3b079073          	csrw	pmpaddr0,a5
    800069ac:	00f00793          	li	a5,15
    800069b0:	3a079073          	csrw	pmpcfg0,a5
    800069b4:	f14027f3          	csrr	a5,mhartid
    800069b8:	0200c737          	lui	a4,0x200c
    800069bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800069c0:	0007869b          	sext.w	a3,a5
    800069c4:	00269713          	slli	a4,a3,0x2
    800069c8:	000f4637          	lui	a2,0xf4
    800069cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800069d0:	00d70733          	add	a4,a4,a3
    800069d4:	0037979b          	slliw	a5,a5,0x3
    800069d8:	020046b7          	lui	a3,0x2004
    800069dc:	00d787b3          	add	a5,a5,a3
    800069e0:	00c585b3          	add	a1,a1,a2
    800069e4:	00371693          	slli	a3,a4,0x3
    800069e8:	00005717          	auipc	a4,0x5
    800069ec:	ef870713          	addi	a4,a4,-264 # 8000b8e0 <timer_scratch>
    800069f0:	00b7b023          	sd	a1,0(a5)
    800069f4:	00d70733          	add	a4,a4,a3
    800069f8:	00f73c23          	sd	a5,24(a4)
    800069fc:	02c73023          	sd	a2,32(a4)
    80006a00:	34071073          	csrw	mscratch,a4
    80006a04:	00000797          	auipc	a5,0x0
    80006a08:	6ec78793          	addi	a5,a5,1772 # 800070f0 <timervec>
    80006a0c:	30579073          	csrw	mtvec,a5
    80006a10:	300027f3          	csrr	a5,mstatus
    80006a14:	0087e793          	ori	a5,a5,8
    80006a18:	30079073          	csrw	mstatus,a5
    80006a1c:	304027f3          	csrr	a5,mie
    80006a20:	0807e793          	ori	a5,a5,128
    80006a24:	30479073          	csrw	mie,a5
    80006a28:	f14027f3          	csrr	a5,mhartid
    80006a2c:	0007879b          	sext.w	a5,a5
    80006a30:	00078213          	mv	tp,a5
    80006a34:	30200073          	mret
    80006a38:	00813403          	ld	s0,8(sp)
    80006a3c:	01010113          	addi	sp,sp,16
    80006a40:	00008067          	ret

0000000080006a44 <timerinit>:
    80006a44:	ff010113          	addi	sp,sp,-16
    80006a48:	00813423          	sd	s0,8(sp)
    80006a4c:	01010413          	addi	s0,sp,16
    80006a50:	f14027f3          	csrr	a5,mhartid
    80006a54:	0200c737          	lui	a4,0x200c
    80006a58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a5c:	0007869b          	sext.w	a3,a5
    80006a60:	00269713          	slli	a4,a3,0x2
    80006a64:	000f4637          	lui	a2,0xf4
    80006a68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a6c:	00d70733          	add	a4,a4,a3
    80006a70:	0037979b          	slliw	a5,a5,0x3
    80006a74:	020046b7          	lui	a3,0x2004
    80006a78:	00d787b3          	add	a5,a5,a3
    80006a7c:	00c585b3          	add	a1,a1,a2
    80006a80:	00371693          	slli	a3,a4,0x3
    80006a84:	00005717          	auipc	a4,0x5
    80006a88:	e5c70713          	addi	a4,a4,-420 # 8000b8e0 <timer_scratch>
    80006a8c:	00b7b023          	sd	a1,0(a5)
    80006a90:	00d70733          	add	a4,a4,a3
    80006a94:	00f73c23          	sd	a5,24(a4)
    80006a98:	02c73023          	sd	a2,32(a4)
    80006a9c:	34071073          	csrw	mscratch,a4
    80006aa0:	00000797          	auipc	a5,0x0
    80006aa4:	65078793          	addi	a5,a5,1616 # 800070f0 <timervec>
    80006aa8:	30579073          	csrw	mtvec,a5
    80006aac:	300027f3          	csrr	a5,mstatus
    80006ab0:	0087e793          	ori	a5,a5,8
    80006ab4:	30079073          	csrw	mstatus,a5
    80006ab8:	304027f3          	csrr	a5,mie
    80006abc:	0807e793          	ori	a5,a5,128
    80006ac0:	30479073          	csrw	mie,a5
    80006ac4:	00813403          	ld	s0,8(sp)
    80006ac8:	01010113          	addi	sp,sp,16
    80006acc:	00008067          	ret

0000000080006ad0 <system_main>:
    80006ad0:	fe010113          	addi	sp,sp,-32
    80006ad4:	00813823          	sd	s0,16(sp)
    80006ad8:	00913423          	sd	s1,8(sp)
    80006adc:	00113c23          	sd	ra,24(sp)
    80006ae0:	02010413          	addi	s0,sp,32
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	0c4080e7          	jalr	196(ra) # 80006ba8 <cpuid>
    80006aec:	00005497          	auipc	s1,0x5
    80006af0:	d0448493          	addi	s1,s1,-764 # 8000b7f0 <started>
    80006af4:	02050263          	beqz	a0,80006b18 <system_main+0x48>
    80006af8:	0004a783          	lw	a5,0(s1)
    80006afc:	0007879b          	sext.w	a5,a5
    80006b00:	fe078ce3          	beqz	a5,80006af8 <system_main+0x28>
    80006b04:	0ff0000f          	fence
    80006b08:	00003517          	auipc	a0,0x3
    80006b0c:	a5050513          	addi	a0,a0,-1456 # 80009558 <CONSOLE_STATUS+0x548>
    80006b10:	00001097          	auipc	ra,0x1
    80006b14:	a7c080e7          	jalr	-1412(ra) # 8000758c <panic>
    80006b18:	00001097          	auipc	ra,0x1
    80006b1c:	9d0080e7          	jalr	-1584(ra) # 800074e8 <consoleinit>
    80006b20:	00001097          	auipc	ra,0x1
    80006b24:	15c080e7          	jalr	348(ra) # 80007c7c <printfinit>
    80006b28:	00002517          	auipc	a0,0x2
    80006b2c:	63850513          	addi	a0,a0,1592 # 80009160 <CONSOLE_STATUS+0x150>
    80006b30:	00001097          	auipc	ra,0x1
    80006b34:	ab8080e7          	jalr	-1352(ra) # 800075e8 <__printf>
    80006b38:	00003517          	auipc	a0,0x3
    80006b3c:	9f050513          	addi	a0,a0,-1552 # 80009528 <CONSOLE_STATUS+0x518>
    80006b40:	00001097          	auipc	ra,0x1
    80006b44:	aa8080e7          	jalr	-1368(ra) # 800075e8 <__printf>
    80006b48:	00002517          	auipc	a0,0x2
    80006b4c:	61850513          	addi	a0,a0,1560 # 80009160 <CONSOLE_STATUS+0x150>
    80006b50:	00001097          	auipc	ra,0x1
    80006b54:	a98080e7          	jalr	-1384(ra) # 800075e8 <__printf>
    80006b58:	00001097          	auipc	ra,0x1
    80006b5c:	4b0080e7          	jalr	1200(ra) # 80008008 <kinit>
    80006b60:	00000097          	auipc	ra,0x0
    80006b64:	148080e7          	jalr	328(ra) # 80006ca8 <trapinit>
    80006b68:	00000097          	auipc	ra,0x0
    80006b6c:	16c080e7          	jalr	364(ra) # 80006cd4 <trapinithart>
    80006b70:	00000097          	auipc	ra,0x0
    80006b74:	5c0080e7          	jalr	1472(ra) # 80007130 <plicinit>
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	5e0080e7          	jalr	1504(ra) # 80007158 <plicinithart>
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	078080e7          	jalr	120(ra) # 80006bf8 <userinit>
    80006b88:	0ff0000f          	fence
    80006b8c:	00100793          	li	a5,1
    80006b90:	00003517          	auipc	a0,0x3
    80006b94:	9b050513          	addi	a0,a0,-1616 # 80009540 <CONSOLE_STATUS+0x530>
    80006b98:	00f4a023          	sw	a5,0(s1)
    80006b9c:	00001097          	auipc	ra,0x1
    80006ba0:	a4c080e7          	jalr	-1460(ra) # 800075e8 <__printf>
    80006ba4:	0000006f          	j	80006ba4 <system_main+0xd4>

0000000080006ba8 <cpuid>:
    80006ba8:	ff010113          	addi	sp,sp,-16
    80006bac:	00813423          	sd	s0,8(sp)
    80006bb0:	01010413          	addi	s0,sp,16
    80006bb4:	00020513          	mv	a0,tp
    80006bb8:	00813403          	ld	s0,8(sp)
    80006bbc:	0005051b          	sext.w	a0,a0
    80006bc0:	01010113          	addi	sp,sp,16
    80006bc4:	00008067          	ret

0000000080006bc8 <mycpu>:
    80006bc8:	ff010113          	addi	sp,sp,-16
    80006bcc:	00813423          	sd	s0,8(sp)
    80006bd0:	01010413          	addi	s0,sp,16
    80006bd4:	00020793          	mv	a5,tp
    80006bd8:	00813403          	ld	s0,8(sp)
    80006bdc:	0007879b          	sext.w	a5,a5
    80006be0:	00779793          	slli	a5,a5,0x7
    80006be4:	00006517          	auipc	a0,0x6
    80006be8:	d2c50513          	addi	a0,a0,-724 # 8000c910 <cpus>
    80006bec:	00f50533          	add	a0,a0,a5
    80006bf0:	01010113          	addi	sp,sp,16
    80006bf4:	00008067          	ret

0000000080006bf8 <userinit>:
    80006bf8:	ff010113          	addi	sp,sp,-16
    80006bfc:	00813423          	sd	s0,8(sp)
    80006c00:	01010413          	addi	s0,sp,16
    80006c04:	00813403          	ld	s0,8(sp)
    80006c08:	01010113          	addi	sp,sp,16
    80006c0c:	ffffb317          	auipc	t1,0xffffb
    80006c10:	21430067          	jr	532(t1) # 80001e20 <main>

0000000080006c14 <either_copyout>:
    80006c14:	ff010113          	addi	sp,sp,-16
    80006c18:	00813023          	sd	s0,0(sp)
    80006c1c:	00113423          	sd	ra,8(sp)
    80006c20:	01010413          	addi	s0,sp,16
    80006c24:	02051663          	bnez	a0,80006c50 <either_copyout+0x3c>
    80006c28:	00058513          	mv	a0,a1
    80006c2c:	00060593          	mv	a1,a2
    80006c30:	0006861b          	sext.w	a2,a3
    80006c34:	00002097          	auipc	ra,0x2
    80006c38:	c60080e7          	jalr	-928(ra) # 80008894 <__memmove>
    80006c3c:	00813083          	ld	ra,8(sp)
    80006c40:	00013403          	ld	s0,0(sp)
    80006c44:	00000513          	li	a0,0
    80006c48:	01010113          	addi	sp,sp,16
    80006c4c:	00008067          	ret
    80006c50:	00003517          	auipc	a0,0x3
    80006c54:	93050513          	addi	a0,a0,-1744 # 80009580 <CONSOLE_STATUS+0x570>
    80006c58:	00001097          	auipc	ra,0x1
    80006c5c:	934080e7          	jalr	-1740(ra) # 8000758c <panic>

0000000080006c60 <either_copyin>:
    80006c60:	ff010113          	addi	sp,sp,-16
    80006c64:	00813023          	sd	s0,0(sp)
    80006c68:	00113423          	sd	ra,8(sp)
    80006c6c:	01010413          	addi	s0,sp,16
    80006c70:	02059463          	bnez	a1,80006c98 <either_copyin+0x38>
    80006c74:	00060593          	mv	a1,a2
    80006c78:	0006861b          	sext.w	a2,a3
    80006c7c:	00002097          	auipc	ra,0x2
    80006c80:	c18080e7          	jalr	-1000(ra) # 80008894 <__memmove>
    80006c84:	00813083          	ld	ra,8(sp)
    80006c88:	00013403          	ld	s0,0(sp)
    80006c8c:	00000513          	li	a0,0
    80006c90:	01010113          	addi	sp,sp,16
    80006c94:	00008067          	ret
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	91050513          	addi	a0,a0,-1776 # 800095a8 <CONSOLE_STATUS+0x598>
    80006ca0:	00001097          	auipc	ra,0x1
    80006ca4:	8ec080e7          	jalr	-1812(ra) # 8000758c <panic>

0000000080006ca8 <trapinit>:
    80006ca8:	ff010113          	addi	sp,sp,-16
    80006cac:	00813423          	sd	s0,8(sp)
    80006cb0:	01010413          	addi	s0,sp,16
    80006cb4:	00813403          	ld	s0,8(sp)
    80006cb8:	00003597          	auipc	a1,0x3
    80006cbc:	91858593          	addi	a1,a1,-1768 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006cc0:	00006517          	auipc	a0,0x6
    80006cc4:	cd050513          	addi	a0,a0,-816 # 8000c990 <tickslock>
    80006cc8:	01010113          	addi	sp,sp,16
    80006ccc:	00001317          	auipc	t1,0x1
    80006cd0:	5cc30067          	jr	1484(t1) # 80008298 <initlock>

0000000080006cd4 <trapinithart>:
    80006cd4:	ff010113          	addi	sp,sp,-16
    80006cd8:	00813423          	sd	s0,8(sp)
    80006cdc:	01010413          	addi	s0,sp,16
    80006ce0:	00000797          	auipc	a5,0x0
    80006ce4:	30078793          	addi	a5,a5,768 # 80006fe0 <kernelvec>
    80006ce8:	10579073          	csrw	stvec,a5
    80006cec:	00813403          	ld	s0,8(sp)
    80006cf0:	01010113          	addi	sp,sp,16
    80006cf4:	00008067          	ret

0000000080006cf8 <usertrap>:
    80006cf8:	ff010113          	addi	sp,sp,-16
    80006cfc:	00813423          	sd	s0,8(sp)
    80006d00:	01010413          	addi	s0,sp,16
    80006d04:	00813403          	ld	s0,8(sp)
    80006d08:	01010113          	addi	sp,sp,16
    80006d0c:	00008067          	ret

0000000080006d10 <usertrapret>:
    80006d10:	ff010113          	addi	sp,sp,-16
    80006d14:	00813423          	sd	s0,8(sp)
    80006d18:	01010413          	addi	s0,sp,16
    80006d1c:	00813403          	ld	s0,8(sp)
    80006d20:	01010113          	addi	sp,sp,16
    80006d24:	00008067          	ret

0000000080006d28 <kerneltrap>:
    80006d28:	fe010113          	addi	sp,sp,-32
    80006d2c:	00813823          	sd	s0,16(sp)
    80006d30:	00113c23          	sd	ra,24(sp)
    80006d34:	00913423          	sd	s1,8(sp)
    80006d38:	02010413          	addi	s0,sp,32
    80006d3c:	142025f3          	csrr	a1,scause
    80006d40:	100027f3          	csrr	a5,sstatus
    80006d44:	0027f793          	andi	a5,a5,2
    80006d48:	10079c63          	bnez	a5,80006e60 <kerneltrap+0x138>
    80006d4c:	142027f3          	csrr	a5,scause
    80006d50:	0207ce63          	bltz	a5,80006d8c <kerneltrap+0x64>
    80006d54:	00003517          	auipc	a0,0x3
    80006d58:	8c450513          	addi	a0,a0,-1852 # 80009618 <CONSOLE_STATUS+0x608>
    80006d5c:	00001097          	auipc	ra,0x1
    80006d60:	88c080e7          	jalr	-1908(ra) # 800075e8 <__printf>
    80006d64:	141025f3          	csrr	a1,sepc
    80006d68:	14302673          	csrr	a2,stval
    80006d6c:	00003517          	auipc	a0,0x3
    80006d70:	8bc50513          	addi	a0,a0,-1860 # 80009628 <CONSOLE_STATUS+0x618>
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	874080e7          	jalr	-1932(ra) # 800075e8 <__printf>
    80006d7c:	00003517          	auipc	a0,0x3
    80006d80:	8c450513          	addi	a0,a0,-1852 # 80009640 <CONSOLE_STATUS+0x630>
    80006d84:	00001097          	auipc	ra,0x1
    80006d88:	808080e7          	jalr	-2040(ra) # 8000758c <panic>
    80006d8c:	0ff7f713          	andi	a4,a5,255
    80006d90:	00900693          	li	a3,9
    80006d94:	04d70063          	beq	a4,a3,80006dd4 <kerneltrap+0xac>
    80006d98:	fff00713          	li	a4,-1
    80006d9c:	03f71713          	slli	a4,a4,0x3f
    80006da0:	00170713          	addi	a4,a4,1
    80006da4:	fae798e3          	bne	a5,a4,80006d54 <kerneltrap+0x2c>
    80006da8:	00000097          	auipc	ra,0x0
    80006dac:	e00080e7          	jalr	-512(ra) # 80006ba8 <cpuid>
    80006db0:	06050663          	beqz	a0,80006e1c <kerneltrap+0xf4>
    80006db4:	144027f3          	csrr	a5,sip
    80006db8:	ffd7f793          	andi	a5,a5,-3
    80006dbc:	14479073          	csrw	sip,a5
    80006dc0:	01813083          	ld	ra,24(sp)
    80006dc4:	01013403          	ld	s0,16(sp)
    80006dc8:	00813483          	ld	s1,8(sp)
    80006dcc:	02010113          	addi	sp,sp,32
    80006dd0:	00008067          	ret
    80006dd4:	00000097          	auipc	ra,0x0
    80006dd8:	3d0080e7          	jalr	976(ra) # 800071a4 <plic_claim>
    80006ddc:	00a00793          	li	a5,10
    80006de0:	00050493          	mv	s1,a0
    80006de4:	06f50863          	beq	a0,a5,80006e54 <kerneltrap+0x12c>
    80006de8:	fc050ce3          	beqz	a0,80006dc0 <kerneltrap+0x98>
    80006dec:	00050593          	mv	a1,a0
    80006df0:	00003517          	auipc	a0,0x3
    80006df4:	80850513          	addi	a0,a0,-2040 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006df8:	00000097          	auipc	ra,0x0
    80006dfc:	7f0080e7          	jalr	2032(ra) # 800075e8 <__printf>
    80006e00:	01013403          	ld	s0,16(sp)
    80006e04:	01813083          	ld	ra,24(sp)
    80006e08:	00048513          	mv	a0,s1
    80006e0c:	00813483          	ld	s1,8(sp)
    80006e10:	02010113          	addi	sp,sp,32
    80006e14:	00000317          	auipc	t1,0x0
    80006e18:	3c830067          	jr	968(t1) # 800071dc <plic_complete>
    80006e1c:	00006517          	auipc	a0,0x6
    80006e20:	b7450513          	addi	a0,a0,-1164 # 8000c990 <tickslock>
    80006e24:	00001097          	auipc	ra,0x1
    80006e28:	498080e7          	jalr	1176(ra) # 800082bc <acquire>
    80006e2c:	00005717          	auipc	a4,0x5
    80006e30:	9c870713          	addi	a4,a4,-1592 # 8000b7f4 <ticks>
    80006e34:	00072783          	lw	a5,0(a4)
    80006e38:	00006517          	auipc	a0,0x6
    80006e3c:	b5850513          	addi	a0,a0,-1192 # 8000c990 <tickslock>
    80006e40:	0017879b          	addiw	a5,a5,1
    80006e44:	00f72023          	sw	a5,0(a4)
    80006e48:	00001097          	auipc	ra,0x1
    80006e4c:	540080e7          	jalr	1344(ra) # 80008388 <release>
    80006e50:	f65ff06f          	j	80006db4 <kerneltrap+0x8c>
    80006e54:	00001097          	auipc	ra,0x1
    80006e58:	09c080e7          	jalr	156(ra) # 80007ef0 <uartintr>
    80006e5c:	fa5ff06f          	j	80006e00 <kerneltrap+0xd8>
    80006e60:	00002517          	auipc	a0,0x2
    80006e64:	77850513          	addi	a0,a0,1912 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006e68:	00000097          	auipc	ra,0x0
    80006e6c:	724080e7          	jalr	1828(ra) # 8000758c <panic>

0000000080006e70 <clockintr>:
    80006e70:	fe010113          	addi	sp,sp,-32
    80006e74:	00813823          	sd	s0,16(sp)
    80006e78:	00913423          	sd	s1,8(sp)
    80006e7c:	00113c23          	sd	ra,24(sp)
    80006e80:	02010413          	addi	s0,sp,32
    80006e84:	00006497          	auipc	s1,0x6
    80006e88:	b0c48493          	addi	s1,s1,-1268 # 8000c990 <tickslock>
    80006e8c:	00048513          	mv	a0,s1
    80006e90:	00001097          	auipc	ra,0x1
    80006e94:	42c080e7          	jalr	1068(ra) # 800082bc <acquire>
    80006e98:	00005717          	auipc	a4,0x5
    80006e9c:	95c70713          	addi	a4,a4,-1700 # 8000b7f4 <ticks>
    80006ea0:	00072783          	lw	a5,0(a4)
    80006ea4:	01013403          	ld	s0,16(sp)
    80006ea8:	01813083          	ld	ra,24(sp)
    80006eac:	00048513          	mv	a0,s1
    80006eb0:	0017879b          	addiw	a5,a5,1
    80006eb4:	00813483          	ld	s1,8(sp)
    80006eb8:	00f72023          	sw	a5,0(a4)
    80006ebc:	02010113          	addi	sp,sp,32
    80006ec0:	00001317          	auipc	t1,0x1
    80006ec4:	4c830067          	jr	1224(t1) # 80008388 <release>

0000000080006ec8 <devintr>:
    80006ec8:	142027f3          	csrr	a5,scause
    80006ecc:	00000513          	li	a0,0
    80006ed0:	0007c463          	bltz	a5,80006ed8 <devintr+0x10>
    80006ed4:	00008067          	ret
    80006ed8:	fe010113          	addi	sp,sp,-32
    80006edc:	00813823          	sd	s0,16(sp)
    80006ee0:	00113c23          	sd	ra,24(sp)
    80006ee4:	00913423          	sd	s1,8(sp)
    80006ee8:	02010413          	addi	s0,sp,32
    80006eec:	0ff7f713          	andi	a4,a5,255
    80006ef0:	00900693          	li	a3,9
    80006ef4:	04d70c63          	beq	a4,a3,80006f4c <devintr+0x84>
    80006ef8:	fff00713          	li	a4,-1
    80006efc:	03f71713          	slli	a4,a4,0x3f
    80006f00:	00170713          	addi	a4,a4,1
    80006f04:	00e78c63          	beq	a5,a4,80006f1c <devintr+0x54>
    80006f08:	01813083          	ld	ra,24(sp)
    80006f0c:	01013403          	ld	s0,16(sp)
    80006f10:	00813483          	ld	s1,8(sp)
    80006f14:	02010113          	addi	sp,sp,32
    80006f18:	00008067          	ret
    80006f1c:	00000097          	auipc	ra,0x0
    80006f20:	c8c080e7          	jalr	-884(ra) # 80006ba8 <cpuid>
    80006f24:	06050663          	beqz	a0,80006f90 <devintr+0xc8>
    80006f28:	144027f3          	csrr	a5,sip
    80006f2c:	ffd7f793          	andi	a5,a5,-3
    80006f30:	14479073          	csrw	sip,a5
    80006f34:	01813083          	ld	ra,24(sp)
    80006f38:	01013403          	ld	s0,16(sp)
    80006f3c:	00813483          	ld	s1,8(sp)
    80006f40:	00200513          	li	a0,2
    80006f44:	02010113          	addi	sp,sp,32
    80006f48:	00008067          	ret
    80006f4c:	00000097          	auipc	ra,0x0
    80006f50:	258080e7          	jalr	600(ra) # 800071a4 <plic_claim>
    80006f54:	00a00793          	li	a5,10
    80006f58:	00050493          	mv	s1,a0
    80006f5c:	06f50663          	beq	a0,a5,80006fc8 <devintr+0x100>
    80006f60:	00100513          	li	a0,1
    80006f64:	fa0482e3          	beqz	s1,80006f08 <devintr+0x40>
    80006f68:	00048593          	mv	a1,s1
    80006f6c:	00002517          	auipc	a0,0x2
    80006f70:	68c50513          	addi	a0,a0,1676 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006f74:	00000097          	auipc	ra,0x0
    80006f78:	674080e7          	jalr	1652(ra) # 800075e8 <__printf>
    80006f7c:	00048513          	mv	a0,s1
    80006f80:	00000097          	auipc	ra,0x0
    80006f84:	25c080e7          	jalr	604(ra) # 800071dc <plic_complete>
    80006f88:	00100513          	li	a0,1
    80006f8c:	f7dff06f          	j	80006f08 <devintr+0x40>
    80006f90:	00006517          	auipc	a0,0x6
    80006f94:	a0050513          	addi	a0,a0,-1536 # 8000c990 <tickslock>
    80006f98:	00001097          	auipc	ra,0x1
    80006f9c:	324080e7          	jalr	804(ra) # 800082bc <acquire>
    80006fa0:	00005717          	auipc	a4,0x5
    80006fa4:	85470713          	addi	a4,a4,-1964 # 8000b7f4 <ticks>
    80006fa8:	00072783          	lw	a5,0(a4)
    80006fac:	00006517          	auipc	a0,0x6
    80006fb0:	9e450513          	addi	a0,a0,-1564 # 8000c990 <tickslock>
    80006fb4:	0017879b          	addiw	a5,a5,1
    80006fb8:	00f72023          	sw	a5,0(a4)
    80006fbc:	00001097          	auipc	ra,0x1
    80006fc0:	3cc080e7          	jalr	972(ra) # 80008388 <release>
    80006fc4:	f65ff06f          	j	80006f28 <devintr+0x60>
    80006fc8:	00001097          	auipc	ra,0x1
    80006fcc:	f28080e7          	jalr	-216(ra) # 80007ef0 <uartintr>
    80006fd0:	fadff06f          	j	80006f7c <devintr+0xb4>
	...

0000000080006fe0 <kernelvec>:
    80006fe0:	f0010113          	addi	sp,sp,-256
    80006fe4:	00113023          	sd	ra,0(sp)
    80006fe8:	00213423          	sd	sp,8(sp)
    80006fec:	00313823          	sd	gp,16(sp)
    80006ff0:	00413c23          	sd	tp,24(sp)
    80006ff4:	02513023          	sd	t0,32(sp)
    80006ff8:	02613423          	sd	t1,40(sp)
    80006ffc:	02713823          	sd	t2,48(sp)
    80007000:	02813c23          	sd	s0,56(sp)
    80007004:	04913023          	sd	s1,64(sp)
    80007008:	04a13423          	sd	a0,72(sp)
    8000700c:	04b13823          	sd	a1,80(sp)
    80007010:	04c13c23          	sd	a2,88(sp)
    80007014:	06d13023          	sd	a3,96(sp)
    80007018:	06e13423          	sd	a4,104(sp)
    8000701c:	06f13823          	sd	a5,112(sp)
    80007020:	07013c23          	sd	a6,120(sp)
    80007024:	09113023          	sd	a7,128(sp)
    80007028:	09213423          	sd	s2,136(sp)
    8000702c:	09313823          	sd	s3,144(sp)
    80007030:	09413c23          	sd	s4,152(sp)
    80007034:	0b513023          	sd	s5,160(sp)
    80007038:	0b613423          	sd	s6,168(sp)
    8000703c:	0b713823          	sd	s7,176(sp)
    80007040:	0b813c23          	sd	s8,184(sp)
    80007044:	0d913023          	sd	s9,192(sp)
    80007048:	0da13423          	sd	s10,200(sp)
    8000704c:	0db13823          	sd	s11,208(sp)
    80007050:	0dc13c23          	sd	t3,216(sp)
    80007054:	0fd13023          	sd	t4,224(sp)
    80007058:	0fe13423          	sd	t5,232(sp)
    8000705c:	0ff13823          	sd	t6,240(sp)
    80007060:	cc9ff0ef          	jal	ra,80006d28 <kerneltrap>
    80007064:	00013083          	ld	ra,0(sp)
    80007068:	00813103          	ld	sp,8(sp)
    8000706c:	01013183          	ld	gp,16(sp)
    80007070:	02013283          	ld	t0,32(sp)
    80007074:	02813303          	ld	t1,40(sp)
    80007078:	03013383          	ld	t2,48(sp)
    8000707c:	03813403          	ld	s0,56(sp)
    80007080:	04013483          	ld	s1,64(sp)
    80007084:	04813503          	ld	a0,72(sp)
    80007088:	05013583          	ld	a1,80(sp)
    8000708c:	05813603          	ld	a2,88(sp)
    80007090:	06013683          	ld	a3,96(sp)
    80007094:	06813703          	ld	a4,104(sp)
    80007098:	07013783          	ld	a5,112(sp)
    8000709c:	07813803          	ld	a6,120(sp)
    800070a0:	08013883          	ld	a7,128(sp)
    800070a4:	08813903          	ld	s2,136(sp)
    800070a8:	09013983          	ld	s3,144(sp)
    800070ac:	09813a03          	ld	s4,152(sp)
    800070b0:	0a013a83          	ld	s5,160(sp)
    800070b4:	0a813b03          	ld	s6,168(sp)
    800070b8:	0b013b83          	ld	s7,176(sp)
    800070bc:	0b813c03          	ld	s8,184(sp)
    800070c0:	0c013c83          	ld	s9,192(sp)
    800070c4:	0c813d03          	ld	s10,200(sp)
    800070c8:	0d013d83          	ld	s11,208(sp)
    800070cc:	0d813e03          	ld	t3,216(sp)
    800070d0:	0e013e83          	ld	t4,224(sp)
    800070d4:	0e813f03          	ld	t5,232(sp)
    800070d8:	0f013f83          	ld	t6,240(sp)
    800070dc:	10010113          	addi	sp,sp,256
    800070e0:	10200073          	sret
    800070e4:	00000013          	nop
    800070e8:	00000013          	nop
    800070ec:	00000013          	nop

00000000800070f0 <timervec>:
    800070f0:	34051573          	csrrw	a0,mscratch,a0
    800070f4:	00b53023          	sd	a1,0(a0)
    800070f8:	00c53423          	sd	a2,8(a0)
    800070fc:	00d53823          	sd	a3,16(a0)
    80007100:	01853583          	ld	a1,24(a0)
    80007104:	02053603          	ld	a2,32(a0)
    80007108:	0005b683          	ld	a3,0(a1)
    8000710c:	00c686b3          	add	a3,a3,a2
    80007110:	00d5b023          	sd	a3,0(a1)
    80007114:	00200593          	li	a1,2
    80007118:	14459073          	csrw	sip,a1
    8000711c:	01053683          	ld	a3,16(a0)
    80007120:	00853603          	ld	a2,8(a0)
    80007124:	00053583          	ld	a1,0(a0)
    80007128:	34051573          	csrrw	a0,mscratch,a0
    8000712c:	30200073          	mret

0000000080007130 <plicinit>:
    80007130:	ff010113          	addi	sp,sp,-16
    80007134:	00813423          	sd	s0,8(sp)
    80007138:	01010413          	addi	s0,sp,16
    8000713c:	00813403          	ld	s0,8(sp)
    80007140:	0c0007b7          	lui	a5,0xc000
    80007144:	00100713          	li	a4,1
    80007148:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000714c:	00e7a223          	sw	a4,4(a5)
    80007150:	01010113          	addi	sp,sp,16
    80007154:	00008067          	ret

0000000080007158 <plicinithart>:
    80007158:	ff010113          	addi	sp,sp,-16
    8000715c:	00813023          	sd	s0,0(sp)
    80007160:	00113423          	sd	ra,8(sp)
    80007164:	01010413          	addi	s0,sp,16
    80007168:	00000097          	auipc	ra,0x0
    8000716c:	a40080e7          	jalr	-1472(ra) # 80006ba8 <cpuid>
    80007170:	0085171b          	slliw	a4,a0,0x8
    80007174:	0c0027b7          	lui	a5,0xc002
    80007178:	00e787b3          	add	a5,a5,a4
    8000717c:	40200713          	li	a4,1026
    80007180:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007184:	00813083          	ld	ra,8(sp)
    80007188:	00013403          	ld	s0,0(sp)
    8000718c:	00d5151b          	slliw	a0,a0,0xd
    80007190:	0c2017b7          	lui	a5,0xc201
    80007194:	00a78533          	add	a0,a5,a0
    80007198:	00052023          	sw	zero,0(a0)
    8000719c:	01010113          	addi	sp,sp,16
    800071a0:	00008067          	ret

00000000800071a4 <plic_claim>:
    800071a4:	ff010113          	addi	sp,sp,-16
    800071a8:	00813023          	sd	s0,0(sp)
    800071ac:	00113423          	sd	ra,8(sp)
    800071b0:	01010413          	addi	s0,sp,16
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	9f4080e7          	jalr	-1548(ra) # 80006ba8 <cpuid>
    800071bc:	00813083          	ld	ra,8(sp)
    800071c0:	00013403          	ld	s0,0(sp)
    800071c4:	00d5151b          	slliw	a0,a0,0xd
    800071c8:	0c2017b7          	lui	a5,0xc201
    800071cc:	00a78533          	add	a0,a5,a0
    800071d0:	00452503          	lw	a0,4(a0)
    800071d4:	01010113          	addi	sp,sp,16
    800071d8:	00008067          	ret

00000000800071dc <plic_complete>:
    800071dc:	fe010113          	addi	sp,sp,-32
    800071e0:	00813823          	sd	s0,16(sp)
    800071e4:	00913423          	sd	s1,8(sp)
    800071e8:	00113c23          	sd	ra,24(sp)
    800071ec:	02010413          	addi	s0,sp,32
    800071f0:	00050493          	mv	s1,a0
    800071f4:	00000097          	auipc	ra,0x0
    800071f8:	9b4080e7          	jalr	-1612(ra) # 80006ba8 <cpuid>
    800071fc:	01813083          	ld	ra,24(sp)
    80007200:	01013403          	ld	s0,16(sp)
    80007204:	00d5179b          	slliw	a5,a0,0xd
    80007208:	0c201737          	lui	a4,0xc201
    8000720c:	00f707b3          	add	a5,a4,a5
    80007210:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007214:	00813483          	ld	s1,8(sp)
    80007218:	02010113          	addi	sp,sp,32
    8000721c:	00008067          	ret

0000000080007220 <consolewrite>:
    80007220:	fb010113          	addi	sp,sp,-80
    80007224:	04813023          	sd	s0,64(sp)
    80007228:	04113423          	sd	ra,72(sp)
    8000722c:	02913c23          	sd	s1,56(sp)
    80007230:	03213823          	sd	s2,48(sp)
    80007234:	03313423          	sd	s3,40(sp)
    80007238:	03413023          	sd	s4,32(sp)
    8000723c:	01513c23          	sd	s5,24(sp)
    80007240:	05010413          	addi	s0,sp,80
    80007244:	06c05c63          	blez	a2,800072bc <consolewrite+0x9c>
    80007248:	00060993          	mv	s3,a2
    8000724c:	00050a13          	mv	s4,a0
    80007250:	00058493          	mv	s1,a1
    80007254:	00000913          	li	s2,0
    80007258:	fff00a93          	li	s5,-1
    8000725c:	01c0006f          	j	80007278 <consolewrite+0x58>
    80007260:	fbf44503          	lbu	a0,-65(s0)
    80007264:	0019091b          	addiw	s2,s2,1
    80007268:	00148493          	addi	s1,s1,1
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	a9c080e7          	jalr	-1380(ra) # 80007d08 <uartputc>
    80007274:	03298063          	beq	s3,s2,80007294 <consolewrite+0x74>
    80007278:	00048613          	mv	a2,s1
    8000727c:	00100693          	li	a3,1
    80007280:	000a0593          	mv	a1,s4
    80007284:	fbf40513          	addi	a0,s0,-65
    80007288:	00000097          	auipc	ra,0x0
    8000728c:	9d8080e7          	jalr	-1576(ra) # 80006c60 <either_copyin>
    80007290:	fd5518e3          	bne	a0,s5,80007260 <consolewrite+0x40>
    80007294:	04813083          	ld	ra,72(sp)
    80007298:	04013403          	ld	s0,64(sp)
    8000729c:	03813483          	ld	s1,56(sp)
    800072a0:	02813983          	ld	s3,40(sp)
    800072a4:	02013a03          	ld	s4,32(sp)
    800072a8:	01813a83          	ld	s5,24(sp)
    800072ac:	00090513          	mv	a0,s2
    800072b0:	03013903          	ld	s2,48(sp)
    800072b4:	05010113          	addi	sp,sp,80
    800072b8:	00008067          	ret
    800072bc:	00000913          	li	s2,0
    800072c0:	fd5ff06f          	j	80007294 <consolewrite+0x74>

00000000800072c4 <consoleread>:
    800072c4:	f9010113          	addi	sp,sp,-112
    800072c8:	06813023          	sd	s0,96(sp)
    800072cc:	04913c23          	sd	s1,88(sp)
    800072d0:	05213823          	sd	s2,80(sp)
    800072d4:	05313423          	sd	s3,72(sp)
    800072d8:	05413023          	sd	s4,64(sp)
    800072dc:	03513c23          	sd	s5,56(sp)
    800072e0:	03613823          	sd	s6,48(sp)
    800072e4:	03713423          	sd	s7,40(sp)
    800072e8:	03813023          	sd	s8,32(sp)
    800072ec:	06113423          	sd	ra,104(sp)
    800072f0:	01913c23          	sd	s9,24(sp)
    800072f4:	07010413          	addi	s0,sp,112
    800072f8:	00060b93          	mv	s7,a2
    800072fc:	00050913          	mv	s2,a0
    80007300:	00058c13          	mv	s8,a1
    80007304:	00060b1b          	sext.w	s6,a2
    80007308:	00005497          	auipc	s1,0x5
    8000730c:	6b048493          	addi	s1,s1,1712 # 8000c9b8 <cons>
    80007310:	00400993          	li	s3,4
    80007314:	fff00a13          	li	s4,-1
    80007318:	00a00a93          	li	s5,10
    8000731c:	05705e63          	blez	s7,80007378 <consoleread+0xb4>
    80007320:	09c4a703          	lw	a4,156(s1)
    80007324:	0984a783          	lw	a5,152(s1)
    80007328:	0007071b          	sext.w	a4,a4
    8000732c:	08e78463          	beq	a5,a4,800073b4 <consoleread+0xf0>
    80007330:	07f7f713          	andi	a4,a5,127
    80007334:	00e48733          	add	a4,s1,a4
    80007338:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000733c:	0017869b          	addiw	a3,a5,1
    80007340:	08d4ac23          	sw	a3,152(s1)
    80007344:	00070c9b          	sext.w	s9,a4
    80007348:	0b370663          	beq	a4,s3,800073f4 <consoleread+0x130>
    8000734c:	00100693          	li	a3,1
    80007350:	f9f40613          	addi	a2,s0,-97
    80007354:	000c0593          	mv	a1,s8
    80007358:	00090513          	mv	a0,s2
    8000735c:	f8e40fa3          	sb	a4,-97(s0)
    80007360:	00000097          	auipc	ra,0x0
    80007364:	8b4080e7          	jalr	-1868(ra) # 80006c14 <either_copyout>
    80007368:	01450863          	beq	a0,s4,80007378 <consoleread+0xb4>
    8000736c:	001c0c13          	addi	s8,s8,1
    80007370:	fffb8b9b          	addiw	s7,s7,-1
    80007374:	fb5c94e3          	bne	s9,s5,8000731c <consoleread+0x58>
    80007378:	000b851b          	sext.w	a0,s7
    8000737c:	06813083          	ld	ra,104(sp)
    80007380:	06013403          	ld	s0,96(sp)
    80007384:	05813483          	ld	s1,88(sp)
    80007388:	05013903          	ld	s2,80(sp)
    8000738c:	04813983          	ld	s3,72(sp)
    80007390:	04013a03          	ld	s4,64(sp)
    80007394:	03813a83          	ld	s5,56(sp)
    80007398:	02813b83          	ld	s7,40(sp)
    8000739c:	02013c03          	ld	s8,32(sp)
    800073a0:	01813c83          	ld	s9,24(sp)
    800073a4:	40ab053b          	subw	a0,s6,a0
    800073a8:	03013b03          	ld	s6,48(sp)
    800073ac:	07010113          	addi	sp,sp,112
    800073b0:	00008067          	ret
    800073b4:	00001097          	auipc	ra,0x1
    800073b8:	1d8080e7          	jalr	472(ra) # 8000858c <push_on>
    800073bc:	0984a703          	lw	a4,152(s1)
    800073c0:	09c4a783          	lw	a5,156(s1)
    800073c4:	0007879b          	sext.w	a5,a5
    800073c8:	fef70ce3          	beq	a4,a5,800073c0 <consoleread+0xfc>
    800073cc:	00001097          	auipc	ra,0x1
    800073d0:	234080e7          	jalr	564(ra) # 80008600 <pop_on>
    800073d4:	0984a783          	lw	a5,152(s1)
    800073d8:	07f7f713          	andi	a4,a5,127
    800073dc:	00e48733          	add	a4,s1,a4
    800073e0:	01874703          	lbu	a4,24(a4)
    800073e4:	0017869b          	addiw	a3,a5,1
    800073e8:	08d4ac23          	sw	a3,152(s1)
    800073ec:	00070c9b          	sext.w	s9,a4
    800073f0:	f5371ee3          	bne	a4,s3,8000734c <consoleread+0x88>
    800073f4:	000b851b          	sext.w	a0,s7
    800073f8:	f96bf2e3          	bgeu	s7,s6,8000737c <consoleread+0xb8>
    800073fc:	08f4ac23          	sw	a5,152(s1)
    80007400:	f7dff06f          	j	8000737c <consoleread+0xb8>

0000000080007404 <consputc>:
    80007404:	10000793          	li	a5,256
    80007408:	00f50663          	beq	a0,a5,80007414 <consputc+0x10>
    8000740c:	00001317          	auipc	t1,0x1
    80007410:	9f430067          	jr	-1548(t1) # 80007e00 <uartputc_sync>
    80007414:	ff010113          	addi	sp,sp,-16
    80007418:	00113423          	sd	ra,8(sp)
    8000741c:	00813023          	sd	s0,0(sp)
    80007420:	01010413          	addi	s0,sp,16
    80007424:	00800513          	li	a0,8
    80007428:	00001097          	auipc	ra,0x1
    8000742c:	9d8080e7          	jalr	-1576(ra) # 80007e00 <uartputc_sync>
    80007430:	02000513          	li	a0,32
    80007434:	00001097          	auipc	ra,0x1
    80007438:	9cc080e7          	jalr	-1588(ra) # 80007e00 <uartputc_sync>
    8000743c:	00013403          	ld	s0,0(sp)
    80007440:	00813083          	ld	ra,8(sp)
    80007444:	00800513          	li	a0,8
    80007448:	01010113          	addi	sp,sp,16
    8000744c:	00001317          	auipc	t1,0x1
    80007450:	9b430067          	jr	-1612(t1) # 80007e00 <uartputc_sync>

0000000080007454 <consoleintr>:
    80007454:	fe010113          	addi	sp,sp,-32
    80007458:	00813823          	sd	s0,16(sp)
    8000745c:	00913423          	sd	s1,8(sp)
    80007460:	01213023          	sd	s2,0(sp)
    80007464:	00113c23          	sd	ra,24(sp)
    80007468:	02010413          	addi	s0,sp,32
    8000746c:	00005917          	auipc	s2,0x5
    80007470:	54c90913          	addi	s2,s2,1356 # 8000c9b8 <cons>
    80007474:	00050493          	mv	s1,a0
    80007478:	00090513          	mv	a0,s2
    8000747c:	00001097          	auipc	ra,0x1
    80007480:	e40080e7          	jalr	-448(ra) # 800082bc <acquire>
    80007484:	02048c63          	beqz	s1,800074bc <consoleintr+0x68>
    80007488:	0a092783          	lw	a5,160(s2)
    8000748c:	09892703          	lw	a4,152(s2)
    80007490:	07f00693          	li	a3,127
    80007494:	40e7873b          	subw	a4,a5,a4
    80007498:	02e6e263          	bltu	a3,a4,800074bc <consoleintr+0x68>
    8000749c:	00d00713          	li	a4,13
    800074a0:	04e48063          	beq	s1,a4,800074e0 <consoleintr+0x8c>
    800074a4:	07f7f713          	andi	a4,a5,127
    800074a8:	00e90733          	add	a4,s2,a4
    800074ac:	0017879b          	addiw	a5,a5,1
    800074b0:	0af92023          	sw	a5,160(s2)
    800074b4:	00970c23          	sb	s1,24(a4)
    800074b8:	08f92e23          	sw	a5,156(s2)
    800074bc:	01013403          	ld	s0,16(sp)
    800074c0:	01813083          	ld	ra,24(sp)
    800074c4:	00813483          	ld	s1,8(sp)
    800074c8:	00013903          	ld	s2,0(sp)
    800074cc:	00005517          	auipc	a0,0x5
    800074d0:	4ec50513          	addi	a0,a0,1260 # 8000c9b8 <cons>
    800074d4:	02010113          	addi	sp,sp,32
    800074d8:	00001317          	auipc	t1,0x1
    800074dc:	eb030067          	jr	-336(t1) # 80008388 <release>
    800074e0:	00a00493          	li	s1,10
    800074e4:	fc1ff06f          	j	800074a4 <consoleintr+0x50>

00000000800074e8 <consoleinit>:
    800074e8:	fe010113          	addi	sp,sp,-32
    800074ec:	00113c23          	sd	ra,24(sp)
    800074f0:	00813823          	sd	s0,16(sp)
    800074f4:	00913423          	sd	s1,8(sp)
    800074f8:	02010413          	addi	s0,sp,32
    800074fc:	00005497          	auipc	s1,0x5
    80007500:	4bc48493          	addi	s1,s1,1212 # 8000c9b8 <cons>
    80007504:	00048513          	mv	a0,s1
    80007508:	00002597          	auipc	a1,0x2
    8000750c:	14858593          	addi	a1,a1,328 # 80009650 <CONSOLE_STATUS+0x640>
    80007510:	00001097          	auipc	ra,0x1
    80007514:	d88080e7          	jalr	-632(ra) # 80008298 <initlock>
    80007518:	00000097          	auipc	ra,0x0
    8000751c:	7ac080e7          	jalr	1964(ra) # 80007cc4 <uartinit>
    80007520:	01813083          	ld	ra,24(sp)
    80007524:	01013403          	ld	s0,16(sp)
    80007528:	00000797          	auipc	a5,0x0
    8000752c:	d9c78793          	addi	a5,a5,-612 # 800072c4 <consoleread>
    80007530:	0af4bc23          	sd	a5,184(s1)
    80007534:	00000797          	auipc	a5,0x0
    80007538:	cec78793          	addi	a5,a5,-788 # 80007220 <consolewrite>
    8000753c:	0cf4b023          	sd	a5,192(s1)
    80007540:	00813483          	ld	s1,8(sp)
    80007544:	02010113          	addi	sp,sp,32
    80007548:	00008067          	ret

000000008000754c <console_read>:
    8000754c:	ff010113          	addi	sp,sp,-16
    80007550:	00813423          	sd	s0,8(sp)
    80007554:	01010413          	addi	s0,sp,16
    80007558:	00813403          	ld	s0,8(sp)
    8000755c:	00005317          	auipc	t1,0x5
    80007560:	51433303          	ld	t1,1300(t1) # 8000ca70 <devsw+0x10>
    80007564:	01010113          	addi	sp,sp,16
    80007568:	00030067          	jr	t1

000000008000756c <console_write>:
    8000756c:	ff010113          	addi	sp,sp,-16
    80007570:	00813423          	sd	s0,8(sp)
    80007574:	01010413          	addi	s0,sp,16
    80007578:	00813403          	ld	s0,8(sp)
    8000757c:	00005317          	auipc	t1,0x5
    80007580:	4fc33303          	ld	t1,1276(t1) # 8000ca78 <devsw+0x18>
    80007584:	01010113          	addi	sp,sp,16
    80007588:	00030067          	jr	t1

000000008000758c <panic>:
    8000758c:	fe010113          	addi	sp,sp,-32
    80007590:	00113c23          	sd	ra,24(sp)
    80007594:	00813823          	sd	s0,16(sp)
    80007598:	00913423          	sd	s1,8(sp)
    8000759c:	02010413          	addi	s0,sp,32
    800075a0:	00050493          	mv	s1,a0
    800075a4:	00002517          	auipc	a0,0x2
    800075a8:	0b450513          	addi	a0,a0,180 # 80009658 <CONSOLE_STATUS+0x648>
    800075ac:	00005797          	auipc	a5,0x5
    800075b0:	5607a623          	sw	zero,1388(a5) # 8000cb18 <pr+0x18>
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	034080e7          	jalr	52(ra) # 800075e8 <__printf>
    800075bc:	00048513          	mv	a0,s1
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	028080e7          	jalr	40(ra) # 800075e8 <__printf>
    800075c8:	00002517          	auipc	a0,0x2
    800075cc:	b9850513          	addi	a0,a0,-1128 # 80009160 <CONSOLE_STATUS+0x150>
    800075d0:	00000097          	auipc	ra,0x0
    800075d4:	018080e7          	jalr	24(ra) # 800075e8 <__printf>
    800075d8:	00100793          	li	a5,1
    800075dc:	00004717          	auipc	a4,0x4
    800075e0:	20f72e23          	sw	a5,540(a4) # 8000b7f8 <panicked>
    800075e4:	0000006f          	j	800075e4 <panic+0x58>

00000000800075e8 <__printf>:
    800075e8:	f3010113          	addi	sp,sp,-208
    800075ec:	08813023          	sd	s0,128(sp)
    800075f0:	07313423          	sd	s3,104(sp)
    800075f4:	09010413          	addi	s0,sp,144
    800075f8:	05813023          	sd	s8,64(sp)
    800075fc:	08113423          	sd	ra,136(sp)
    80007600:	06913c23          	sd	s1,120(sp)
    80007604:	07213823          	sd	s2,112(sp)
    80007608:	07413023          	sd	s4,96(sp)
    8000760c:	05513c23          	sd	s5,88(sp)
    80007610:	05613823          	sd	s6,80(sp)
    80007614:	05713423          	sd	s7,72(sp)
    80007618:	03913c23          	sd	s9,56(sp)
    8000761c:	03a13823          	sd	s10,48(sp)
    80007620:	03b13423          	sd	s11,40(sp)
    80007624:	00005317          	auipc	t1,0x5
    80007628:	4dc30313          	addi	t1,t1,1244 # 8000cb00 <pr>
    8000762c:	01832c03          	lw	s8,24(t1)
    80007630:	00b43423          	sd	a1,8(s0)
    80007634:	00c43823          	sd	a2,16(s0)
    80007638:	00d43c23          	sd	a3,24(s0)
    8000763c:	02e43023          	sd	a4,32(s0)
    80007640:	02f43423          	sd	a5,40(s0)
    80007644:	03043823          	sd	a6,48(s0)
    80007648:	03143c23          	sd	a7,56(s0)
    8000764c:	00050993          	mv	s3,a0
    80007650:	4a0c1663          	bnez	s8,80007afc <__printf+0x514>
    80007654:	60098c63          	beqz	s3,80007c6c <__printf+0x684>
    80007658:	0009c503          	lbu	a0,0(s3)
    8000765c:	00840793          	addi	a5,s0,8
    80007660:	f6f43c23          	sd	a5,-136(s0)
    80007664:	00000493          	li	s1,0
    80007668:	22050063          	beqz	a0,80007888 <__printf+0x2a0>
    8000766c:	00002a37          	lui	s4,0x2
    80007670:	00018ab7          	lui	s5,0x18
    80007674:	000f4b37          	lui	s6,0xf4
    80007678:	00989bb7          	lui	s7,0x989
    8000767c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007680:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007684:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007688:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000768c:	00148c9b          	addiw	s9,s1,1
    80007690:	02500793          	li	a5,37
    80007694:	01998933          	add	s2,s3,s9
    80007698:	38f51263          	bne	a0,a5,80007a1c <__printf+0x434>
    8000769c:	00094783          	lbu	a5,0(s2)
    800076a0:	00078c9b          	sext.w	s9,a5
    800076a4:	1e078263          	beqz	a5,80007888 <__printf+0x2a0>
    800076a8:	0024849b          	addiw	s1,s1,2
    800076ac:	07000713          	li	a4,112
    800076b0:	00998933          	add	s2,s3,s1
    800076b4:	38e78a63          	beq	a5,a4,80007a48 <__printf+0x460>
    800076b8:	20f76863          	bltu	a4,a5,800078c8 <__printf+0x2e0>
    800076bc:	42a78863          	beq	a5,a0,80007aec <__printf+0x504>
    800076c0:	06400713          	li	a4,100
    800076c4:	40e79663          	bne	a5,a4,80007ad0 <__printf+0x4e8>
    800076c8:	f7843783          	ld	a5,-136(s0)
    800076cc:	0007a603          	lw	a2,0(a5)
    800076d0:	00878793          	addi	a5,a5,8
    800076d4:	f6f43c23          	sd	a5,-136(s0)
    800076d8:	42064a63          	bltz	a2,80007b0c <__printf+0x524>
    800076dc:	00a00713          	li	a4,10
    800076e0:	02e677bb          	remuw	a5,a2,a4
    800076e4:	00002d97          	auipc	s11,0x2
    800076e8:	f9cd8d93          	addi	s11,s11,-100 # 80009680 <digits>
    800076ec:	00900593          	li	a1,9
    800076f0:	0006051b          	sext.w	a0,a2
    800076f4:	00000c93          	li	s9,0
    800076f8:	02079793          	slli	a5,a5,0x20
    800076fc:	0207d793          	srli	a5,a5,0x20
    80007700:	00fd87b3          	add	a5,s11,a5
    80007704:	0007c783          	lbu	a5,0(a5)
    80007708:	02e656bb          	divuw	a3,a2,a4
    8000770c:	f8f40023          	sb	a5,-128(s0)
    80007710:	14c5d863          	bge	a1,a2,80007860 <__printf+0x278>
    80007714:	06300593          	li	a1,99
    80007718:	00100c93          	li	s9,1
    8000771c:	02e6f7bb          	remuw	a5,a3,a4
    80007720:	02079793          	slli	a5,a5,0x20
    80007724:	0207d793          	srli	a5,a5,0x20
    80007728:	00fd87b3          	add	a5,s11,a5
    8000772c:	0007c783          	lbu	a5,0(a5)
    80007730:	02e6d73b          	divuw	a4,a3,a4
    80007734:	f8f400a3          	sb	a5,-127(s0)
    80007738:	12a5f463          	bgeu	a1,a0,80007860 <__printf+0x278>
    8000773c:	00a00693          	li	a3,10
    80007740:	00900593          	li	a1,9
    80007744:	02d777bb          	remuw	a5,a4,a3
    80007748:	02079793          	slli	a5,a5,0x20
    8000774c:	0207d793          	srli	a5,a5,0x20
    80007750:	00fd87b3          	add	a5,s11,a5
    80007754:	0007c503          	lbu	a0,0(a5)
    80007758:	02d757bb          	divuw	a5,a4,a3
    8000775c:	f8a40123          	sb	a0,-126(s0)
    80007760:	48e5f263          	bgeu	a1,a4,80007be4 <__printf+0x5fc>
    80007764:	06300513          	li	a0,99
    80007768:	02d7f5bb          	remuw	a1,a5,a3
    8000776c:	02059593          	slli	a1,a1,0x20
    80007770:	0205d593          	srli	a1,a1,0x20
    80007774:	00bd85b3          	add	a1,s11,a1
    80007778:	0005c583          	lbu	a1,0(a1)
    8000777c:	02d7d7bb          	divuw	a5,a5,a3
    80007780:	f8b401a3          	sb	a1,-125(s0)
    80007784:	48e57263          	bgeu	a0,a4,80007c08 <__printf+0x620>
    80007788:	3e700513          	li	a0,999
    8000778c:	02d7f5bb          	remuw	a1,a5,a3
    80007790:	02059593          	slli	a1,a1,0x20
    80007794:	0205d593          	srli	a1,a1,0x20
    80007798:	00bd85b3          	add	a1,s11,a1
    8000779c:	0005c583          	lbu	a1,0(a1)
    800077a0:	02d7d7bb          	divuw	a5,a5,a3
    800077a4:	f8b40223          	sb	a1,-124(s0)
    800077a8:	46e57663          	bgeu	a0,a4,80007c14 <__printf+0x62c>
    800077ac:	02d7f5bb          	remuw	a1,a5,a3
    800077b0:	02059593          	slli	a1,a1,0x20
    800077b4:	0205d593          	srli	a1,a1,0x20
    800077b8:	00bd85b3          	add	a1,s11,a1
    800077bc:	0005c583          	lbu	a1,0(a1)
    800077c0:	02d7d7bb          	divuw	a5,a5,a3
    800077c4:	f8b402a3          	sb	a1,-123(s0)
    800077c8:	46ea7863          	bgeu	s4,a4,80007c38 <__printf+0x650>
    800077cc:	02d7f5bb          	remuw	a1,a5,a3
    800077d0:	02059593          	slli	a1,a1,0x20
    800077d4:	0205d593          	srli	a1,a1,0x20
    800077d8:	00bd85b3          	add	a1,s11,a1
    800077dc:	0005c583          	lbu	a1,0(a1)
    800077e0:	02d7d7bb          	divuw	a5,a5,a3
    800077e4:	f8b40323          	sb	a1,-122(s0)
    800077e8:	3eeaf863          	bgeu	s5,a4,80007bd8 <__printf+0x5f0>
    800077ec:	02d7f5bb          	remuw	a1,a5,a3
    800077f0:	02059593          	slli	a1,a1,0x20
    800077f4:	0205d593          	srli	a1,a1,0x20
    800077f8:	00bd85b3          	add	a1,s11,a1
    800077fc:	0005c583          	lbu	a1,0(a1)
    80007800:	02d7d7bb          	divuw	a5,a5,a3
    80007804:	f8b403a3          	sb	a1,-121(s0)
    80007808:	42eb7e63          	bgeu	s6,a4,80007c44 <__printf+0x65c>
    8000780c:	02d7f5bb          	remuw	a1,a5,a3
    80007810:	02059593          	slli	a1,a1,0x20
    80007814:	0205d593          	srli	a1,a1,0x20
    80007818:	00bd85b3          	add	a1,s11,a1
    8000781c:	0005c583          	lbu	a1,0(a1)
    80007820:	02d7d7bb          	divuw	a5,a5,a3
    80007824:	f8b40423          	sb	a1,-120(s0)
    80007828:	42ebfc63          	bgeu	s7,a4,80007c60 <__printf+0x678>
    8000782c:	02079793          	slli	a5,a5,0x20
    80007830:	0207d793          	srli	a5,a5,0x20
    80007834:	00fd8db3          	add	s11,s11,a5
    80007838:	000dc703          	lbu	a4,0(s11)
    8000783c:	00a00793          	li	a5,10
    80007840:	00900c93          	li	s9,9
    80007844:	f8e404a3          	sb	a4,-119(s0)
    80007848:	00065c63          	bgez	a2,80007860 <__printf+0x278>
    8000784c:	f9040713          	addi	a4,s0,-112
    80007850:	00f70733          	add	a4,a4,a5
    80007854:	02d00693          	li	a3,45
    80007858:	fed70823          	sb	a3,-16(a4)
    8000785c:	00078c93          	mv	s9,a5
    80007860:	f8040793          	addi	a5,s0,-128
    80007864:	01978cb3          	add	s9,a5,s9
    80007868:	f7f40d13          	addi	s10,s0,-129
    8000786c:	000cc503          	lbu	a0,0(s9)
    80007870:	fffc8c93          	addi	s9,s9,-1
    80007874:	00000097          	auipc	ra,0x0
    80007878:	b90080e7          	jalr	-1136(ra) # 80007404 <consputc>
    8000787c:	ffac98e3          	bne	s9,s10,8000786c <__printf+0x284>
    80007880:	00094503          	lbu	a0,0(s2)
    80007884:	e00514e3          	bnez	a0,8000768c <__printf+0xa4>
    80007888:	1a0c1663          	bnez	s8,80007a34 <__printf+0x44c>
    8000788c:	08813083          	ld	ra,136(sp)
    80007890:	08013403          	ld	s0,128(sp)
    80007894:	07813483          	ld	s1,120(sp)
    80007898:	07013903          	ld	s2,112(sp)
    8000789c:	06813983          	ld	s3,104(sp)
    800078a0:	06013a03          	ld	s4,96(sp)
    800078a4:	05813a83          	ld	s5,88(sp)
    800078a8:	05013b03          	ld	s6,80(sp)
    800078ac:	04813b83          	ld	s7,72(sp)
    800078b0:	04013c03          	ld	s8,64(sp)
    800078b4:	03813c83          	ld	s9,56(sp)
    800078b8:	03013d03          	ld	s10,48(sp)
    800078bc:	02813d83          	ld	s11,40(sp)
    800078c0:	0d010113          	addi	sp,sp,208
    800078c4:	00008067          	ret
    800078c8:	07300713          	li	a4,115
    800078cc:	1ce78a63          	beq	a5,a4,80007aa0 <__printf+0x4b8>
    800078d0:	07800713          	li	a4,120
    800078d4:	1ee79e63          	bne	a5,a4,80007ad0 <__printf+0x4e8>
    800078d8:	f7843783          	ld	a5,-136(s0)
    800078dc:	0007a703          	lw	a4,0(a5)
    800078e0:	00878793          	addi	a5,a5,8
    800078e4:	f6f43c23          	sd	a5,-136(s0)
    800078e8:	28074263          	bltz	a4,80007b6c <__printf+0x584>
    800078ec:	00002d97          	auipc	s11,0x2
    800078f0:	d94d8d93          	addi	s11,s11,-620 # 80009680 <digits>
    800078f4:	00f77793          	andi	a5,a4,15
    800078f8:	00fd87b3          	add	a5,s11,a5
    800078fc:	0007c683          	lbu	a3,0(a5)
    80007900:	00f00613          	li	a2,15
    80007904:	0007079b          	sext.w	a5,a4
    80007908:	f8d40023          	sb	a3,-128(s0)
    8000790c:	0047559b          	srliw	a1,a4,0x4
    80007910:	0047569b          	srliw	a3,a4,0x4
    80007914:	00000c93          	li	s9,0
    80007918:	0ee65063          	bge	a2,a4,800079f8 <__printf+0x410>
    8000791c:	00f6f693          	andi	a3,a3,15
    80007920:	00dd86b3          	add	a3,s11,a3
    80007924:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007928:	0087d79b          	srliw	a5,a5,0x8
    8000792c:	00100c93          	li	s9,1
    80007930:	f8d400a3          	sb	a3,-127(s0)
    80007934:	0cb67263          	bgeu	a2,a1,800079f8 <__printf+0x410>
    80007938:	00f7f693          	andi	a3,a5,15
    8000793c:	00dd86b3          	add	a3,s11,a3
    80007940:	0006c583          	lbu	a1,0(a3)
    80007944:	00f00613          	li	a2,15
    80007948:	0047d69b          	srliw	a3,a5,0x4
    8000794c:	f8b40123          	sb	a1,-126(s0)
    80007950:	0047d593          	srli	a1,a5,0x4
    80007954:	28f67e63          	bgeu	a2,a5,80007bf0 <__printf+0x608>
    80007958:	00f6f693          	andi	a3,a3,15
    8000795c:	00dd86b3          	add	a3,s11,a3
    80007960:	0006c503          	lbu	a0,0(a3)
    80007964:	0087d813          	srli	a6,a5,0x8
    80007968:	0087d69b          	srliw	a3,a5,0x8
    8000796c:	f8a401a3          	sb	a0,-125(s0)
    80007970:	28b67663          	bgeu	a2,a1,80007bfc <__printf+0x614>
    80007974:	00f6f693          	andi	a3,a3,15
    80007978:	00dd86b3          	add	a3,s11,a3
    8000797c:	0006c583          	lbu	a1,0(a3)
    80007980:	00c7d513          	srli	a0,a5,0xc
    80007984:	00c7d69b          	srliw	a3,a5,0xc
    80007988:	f8b40223          	sb	a1,-124(s0)
    8000798c:	29067a63          	bgeu	a2,a6,80007c20 <__printf+0x638>
    80007990:	00f6f693          	andi	a3,a3,15
    80007994:	00dd86b3          	add	a3,s11,a3
    80007998:	0006c583          	lbu	a1,0(a3)
    8000799c:	0107d813          	srli	a6,a5,0x10
    800079a0:	0107d69b          	srliw	a3,a5,0x10
    800079a4:	f8b402a3          	sb	a1,-123(s0)
    800079a8:	28a67263          	bgeu	a2,a0,80007c2c <__printf+0x644>
    800079ac:	00f6f693          	andi	a3,a3,15
    800079b0:	00dd86b3          	add	a3,s11,a3
    800079b4:	0006c683          	lbu	a3,0(a3)
    800079b8:	0147d79b          	srliw	a5,a5,0x14
    800079bc:	f8d40323          	sb	a3,-122(s0)
    800079c0:	21067663          	bgeu	a2,a6,80007bcc <__printf+0x5e4>
    800079c4:	02079793          	slli	a5,a5,0x20
    800079c8:	0207d793          	srli	a5,a5,0x20
    800079cc:	00fd8db3          	add	s11,s11,a5
    800079d0:	000dc683          	lbu	a3,0(s11)
    800079d4:	00800793          	li	a5,8
    800079d8:	00700c93          	li	s9,7
    800079dc:	f8d403a3          	sb	a3,-121(s0)
    800079e0:	00075c63          	bgez	a4,800079f8 <__printf+0x410>
    800079e4:	f9040713          	addi	a4,s0,-112
    800079e8:	00f70733          	add	a4,a4,a5
    800079ec:	02d00693          	li	a3,45
    800079f0:	fed70823          	sb	a3,-16(a4)
    800079f4:	00078c93          	mv	s9,a5
    800079f8:	f8040793          	addi	a5,s0,-128
    800079fc:	01978cb3          	add	s9,a5,s9
    80007a00:	f7f40d13          	addi	s10,s0,-129
    80007a04:	000cc503          	lbu	a0,0(s9)
    80007a08:	fffc8c93          	addi	s9,s9,-1
    80007a0c:	00000097          	auipc	ra,0x0
    80007a10:	9f8080e7          	jalr	-1544(ra) # 80007404 <consputc>
    80007a14:	ff9d18e3          	bne	s10,s9,80007a04 <__printf+0x41c>
    80007a18:	0100006f          	j	80007a28 <__printf+0x440>
    80007a1c:	00000097          	auipc	ra,0x0
    80007a20:	9e8080e7          	jalr	-1560(ra) # 80007404 <consputc>
    80007a24:	000c8493          	mv	s1,s9
    80007a28:	00094503          	lbu	a0,0(s2)
    80007a2c:	c60510e3          	bnez	a0,8000768c <__printf+0xa4>
    80007a30:	e40c0ee3          	beqz	s8,8000788c <__printf+0x2a4>
    80007a34:	00005517          	auipc	a0,0x5
    80007a38:	0cc50513          	addi	a0,a0,204 # 8000cb00 <pr>
    80007a3c:	00001097          	auipc	ra,0x1
    80007a40:	94c080e7          	jalr	-1716(ra) # 80008388 <release>
    80007a44:	e49ff06f          	j	8000788c <__printf+0x2a4>
    80007a48:	f7843783          	ld	a5,-136(s0)
    80007a4c:	03000513          	li	a0,48
    80007a50:	01000d13          	li	s10,16
    80007a54:	00878713          	addi	a4,a5,8
    80007a58:	0007bc83          	ld	s9,0(a5)
    80007a5c:	f6e43c23          	sd	a4,-136(s0)
    80007a60:	00000097          	auipc	ra,0x0
    80007a64:	9a4080e7          	jalr	-1628(ra) # 80007404 <consputc>
    80007a68:	07800513          	li	a0,120
    80007a6c:	00000097          	auipc	ra,0x0
    80007a70:	998080e7          	jalr	-1640(ra) # 80007404 <consputc>
    80007a74:	00002d97          	auipc	s11,0x2
    80007a78:	c0cd8d93          	addi	s11,s11,-1012 # 80009680 <digits>
    80007a7c:	03ccd793          	srli	a5,s9,0x3c
    80007a80:	00fd87b3          	add	a5,s11,a5
    80007a84:	0007c503          	lbu	a0,0(a5)
    80007a88:	fffd0d1b          	addiw	s10,s10,-1
    80007a8c:	004c9c93          	slli	s9,s9,0x4
    80007a90:	00000097          	auipc	ra,0x0
    80007a94:	974080e7          	jalr	-1676(ra) # 80007404 <consputc>
    80007a98:	fe0d12e3          	bnez	s10,80007a7c <__printf+0x494>
    80007a9c:	f8dff06f          	j	80007a28 <__printf+0x440>
    80007aa0:	f7843783          	ld	a5,-136(s0)
    80007aa4:	0007bc83          	ld	s9,0(a5)
    80007aa8:	00878793          	addi	a5,a5,8
    80007aac:	f6f43c23          	sd	a5,-136(s0)
    80007ab0:	000c9a63          	bnez	s9,80007ac4 <__printf+0x4dc>
    80007ab4:	1080006f          	j	80007bbc <__printf+0x5d4>
    80007ab8:	001c8c93          	addi	s9,s9,1
    80007abc:	00000097          	auipc	ra,0x0
    80007ac0:	948080e7          	jalr	-1720(ra) # 80007404 <consputc>
    80007ac4:	000cc503          	lbu	a0,0(s9)
    80007ac8:	fe0518e3          	bnez	a0,80007ab8 <__printf+0x4d0>
    80007acc:	f5dff06f          	j	80007a28 <__printf+0x440>
    80007ad0:	02500513          	li	a0,37
    80007ad4:	00000097          	auipc	ra,0x0
    80007ad8:	930080e7          	jalr	-1744(ra) # 80007404 <consputc>
    80007adc:	000c8513          	mv	a0,s9
    80007ae0:	00000097          	auipc	ra,0x0
    80007ae4:	924080e7          	jalr	-1756(ra) # 80007404 <consputc>
    80007ae8:	f41ff06f          	j	80007a28 <__printf+0x440>
    80007aec:	02500513          	li	a0,37
    80007af0:	00000097          	auipc	ra,0x0
    80007af4:	914080e7          	jalr	-1772(ra) # 80007404 <consputc>
    80007af8:	f31ff06f          	j	80007a28 <__printf+0x440>
    80007afc:	00030513          	mv	a0,t1
    80007b00:	00000097          	auipc	ra,0x0
    80007b04:	7bc080e7          	jalr	1980(ra) # 800082bc <acquire>
    80007b08:	b4dff06f          	j	80007654 <__printf+0x6c>
    80007b0c:	40c0053b          	negw	a0,a2
    80007b10:	00a00713          	li	a4,10
    80007b14:	02e576bb          	remuw	a3,a0,a4
    80007b18:	00002d97          	auipc	s11,0x2
    80007b1c:	b68d8d93          	addi	s11,s11,-1176 # 80009680 <digits>
    80007b20:	ff700593          	li	a1,-9
    80007b24:	02069693          	slli	a3,a3,0x20
    80007b28:	0206d693          	srli	a3,a3,0x20
    80007b2c:	00dd86b3          	add	a3,s11,a3
    80007b30:	0006c683          	lbu	a3,0(a3)
    80007b34:	02e557bb          	divuw	a5,a0,a4
    80007b38:	f8d40023          	sb	a3,-128(s0)
    80007b3c:	10b65e63          	bge	a2,a1,80007c58 <__printf+0x670>
    80007b40:	06300593          	li	a1,99
    80007b44:	02e7f6bb          	remuw	a3,a5,a4
    80007b48:	02069693          	slli	a3,a3,0x20
    80007b4c:	0206d693          	srli	a3,a3,0x20
    80007b50:	00dd86b3          	add	a3,s11,a3
    80007b54:	0006c683          	lbu	a3,0(a3)
    80007b58:	02e7d73b          	divuw	a4,a5,a4
    80007b5c:	00200793          	li	a5,2
    80007b60:	f8d400a3          	sb	a3,-127(s0)
    80007b64:	bca5ece3          	bltu	a1,a0,8000773c <__printf+0x154>
    80007b68:	ce5ff06f          	j	8000784c <__printf+0x264>
    80007b6c:	40e007bb          	negw	a5,a4
    80007b70:	00002d97          	auipc	s11,0x2
    80007b74:	b10d8d93          	addi	s11,s11,-1264 # 80009680 <digits>
    80007b78:	00f7f693          	andi	a3,a5,15
    80007b7c:	00dd86b3          	add	a3,s11,a3
    80007b80:	0006c583          	lbu	a1,0(a3)
    80007b84:	ff100613          	li	a2,-15
    80007b88:	0047d69b          	srliw	a3,a5,0x4
    80007b8c:	f8b40023          	sb	a1,-128(s0)
    80007b90:	0047d59b          	srliw	a1,a5,0x4
    80007b94:	0ac75e63          	bge	a4,a2,80007c50 <__printf+0x668>
    80007b98:	00f6f693          	andi	a3,a3,15
    80007b9c:	00dd86b3          	add	a3,s11,a3
    80007ba0:	0006c603          	lbu	a2,0(a3)
    80007ba4:	00f00693          	li	a3,15
    80007ba8:	0087d79b          	srliw	a5,a5,0x8
    80007bac:	f8c400a3          	sb	a2,-127(s0)
    80007bb0:	d8b6e4e3          	bltu	a3,a1,80007938 <__printf+0x350>
    80007bb4:	00200793          	li	a5,2
    80007bb8:	e2dff06f          	j	800079e4 <__printf+0x3fc>
    80007bbc:	00002c97          	auipc	s9,0x2
    80007bc0:	aa4c8c93          	addi	s9,s9,-1372 # 80009660 <CONSOLE_STATUS+0x650>
    80007bc4:	02800513          	li	a0,40
    80007bc8:	ef1ff06f          	j	80007ab8 <__printf+0x4d0>
    80007bcc:	00700793          	li	a5,7
    80007bd0:	00600c93          	li	s9,6
    80007bd4:	e0dff06f          	j	800079e0 <__printf+0x3f8>
    80007bd8:	00700793          	li	a5,7
    80007bdc:	00600c93          	li	s9,6
    80007be0:	c69ff06f          	j	80007848 <__printf+0x260>
    80007be4:	00300793          	li	a5,3
    80007be8:	00200c93          	li	s9,2
    80007bec:	c5dff06f          	j	80007848 <__printf+0x260>
    80007bf0:	00300793          	li	a5,3
    80007bf4:	00200c93          	li	s9,2
    80007bf8:	de9ff06f          	j	800079e0 <__printf+0x3f8>
    80007bfc:	00400793          	li	a5,4
    80007c00:	00300c93          	li	s9,3
    80007c04:	dddff06f          	j	800079e0 <__printf+0x3f8>
    80007c08:	00400793          	li	a5,4
    80007c0c:	00300c93          	li	s9,3
    80007c10:	c39ff06f          	j	80007848 <__printf+0x260>
    80007c14:	00500793          	li	a5,5
    80007c18:	00400c93          	li	s9,4
    80007c1c:	c2dff06f          	j	80007848 <__printf+0x260>
    80007c20:	00500793          	li	a5,5
    80007c24:	00400c93          	li	s9,4
    80007c28:	db9ff06f          	j	800079e0 <__printf+0x3f8>
    80007c2c:	00600793          	li	a5,6
    80007c30:	00500c93          	li	s9,5
    80007c34:	dadff06f          	j	800079e0 <__printf+0x3f8>
    80007c38:	00600793          	li	a5,6
    80007c3c:	00500c93          	li	s9,5
    80007c40:	c09ff06f          	j	80007848 <__printf+0x260>
    80007c44:	00800793          	li	a5,8
    80007c48:	00700c93          	li	s9,7
    80007c4c:	bfdff06f          	j	80007848 <__printf+0x260>
    80007c50:	00100793          	li	a5,1
    80007c54:	d91ff06f          	j	800079e4 <__printf+0x3fc>
    80007c58:	00100793          	li	a5,1
    80007c5c:	bf1ff06f          	j	8000784c <__printf+0x264>
    80007c60:	00900793          	li	a5,9
    80007c64:	00800c93          	li	s9,8
    80007c68:	be1ff06f          	j	80007848 <__printf+0x260>
    80007c6c:	00002517          	auipc	a0,0x2
    80007c70:	9fc50513          	addi	a0,a0,-1540 # 80009668 <CONSOLE_STATUS+0x658>
    80007c74:	00000097          	auipc	ra,0x0
    80007c78:	918080e7          	jalr	-1768(ra) # 8000758c <panic>

0000000080007c7c <printfinit>:
    80007c7c:	fe010113          	addi	sp,sp,-32
    80007c80:	00813823          	sd	s0,16(sp)
    80007c84:	00913423          	sd	s1,8(sp)
    80007c88:	00113c23          	sd	ra,24(sp)
    80007c8c:	02010413          	addi	s0,sp,32
    80007c90:	00005497          	auipc	s1,0x5
    80007c94:	e7048493          	addi	s1,s1,-400 # 8000cb00 <pr>
    80007c98:	00048513          	mv	a0,s1
    80007c9c:	00002597          	auipc	a1,0x2
    80007ca0:	9dc58593          	addi	a1,a1,-1572 # 80009678 <CONSOLE_STATUS+0x668>
    80007ca4:	00000097          	auipc	ra,0x0
    80007ca8:	5f4080e7          	jalr	1524(ra) # 80008298 <initlock>
    80007cac:	01813083          	ld	ra,24(sp)
    80007cb0:	01013403          	ld	s0,16(sp)
    80007cb4:	0004ac23          	sw	zero,24(s1)
    80007cb8:	00813483          	ld	s1,8(sp)
    80007cbc:	02010113          	addi	sp,sp,32
    80007cc0:	00008067          	ret

0000000080007cc4 <uartinit>:
    80007cc4:	ff010113          	addi	sp,sp,-16
    80007cc8:	00813423          	sd	s0,8(sp)
    80007ccc:	01010413          	addi	s0,sp,16
    80007cd0:	100007b7          	lui	a5,0x10000
    80007cd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007cd8:	f8000713          	li	a4,-128
    80007cdc:	00e781a3          	sb	a4,3(a5)
    80007ce0:	00300713          	li	a4,3
    80007ce4:	00e78023          	sb	a4,0(a5)
    80007ce8:	000780a3          	sb	zero,1(a5)
    80007cec:	00e781a3          	sb	a4,3(a5)
    80007cf0:	00700693          	li	a3,7
    80007cf4:	00d78123          	sb	a3,2(a5)
    80007cf8:	00e780a3          	sb	a4,1(a5)
    80007cfc:	00813403          	ld	s0,8(sp)
    80007d00:	01010113          	addi	sp,sp,16
    80007d04:	00008067          	ret

0000000080007d08 <uartputc>:
    80007d08:	00004797          	auipc	a5,0x4
    80007d0c:	af07a783          	lw	a5,-1296(a5) # 8000b7f8 <panicked>
    80007d10:	00078463          	beqz	a5,80007d18 <uartputc+0x10>
    80007d14:	0000006f          	j	80007d14 <uartputc+0xc>
    80007d18:	fd010113          	addi	sp,sp,-48
    80007d1c:	02813023          	sd	s0,32(sp)
    80007d20:	00913c23          	sd	s1,24(sp)
    80007d24:	01213823          	sd	s2,16(sp)
    80007d28:	01313423          	sd	s3,8(sp)
    80007d2c:	02113423          	sd	ra,40(sp)
    80007d30:	03010413          	addi	s0,sp,48
    80007d34:	00004917          	auipc	s2,0x4
    80007d38:	acc90913          	addi	s2,s2,-1332 # 8000b800 <uart_tx_r>
    80007d3c:	00093783          	ld	a5,0(s2)
    80007d40:	00004497          	auipc	s1,0x4
    80007d44:	ac848493          	addi	s1,s1,-1336 # 8000b808 <uart_tx_w>
    80007d48:	0004b703          	ld	a4,0(s1)
    80007d4c:	02078693          	addi	a3,a5,32
    80007d50:	00050993          	mv	s3,a0
    80007d54:	02e69c63          	bne	a3,a4,80007d8c <uartputc+0x84>
    80007d58:	00001097          	auipc	ra,0x1
    80007d5c:	834080e7          	jalr	-1996(ra) # 8000858c <push_on>
    80007d60:	00093783          	ld	a5,0(s2)
    80007d64:	0004b703          	ld	a4,0(s1)
    80007d68:	02078793          	addi	a5,a5,32
    80007d6c:	00e79463          	bne	a5,a4,80007d74 <uartputc+0x6c>
    80007d70:	0000006f          	j	80007d70 <uartputc+0x68>
    80007d74:	00001097          	auipc	ra,0x1
    80007d78:	88c080e7          	jalr	-1908(ra) # 80008600 <pop_on>
    80007d7c:	00093783          	ld	a5,0(s2)
    80007d80:	0004b703          	ld	a4,0(s1)
    80007d84:	02078693          	addi	a3,a5,32
    80007d88:	fce688e3          	beq	a3,a4,80007d58 <uartputc+0x50>
    80007d8c:	01f77693          	andi	a3,a4,31
    80007d90:	00005597          	auipc	a1,0x5
    80007d94:	d9058593          	addi	a1,a1,-624 # 8000cb20 <uart_tx_buf>
    80007d98:	00d586b3          	add	a3,a1,a3
    80007d9c:	00170713          	addi	a4,a4,1
    80007da0:	01368023          	sb	s3,0(a3)
    80007da4:	00e4b023          	sd	a4,0(s1)
    80007da8:	10000637          	lui	a2,0x10000
    80007dac:	02f71063          	bne	a4,a5,80007dcc <uartputc+0xc4>
    80007db0:	0340006f          	j	80007de4 <uartputc+0xdc>
    80007db4:	00074703          	lbu	a4,0(a4)
    80007db8:	00f93023          	sd	a5,0(s2)
    80007dbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007dc0:	00093783          	ld	a5,0(s2)
    80007dc4:	0004b703          	ld	a4,0(s1)
    80007dc8:	00f70e63          	beq	a4,a5,80007de4 <uartputc+0xdc>
    80007dcc:	00564683          	lbu	a3,5(a2)
    80007dd0:	01f7f713          	andi	a4,a5,31
    80007dd4:	00e58733          	add	a4,a1,a4
    80007dd8:	0206f693          	andi	a3,a3,32
    80007ddc:	00178793          	addi	a5,a5,1
    80007de0:	fc069ae3          	bnez	a3,80007db4 <uartputc+0xac>
    80007de4:	02813083          	ld	ra,40(sp)
    80007de8:	02013403          	ld	s0,32(sp)
    80007dec:	01813483          	ld	s1,24(sp)
    80007df0:	01013903          	ld	s2,16(sp)
    80007df4:	00813983          	ld	s3,8(sp)
    80007df8:	03010113          	addi	sp,sp,48
    80007dfc:	00008067          	ret

0000000080007e00 <uartputc_sync>:
    80007e00:	ff010113          	addi	sp,sp,-16
    80007e04:	00813423          	sd	s0,8(sp)
    80007e08:	01010413          	addi	s0,sp,16
    80007e0c:	00004717          	auipc	a4,0x4
    80007e10:	9ec72703          	lw	a4,-1556(a4) # 8000b7f8 <panicked>
    80007e14:	02071663          	bnez	a4,80007e40 <uartputc_sync+0x40>
    80007e18:	00050793          	mv	a5,a0
    80007e1c:	100006b7          	lui	a3,0x10000
    80007e20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007e24:	02077713          	andi	a4,a4,32
    80007e28:	fe070ce3          	beqz	a4,80007e20 <uartputc_sync+0x20>
    80007e2c:	0ff7f793          	andi	a5,a5,255
    80007e30:	00f68023          	sb	a5,0(a3)
    80007e34:	00813403          	ld	s0,8(sp)
    80007e38:	01010113          	addi	sp,sp,16
    80007e3c:	00008067          	ret
    80007e40:	0000006f          	j	80007e40 <uartputc_sync+0x40>

0000000080007e44 <uartstart>:
    80007e44:	ff010113          	addi	sp,sp,-16
    80007e48:	00813423          	sd	s0,8(sp)
    80007e4c:	01010413          	addi	s0,sp,16
    80007e50:	00004617          	auipc	a2,0x4
    80007e54:	9b060613          	addi	a2,a2,-1616 # 8000b800 <uart_tx_r>
    80007e58:	00004517          	auipc	a0,0x4
    80007e5c:	9b050513          	addi	a0,a0,-1616 # 8000b808 <uart_tx_w>
    80007e60:	00063783          	ld	a5,0(a2)
    80007e64:	00053703          	ld	a4,0(a0)
    80007e68:	04f70263          	beq	a4,a5,80007eac <uartstart+0x68>
    80007e6c:	100005b7          	lui	a1,0x10000
    80007e70:	00005817          	auipc	a6,0x5
    80007e74:	cb080813          	addi	a6,a6,-848 # 8000cb20 <uart_tx_buf>
    80007e78:	01c0006f          	j	80007e94 <uartstart+0x50>
    80007e7c:	0006c703          	lbu	a4,0(a3)
    80007e80:	00f63023          	sd	a5,0(a2)
    80007e84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007e88:	00063783          	ld	a5,0(a2)
    80007e8c:	00053703          	ld	a4,0(a0)
    80007e90:	00f70e63          	beq	a4,a5,80007eac <uartstart+0x68>
    80007e94:	01f7f713          	andi	a4,a5,31
    80007e98:	00e806b3          	add	a3,a6,a4
    80007e9c:	0055c703          	lbu	a4,5(a1)
    80007ea0:	00178793          	addi	a5,a5,1
    80007ea4:	02077713          	andi	a4,a4,32
    80007ea8:	fc071ae3          	bnez	a4,80007e7c <uartstart+0x38>
    80007eac:	00813403          	ld	s0,8(sp)
    80007eb0:	01010113          	addi	sp,sp,16
    80007eb4:	00008067          	ret

0000000080007eb8 <uartgetc>:
    80007eb8:	ff010113          	addi	sp,sp,-16
    80007ebc:	00813423          	sd	s0,8(sp)
    80007ec0:	01010413          	addi	s0,sp,16
    80007ec4:	10000737          	lui	a4,0x10000
    80007ec8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007ecc:	0017f793          	andi	a5,a5,1
    80007ed0:	00078c63          	beqz	a5,80007ee8 <uartgetc+0x30>
    80007ed4:	00074503          	lbu	a0,0(a4)
    80007ed8:	0ff57513          	andi	a0,a0,255
    80007edc:	00813403          	ld	s0,8(sp)
    80007ee0:	01010113          	addi	sp,sp,16
    80007ee4:	00008067          	ret
    80007ee8:	fff00513          	li	a0,-1
    80007eec:	ff1ff06f          	j	80007edc <uartgetc+0x24>

0000000080007ef0 <uartintr>:
    80007ef0:	100007b7          	lui	a5,0x10000
    80007ef4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ef8:	0017f793          	andi	a5,a5,1
    80007efc:	0a078463          	beqz	a5,80007fa4 <uartintr+0xb4>
    80007f00:	fe010113          	addi	sp,sp,-32
    80007f04:	00813823          	sd	s0,16(sp)
    80007f08:	00913423          	sd	s1,8(sp)
    80007f0c:	00113c23          	sd	ra,24(sp)
    80007f10:	02010413          	addi	s0,sp,32
    80007f14:	100004b7          	lui	s1,0x10000
    80007f18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007f1c:	0ff57513          	andi	a0,a0,255
    80007f20:	fffff097          	auipc	ra,0xfffff
    80007f24:	534080e7          	jalr	1332(ra) # 80007454 <consoleintr>
    80007f28:	0054c783          	lbu	a5,5(s1)
    80007f2c:	0017f793          	andi	a5,a5,1
    80007f30:	fe0794e3          	bnez	a5,80007f18 <uartintr+0x28>
    80007f34:	00004617          	auipc	a2,0x4
    80007f38:	8cc60613          	addi	a2,a2,-1844 # 8000b800 <uart_tx_r>
    80007f3c:	00004517          	auipc	a0,0x4
    80007f40:	8cc50513          	addi	a0,a0,-1844 # 8000b808 <uart_tx_w>
    80007f44:	00063783          	ld	a5,0(a2)
    80007f48:	00053703          	ld	a4,0(a0)
    80007f4c:	04f70263          	beq	a4,a5,80007f90 <uartintr+0xa0>
    80007f50:	100005b7          	lui	a1,0x10000
    80007f54:	00005817          	auipc	a6,0x5
    80007f58:	bcc80813          	addi	a6,a6,-1076 # 8000cb20 <uart_tx_buf>
    80007f5c:	01c0006f          	j	80007f78 <uartintr+0x88>
    80007f60:	0006c703          	lbu	a4,0(a3)
    80007f64:	00f63023          	sd	a5,0(a2)
    80007f68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f6c:	00063783          	ld	a5,0(a2)
    80007f70:	00053703          	ld	a4,0(a0)
    80007f74:	00f70e63          	beq	a4,a5,80007f90 <uartintr+0xa0>
    80007f78:	01f7f713          	andi	a4,a5,31
    80007f7c:	00e806b3          	add	a3,a6,a4
    80007f80:	0055c703          	lbu	a4,5(a1)
    80007f84:	00178793          	addi	a5,a5,1
    80007f88:	02077713          	andi	a4,a4,32
    80007f8c:	fc071ae3          	bnez	a4,80007f60 <uartintr+0x70>
    80007f90:	01813083          	ld	ra,24(sp)
    80007f94:	01013403          	ld	s0,16(sp)
    80007f98:	00813483          	ld	s1,8(sp)
    80007f9c:	02010113          	addi	sp,sp,32
    80007fa0:	00008067          	ret
    80007fa4:	00004617          	auipc	a2,0x4
    80007fa8:	85c60613          	addi	a2,a2,-1956 # 8000b800 <uart_tx_r>
    80007fac:	00004517          	auipc	a0,0x4
    80007fb0:	85c50513          	addi	a0,a0,-1956 # 8000b808 <uart_tx_w>
    80007fb4:	00063783          	ld	a5,0(a2)
    80007fb8:	00053703          	ld	a4,0(a0)
    80007fbc:	04f70263          	beq	a4,a5,80008000 <uartintr+0x110>
    80007fc0:	100005b7          	lui	a1,0x10000
    80007fc4:	00005817          	auipc	a6,0x5
    80007fc8:	b5c80813          	addi	a6,a6,-1188 # 8000cb20 <uart_tx_buf>
    80007fcc:	01c0006f          	j	80007fe8 <uartintr+0xf8>
    80007fd0:	0006c703          	lbu	a4,0(a3)
    80007fd4:	00f63023          	sd	a5,0(a2)
    80007fd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fdc:	00063783          	ld	a5,0(a2)
    80007fe0:	00053703          	ld	a4,0(a0)
    80007fe4:	02f70063          	beq	a4,a5,80008004 <uartintr+0x114>
    80007fe8:	01f7f713          	andi	a4,a5,31
    80007fec:	00e806b3          	add	a3,a6,a4
    80007ff0:	0055c703          	lbu	a4,5(a1)
    80007ff4:	00178793          	addi	a5,a5,1
    80007ff8:	02077713          	andi	a4,a4,32
    80007ffc:	fc071ae3          	bnez	a4,80007fd0 <uartintr+0xe0>
    80008000:	00008067          	ret
    80008004:	00008067          	ret

0000000080008008 <kinit>:
    80008008:	fc010113          	addi	sp,sp,-64
    8000800c:	02913423          	sd	s1,40(sp)
    80008010:	fffff7b7          	lui	a5,0xfffff
    80008014:	00006497          	auipc	s1,0x6
    80008018:	b2b48493          	addi	s1,s1,-1237 # 8000db3f <end+0xfff>
    8000801c:	02813823          	sd	s0,48(sp)
    80008020:	01313c23          	sd	s3,24(sp)
    80008024:	00f4f4b3          	and	s1,s1,a5
    80008028:	02113c23          	sd	ra,56(sp)
    8000802c:	03213023          	sd	s2,32(sp)
    80008030:	01413823          	sd	s4,16(sp)
    80008034:	01513423          	sd	s5,8(sp)
    80008038:	04010413          	addi	s0,sp,64
    8000803c:	000017b7          	lui	a5,0x1
    80008040:	01100993          	li	s3,17
    80008044:	00f487b3          	add	a5,s1,a5
    80008048:	01b99993          	slli	s3,s3,0x1b
    8000804c:	06f9e063          	bltu	s3,a5,800080ac <kinit+0xa4>
    80008050:	00005a97          	auipc	s5,0x5
    80008054:	af0a8a93          	addi	s5,s5,-1296 # 8000cb40 <end>
    80008058:	0754ec63          	bltu	s1,s5,800080d0 <kinit+0xc8>
    8000805c:	0734fa63          	bgeu	s1,s3,800080d0 <kinit+0xc8>
    80008060:	00088a37          	lui	s4,0x88
    80008064:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008068:	00003917          	auipc	s2,0x3
    8000806c:	7a890913          	addi	s2,s2,1960 # 8000b810 <kmem>
    80008070:	00ca1a13          	slli	s4,s4,0xc
    80008074:	0140006f          	j	80008088 <kinit+0x80>
    80008078:	000017b7          	lui	a5,0x1
    8000807c:	00f484b3          	add	s1,s1,a5
    80008080:	0554e863          	bltu	s1,s5,800080d0 <kinit+0xc8>
    80008084:	0534f663          	bgeu	s1,s3,800080d0 <kinit+0xc8>
    80008088:	00001637          	lui	a2,0x1
    8000808c:	00100593          	li	a1,1
    80008090:	00048513          	mv	a0,s1
    80008094:	00000097          	auipc	ra,0x0
    80008098:	5e4080e7          	jalr	1508(ra) # 80008678 <__memset>
    8000809c:	00093783          	ld	a5,0(s2)
    800080a0:	00f4b023          	sd	a5,0(s1)
    800080a4:	00993023          	sd	s1,0(s2)
    800080a8:	fd4498e3          	bne	s1,s4,80008078 <kinit+0x70>
    800080ac:	03813083          	ld	ra,56(sp)
    800080b0:	03013403          	ld	s0,48(sp)
    800080b4:	02813483          	ld	s1,40(sp)
    800080b8:	02013903          	ld	s2,32(sp)
    800080bc:	01813983          	ld	s3,24(sp)
    800080c0:	01013a03          	ld	s4,16(sp)
    800080c4:	00813a83          	ld	s5,8(sp)
    800080c8:	04010113          	addi	sp,sp,64
    800080cc:	00008067          	ret
    800080d0:	00001517          	auipc	a0,0x1
    800080d4:	5c850513          	addi	a0,a0,1480 # 80009698 <digits+0x18>
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	4b4080e7          	jalr	1204(ra) # 8000758c <panic>

00000000800080e0 <freerange>:
    800080e0:	fc010113          	addi	sp,sp,-64
    800080e4:	000017b7          	lui	a5,0x1
    800080e8:	02913423          	sd	s1,40(sp)
    800080ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800080f0:	009504b3          	add	s1,a0,s1
    800080f4:	fffff537          	lui	a0,0xfffff
    800080f8:	02813823          	sd	s0,48(sp)
    800080fc:	02113c23          	sd	ra,56(sp)
    80008100:	03213023          	sd	s2,32(sp)
    80008104:	01313c23          	sd	s3,24(sp)
    80008108:	01413823          	sd	s4,16(sp)
    8000810c:	01513423          	sd	s5,8(sp)
    80008110:	01613023          	sd	s6,0(sp)
    80008114:	04010413          	addi	s0,sp,64
    80008118:	00a4f4b3          	and	s1,s1,a0
    8000811c:	00f487b3          	add	a5,s1,a5
    80008120:	06f5e463          	bltu	a1,a5,80008188 <freerange+0xa8>
    80008124:	00005a97          	auipc	s5,0x5
    80008128:	a1ca8a93          	addi	s5,s5,-1508 # 8000cb40 <end>
    8000812c:	0954e263          	bltu	s1,s5,800081b0 <freerange+0xd0>
    80008130:	01100993          	li	s3,17
    80008134:	01b99993          	slli	s3,s3,0x1b
    80008138:	0734fc63          	bgeu	s1,s3,800081b0 <freerange+0xd0>
    8000813c:	00058a13          	mv	s4,a1
    80008140:	00003917          	auipc	s2,0x3
    80008144:	6d090913          	addi	s2,s2,1744 # 8000b810 <kmem>
    80008148:	00002b37          	lui	s6,0x2
    8000814c:	0140006f          	j	80008160 <freerange+0x80>
    80008150:	000017b7          	lui	a5,0x1
    80008154:	00f484b3          	add	s1,s1,a5
    80008158:	0554ec63          	bltu	s1,s5,800081b0 <freerange+0xd0>
    8000815c:	0534fa63          	bgeu	s1,s3,800081b0 <freerange+0xd0>
    80008160:	00001637          	lui	a2,0x1
    80008164:	00100593          	li	a1,1
    80008168:	00048513          	mv	a0,s1
    8000816c:	00000097          	auipc	ra,0x0
    80008170:	50c080e7          	jalr	1292(ra) # 80008678 <__memset>
    80008174:	00093703          	ld	a4,0(s2)
    80008178:	016487b3          	add	a5,s1,s6
    8000817c:	00e4b023          	sd	a4,0(s1)
    80008180:	00993023          	sd	s1,0(s2)
    80008184:	fcfa76e3          	bgeu	s4,a5,80008150 <freerange+0x70>
    80008188:	03813083          	ld	ra,56(sp)
    8000818c:	03013403          	ld	s0,48(sp)
    80008190:	02813483          	ld	s1,40(sp)
    80008194:	02013903          	ld	s2,32(sp)
    80008198:	01813983          	ld	s3,24(sp)
    8000819c:	01013a03          	ld	s4,16(sp)
    800081a0:	00813a83          	ld	s5,8(sp)
    800081a4:	00013b03          	ld	s6,0(sp)
    800081a8:	04010113          	addi	sp,sp,64
    800081ac:	00008067          	ret
    800081b0:	00001517          	auipc	a0,0x1
    800081b4:	4e850513          	addi	a0,a0,1256 # 80009698 <digits+0x18>
    800081b8:	fffff097          	auipc	ra,0xfffff
    800081bc:	3d4080e7          	jalr	980(ra) # 8000758c <panic>

00000000800081c0 <kfree>:
    800081c0:	fe010113          	addi	sp,sp,-32
    800081c4:	00813823          	sd	s0,16(sp)
    800081c8:	00113c23          	sd	ra,24(sp)
    800081cc:	00913423          	sd	s1,8(sp)
    800081d0:	02010413          	addi	s0,sp,32
    800081d4:	03451793          	slli	a5,a0,0x34
    800081d8:	04079c63          	bnez	a5,80008230 <kfree+0x70>
    800081dc:	00005797          	auipc	a5,0x5
    800081e0:	96478793          	addi	a5,a5,-1692 # 8000cb40 <end>
    800081e4:	00050493          	mv	s1,a0
    800081e8:	04f56463          	bltu	a0,a5,80008230 <kfree+0x70>
    800081ec:	01100793          	li	a5,17
    800081f0:	01b79793          	slli	a5,a5,0x1b
    800081f4:	02f57e63          	bgeu	a0,a5,80008230 <kfree+0x70>
    800081f8:	00001637          	lui	a2,0x1
    800081fc:	00100593          	li	a1,1
    80008200:	00000097          	auipc	ra,0x0
    80008204:	478080e7          	jalr	1144(ra) # 80008678 <__memset>
    80008208:	00003797          	auipc	a5,0x3
    8000820c:	60878793          	addi	a5,a5,1544 # 8000b810 <kmem>
    80008210:	0007b703          	ld	a4,0(a5)
    80008214:	01813083          	ld	ra,24(sp)
    80008218:	01013403          	ld	s0,16(sp)
    8000821c:	00e4b023          	sd	a4,0(s1)
    80008220:	0097b023          	sd	s1,0(a5)
    80008224:	00813483          	ld	s1,8(sp)
    80008228:	02010113          	addi	sp,sp,32
    8000822c:	00008067          	ret
    80008230:	00001517          	auipc	a0,0x1
    80008234:	46850513          	addi	a0,a0,1128 # 80009698 <digits+0x18>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	354080e7          	jalr	852(ra) # 8000758c <panic>

0000000080008240 <kalloc>:
    80008240:	fe010113          	addi	sp,sp,-32
    80008244:	00813823          	sd	s0,16(sp)
    80008248:	00913423          	sd	s1,8(sp)
    8000824c:	00113c23          	sd	ra,24(sp)
    80008250:	02010413          	addi	s0,sp,32
    80008254:	00003797          	auipc	a5,0x3
    80008258:	5bc78793          	addi	a5,a5,1468 # 8000b810 <kmem>
    8000825c:	0007b483          	ld	s1,0(a5)
    80008260:	02048063          	beqz	s1,80008280 <kalloc+0x40>
    80008264:	0004b703          	ld	a4,0(s1)
    80008268:	00001637          	lui	a2,0x1
    8000826c:	00500593          	li	a1,5
    80008270:	00048513          	mv	a0,s1
    80008274:	00e7b023          	sd	a4,0(a5)
    80008278:	00000097          	auipc	ra,0x0
    8000827c:	400080e7          	jalr	1024(ra) # 80008678 <__memset>
    80008280:	01813083          	ld	ra,24(sp)
    80008284:	01013403          	ld	s0,16(sp)
    80008288:	00048513          	mv	a0,s1
    8000828c:	00813483          	ld	s1,8(sp)
    80008290:	02010113          	addi	sp,sp,32
    80008294:	00008067          	ret

0000000080008298 <initlock>:
    80008298:	ff010113          	addi	sp,sp,-16
    8000829c:	00813423          	sd	s0,8(sp)
    800082a0:	01010413          	addi	s0,sp,16
    800082a4:	00813403          	ld	s0,8(sp)
    800082a8:	00b53423          	sd	a1,8(a0)
    800082ac:	00052023          	sw	zero,0(a0)
    800082b0:	00053823          	sd	zero,16(a0)
    800082b4:	01010113          	addi	sp,sp,16
    800082b8:	00008067          	ret

00000000800082bc <acquire>:
    800082bc:	fe010113          	addi	sp,sp,-32
    800082c0:	00813823          	sd	s0,16(sp)
    800082c4:	00913423          	sd	s1,8(sp)
    800082c8:	00113c23          	sd	ra,24(sp)
    800082cc:	01213023          	sd	s2,0(sp)
    800082d0:	02010413          	addi	s0,sp,32
    800082d4:	00050493          	mv	s1,a0
    800082d8:	10002973          	csrr	s2,sstatus
    800082dc:	100027f3          	csrr	a5,sstatus
    800082e0:	ffd7f793          	andi	a5,a5,-3
    800082e4:	10079073          	csrw	sstatus,a5
    800082e8:	fffff097          	auipc	ra,0xfffff
    800082ec:	8e0080e7          	jalr	-1824(ra) # 80006bc8 <mycpu>
    800082f0:	07852783          	lw	a5,120(a0)
    800082f4:	06078e63          	beqz	a5,80008370 <acquire+0xb4>
    800082f8:	fffff097          	auipc	ra,0xfffff
    800082fc:	8d0080e7          	jalr	-1840(ra) # 80006bc8 <mycpu>
    80008300:	07852783          	lw	a5,120(a0)
    80008304:	0004a703          	lw	a4,0(s1)
    80008308:	0017879b          	addiw	a5,a5,1
    8000830c:	06f52c23          	sw	a5,120(a0)
    80008310:	04071063          	bnez	a4,80008350 <acquire+0x94>
    80008314:	00100713          	li	a4,1
    80008318:	00070793          	mv	a5,a4
    8000831c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008320:	0007879b          	sext.w	a5,a5
    80008324:	fe079ae3          	bnez	a5,80008318 <acquire+0x5c>
    80008328:	0ff0000f          	fence
    8000832c:	fffff097          	auipc	ra,0xfffff
    80008330:	89c080e7          	jalr	-1892(ra) # 80006bc8 <mycpu>
    80008334:	01813083          	ld	ra,24(sp)
    80008338:	01013403          	ld	s0,16(sp)
    8000833c:	00a4b823          	sd	a0,16(s1)
    80008340:	00013903          	ld	s2,0(sp)
    80008344:	00813483          	ld	s1,8(sp)
    80008348:	02010113          	addi	sp,sp,32
    8000834c:	00008067          	ret
    80008350:	0104b903          	ld	s2,16(s1)
    80008354:	fffff097          	auipc	ra,0xfffff
    80008358:	874080e7          	jalr	-1932(ra) # 80006bc8 <mycpu>
    8000835c:	faa91ce3          	bne	s2,a0,80008314 <acquire+0x58>
    80008360:	00001517          	auipc	a0,0x1
    80008364:	34050513          	addi	a0,a0,832 # 800096a0 <digits+0x20>
    80008368:	fffff097          	auipc	ra,0xfffff
    8000836c:	224080e7          	jalr	548(ra) # 8000758c <panic>
    80008370:	00195913          	srli	s2,s2,0x1
    80008374:	fffff097          	auipc	ra,0xfffff
    80008378:	854080e7          	jalr	-1964(ra) # 80006bc8 <mycpu>
    8000837c:	00197913          	andi	s2,s2,1
    80008380:	07252e23          	sw	s2,124(a0)
    80008384:	f75ff06f          	j	800082f8 <acquire+0x3c>

0000000080008388 <release>:
    80008388:	fe010113          	addi	sp,sp,-32
    8000838c:	00813823          	sd	s0,16(sp)
    80008390:	00113c23          	sd	ra,24(sp)
    80008394:	00913423          	sd	s1,8(sp)
    80008398:	01213023          	sd	s2,0(sp)
    8000839c:	02010413          	addi	s0,sp,32
    800083a0:	00052783          	lw	a5,0(a0)
    800083a4:	00079a63          	bnez	a5,800083b8 <release+0x30>
    800083a8:	00001517          	auipc	a0,0x1
    800083ac:	30050513          	addi	a0,a0,768 # 800096a8 <digits+0x28>
    800083b0:	fffff097          	auipc	ra,0xfffff
    800083b4:	1dc080e7          	jalr	476(ra) # 8000758c <panic>
    800083b8:	01053903          	ld	s2,16(a0)
    800083bc:	00050493          	mv	s1,a0
    800083c0:	fffff097          	auipc	ra,0xfffff
    800083c4:	808080e7          	jalr	-2040(ra) # 80006bc8 <mycpu>
    800083c8:	fea910e3          	bne	s2,a0,800083a8 <release+0x20>
    800083cc:	0004b823          	sd	zero,16(s1)
    800083d0:	0ff0000f          	fence
    800083d4:	0f50000f          	fence	iorw,ow
    800083d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800083dc:	ffffe097          	auipc	ra,0xffffe
    800083e0:	7ec080e7          	jalr	2028(ra) # 80006bc8 <mycpu>
    800083e4:	100027f3          	csrr	a5,sstatus
    800083e8:	0027f793          	andi	a5,a5,2
    800083ec:	04079a63          	bnez	a5,80008440 <release+0xb8>
    800083f0:	07852783          	lw	a5,120(a0)
    800083f4:	02f05e63          	blez	a5,80008430 <release+0xa8>
    800083f8:	fff7871b          	addiw	a4,a5,-1
    800083fc:	06e52c23          	sw	a4,120(a0)
    80008400:	00071c63          	bnez	a4,80008418 <release+0x90>
    80008404:	07c52783          	lw	a5,124(a0)
    80008408:	00078863          	beqz	a5,80008418 <release+0x90>
    8000840c:	100027f3          	csrr	a5,sstatus
    80008410:	0027e793          	ori	a5,a5,2
    80008414:	10079073          	csrw	sstatus,a5
    80008418:	01813083          	ld	ra,24(sp)
    8000841c:	01013403          	ld	s0,16(sp)
    80008420:	00813483          	ld	s1,8(sp)
    80008424:	00013903          	ld	s2,0(sp)
    80008428:	02010113          	addi	sp,sp,32
    8000842c:	00008067          	ret
    80008430:	00001517          	auipc	a0,0x1
    80008434:	29850513          	addi	a0,a0,664 # 800096c8 <digits+0x48>
    80008438:	fffff097          	auipc	ra,0xfffff
    8000843c:	154080e7          	jalr	340(ra) # 8000758c <panic>
    80008440:	00001517          	auipc	a0,0x1
    80008444:	27050513          	addi	a0,a0,624 # 800096b0 <digits+0x30>
    80008448:	fffff097          	auipc	ra,0xfffff
    8000844c:	144080e7          	jalr	324(ra) # 8000758c <panic>

0000000080008450 <holding>:
    80008450:	00052783          	lw	a5,0(a0)
    80008454:	00079663          	bnez	a5,80008460 <holding+0x10>
    80008458:	00000513          	li	a0,0
    8000845c:	00008067          	ret
    80008460:	fe010113          	addi	sp,sp,-32
    80008464:	00813823          	sd	s0,16(sp)
    80008468:	00913423          	sd	s1,8(sp)
    8000846c:	00113c23          	sd	ra,24(sp)
    80008470:	02010413          	addi	s0,sp,32
    80008474:	01053483          	ld	s1,16(a0)
    80008478:	ffffe097          	auipc	ra,0xffffe
    8000847c:	750080e7          	jalr	1872(ra) # 80006bc8 <mycpu>
    80008480:	01813083          	ld	ra,24(sp)
    80008484:	01013403          	ld	s0,16(sp)
    80008488:	40a48533          	sub	a0,s1,a0
    8000848c:	00153513          	seqz	a0,a0
    80008490:	00813483          	ld	s1,8(sp)
    80008494:	02010113          	addi	sp,sp,32
    80008498:	00008067          	ret

000000008000849c <push_off>:
    8000849c:	fe010113          	addi	sp,sp,-32
    800084a0:	00813823          	sd	s0,16(sp)
    800084a4:	00113c23          	sd	ra,24(sp)
    800084a8:	00913423          	sd	s1,8(sp)
    800084ac:	02010413          	addi	s0,sp,32
    800084b0:	100024f3          	csrr	s1,sstatus
    800084b4:	100027f3          	csrr	a5,sstatus
    800084b8:	ffd7f793          	andi	a5,a5,-3
    800084bc:	10079073          	csrw	sstatus,a5
    800084c0:	ffffe097          	auipc	ra,0xffffe
    800084c4:	708080e7          	jalr	1800(ra) # 80006bc8 <mycpu>
    800084c8:	07852783          	lw	a5,120(a0)
    800084cc:	02078663          	beqz	a5,800084f8 <push_off+0x5c>
    800084d0:	ffffe097          	auipc	ra,0xffffe
    800084d4:	6f8080e7          	jalr	1784(ra) # 80006bc8 <mycpu>
    800084d8:	07852783          	lw	a5,120(a0)
    800084dc:	01813083          	ld	ra,24(sp)
    800084e0:	01013403          	ld	s0,16(sp)
    800084e4:	0017879b          	addiw	a5,a5,1
    800084e8:	06f52c23          	sw	a5,120(a0)
    800084ec:	00813483          	ld	s1,8(sp)
    800084f0:	02010113          	addi	sp,sp,32
    800084f4:	00008067          	ret
    800084f8:	0014d493          	srli	s1,s1,0x1
    800084fc:	ffffe097          	auipc	ra,0xffffe
    80008500:	6cc080e7          	jalr	1740(ra) # 80006bc8 <mycpu>
    80008504:	0014f493          	andi	s1,s1,1
    80008508:	06952e23          	sw	s1,124(a0)
    8000850c:	fc5ff06f          	j	800084d0 <push_off+0x34>

0000000080008510 <pop_off>:
    80008510:	ff010113          	addi	sp,sp,-16
    80008514:	00813023          	sd	s0,0(sp)
    80008518:	00113423          	sd	ra,8(sp)
    8000851c:	01010413          	addi	s0,sp,16
    80008520:	ffffe097          	auipc	ra,0xffffe
    80008524:	6a8080e7          	jalr	1704(ra) # 80006bc8 <mycpu>
    80008528:	100027f3          	csrr	a5,sstatus
    8000852c:	0027f793          	andi	a5,a5,2
    80008530:	04079663          	bnez	a5,8000857c <pop_off+0x6c>
    80008534:	07852783          	lw	a5,120(a0)
    80008538:	02f05a63          	blez	a5,8000856c <pop_off+0x5c>
    8000853c:	fff7871b          	addiw	a4,a5,-1
    80008540:	06e52c23          	sw	a4,120(a0)
    80008544:	00071c63          	bnez	a4,8000855c <pop_off+0x4c>
    80008548:	07c52783          	lw	a5,124(a0)
    8000854c:	00078863          	beqz	a5,8000855c <pop_off+0x4c>
    80008550:	100027f3          	csrr	a5,sstatus
    80008554:	0027e793          	ori	a5,a5,2
    80008558:	10079073          	csrw	sstatus,a5
    8000855c:	00813083          	ld	ra,8(sp)
    80008560:	00013403          	ld	s0,0(sp)
    80008564:	01010113          	addi	sp,sp,16
    80008568:	00008067          	ret
    8000856c:	00001517          	auipc	a0,0x1
    80008570:	15c50513          	addi	a0,a0,348 # 800096c8 <digits+0x48>
    80008574:	fffff097          	auipc	ra,0xfffff
    80008578:	018080e7          	jalr	24(ra) # 8000758c <panic>
    8000857c:	00001517          	auipc	a0,0x1
    80008580:	13450513          	addi	a0,a0,308 # 800096b0 <digits+0x30>
    80008584:	fffff097          	auipc	ra,0xfffff
    80008588:	008080e7          	jalr	8(ra) # 8000758c <panic>

000000008000858c <push_on>:
    8000858c:	fe010113          	addi	sp,sp,-32
    80008590:	00813823          	sd	s0,16(sp)
    80008594:	00113c23          	sd	ra,24(sp)
    80008598:	00913423          	sd	s1,8(sp)
    8000859c:	02010413          	addi	s0,sp,32
    800085a0:	100024f3          	csrr	s1,sstatus
    800085a4:	100027f3          	csrr	a5,sstatus
    800085a8:	0027e793          	ori	a5,a5,2
    800085ac:	10079073          	csrw	sstatus,a5
    800085b0:	ffffe097          	auipc	ra,0xffffe
    800085b4:	618080e7          	jalr	1560(ra) # 80006bc8 <mycpu>
    800085b8:	07852783          	lw	a5,120(a0)
    800085bc:	02078663          	beqz	a5,800085e8 <push_on+0x5c>
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	608080e7          	jalr	1544(ra) # 80006bc8 <mycpu>
    800085c8:	07852783          	lw	a5,120(a0)
    800085cc:	01813083          	ld	ra,24(sp)
    800085d0:	01013403          	ld	s0,16(sp)
    800085d4:	0017879b          	addiw	a5,a5,1
    800085d8:	06f52c23          	sw	a5,120(a0)
    800085dc:	00813483          	ld	s1,8(sp)
    800085e0:	02010113          	addi	sp,sp,32
    800085e4:	00008067          	ret
    800085e8:	0014d493          	srli	s1,s1,0x1
    800085ec:	ffffe097          	auipc	ra,0xffffe
    800085f0:	5dc080e7          	jalr	1500(ra) # 80006bc8 <mycpu>
    800085f4:	0014f493          	andi	s1,s1,1
    800085f8:	06952e23          	sw	s1,124(a0)
    800085fc:	fc5ff06f          	j	800085c0 <push_on+0x34>

0000000080008600 <pop_on>:
    80008600:	ff010113          	addi	sp,sp,-16
    80008604:	00813023          	sd	s0,0(sp)
    80008608:	00113423          	sd	ra,8(sp)
    8000860c:	01010413          	addi	s0,sp,16
    80008610:	ffffe097          	auipc	ra,0xffffe
    80008614:	5b8080e7          	jalr	1464(ra) # 80006bc8 <mycpu>
    80008618:	100027f3          	csrr	a5,sstatus
    8000861c:	0027f793          	andi	a5,a5,2
    80008620:	04078463          	beqz	a5,80008668 <pop_on+0x68>
    80008624:	07852783          	lw	a5,120(a0)
    80008628:	02f05863          	blez	a5,80008658 <pop_on+0x58>
    8000862c:	fff7879b          	addiw	a5,a5,-1
    80008630:	06f52c23          	sw	a5,120(a0)
    80008634:	07853783          	ld	a5,120(a0)
    80008638:	00079863          	bnez	a5,80008648 <pop_on+0x48>
    8000863c:	100027f3          	csrr	a5,sstatus
    80008640:	ffd7f793          	andi	a5,a5,-3
    80008644:	10079073          	csrw	sstatus,a5
    80008648:	00813083          	ld	ra,8(sp)
    8000864c:	00013403          	ld	s0,0(sp)
    80008650:	01010113          	addi	sp,sp,16
    80008654:	00008067          	ret
    80008658:	00001517          	auipc	a0,0x1
    8000865c:	09850513          	addi	a0,a0,152 # 800096f0 <digits+0x70>
    80008660:	fffff097          	auipc	ra,0xfffff
    80008664:	f2c080e7          	jalr	-212(ra) # 8000758c <panic>
    80008668:	00001517          	auipc	a0,0x1
    8000866c:	06850513          	addi	a0,a0,104 # 800096d0 <digits+0x50>
    80008670:	fffff097          	auipc	ra,0xfffff
    80008674:	f1c080e7          	jalr	-228(ra) # 8000758c <panic>

0000000080008678 <__memset>:
    80008678:	ff010113          	addi	sp,sp,-16
    8000867c:	00813423          	sd	s0,8(sp)
    80008680:	01010413          	addi	s0,sp,16
    80008684:	1a060e63          	beqz	a2,80008840 <__memset+0x1c8>
    80008688:	40a007b3          	neg	a5,a0
    8000868c:	0077f793          	andi	a5,a5,7
    80008690:	00778693          	addi	a3,a5,7
    80008694:	00b00813          	li	a6,11
    80008698:	0ff5f593          	andi	a1,a1,255
    8000869c:	fff6071b          	addiw	a4,a2,-1
    800086a0:	1b06e663          	bltu	a3,a6,8000884c <__memset+0x1d4>
    800086a4:	1cd76463          	bltu	a4,a3,8000886c <__memset+0x1f4>
    800086a8:	1a078e63          	beqz	a5,80008864 <__memset+0x1ec>
    800086ac:	00b50023          	sb	a1,0(a0)
    800086b0:	00100713          	li	a4,1
    800086b4:	1ae78463          	beq	a5,a4,8000885c <__memset+0x1e4>
    800086b8:	00b500a3          	sb	a1,1(a0)
    800086bc:	00200713          	li	a4,2
    800086c0:	1ae78a63          	beq	a5,a4,80008874 <__memset+0x1fc>
    800086c4:	00b50123          	sb	a1,2(a0)
    800086c8:	00300713          	li	a4,3
    800086cc:	18e78463          	beq	a5,a4,80008854 <__memset+0x1dc>
    800086d0:	00b501a3          	sb	a1,3(a0)
    800086d4:	00400713          	li	a4,4
    800086d8:	1ae78263          	beq	a5,a4,8000887c <__memset+0x204>
    800086dc:	00b50223          	sb	a1,4(a0)
    800086e0:	00500713          	li	a4,5
    800086e4:	1ae78063          	beq	a5,a4,80008884 <__memset+0x20c>
    800086e8:	00b502a3          	sb	a1,5(a0)
    800086ec:	00700713          	li	a4,7
    800086f0:	18e79e63          	bne	a5,a4,8000888c <__memset+0x214>
    800086f4:	00b50323          	sb	a1,6(a0)
    800086f8:	00700e93          	li	t4,7
    800086fc:	00859713          	slli	a4,a1,0x8
    80008700:	00e5e733          	or	a4,a1,a4
    80008704:	01059e13          	slli	t3,a1,0x10
    80008708:	01c76e33          	or	t3,a4,t3
    8000870c:	01859313          	slli	t1,a1,0x18
    80008710:	006e6333          	or	t1,t3,t1
    80008714:	02059893          	slli	a7,a1,0x20
    80008718:	40f60e3b          	subw	t3,a2,a5
    8000871c:	011368b3          	or	a7,t1,a7
    80008720:	02859813          	slli	a6,a1,0x28
    80008724:	0108e833          	or	a6,a7,a6
    80008728:	03059693          	slli	a3,a1,0x30
    8000872c:	003e589b          	srliw	a7,t3,0x3
    80008730:	00d866b3          	or	a3,a6,a3
    80008734:	03859713          	slli	a4,a1,0x38
    80008738:	00389813          	slli	a6,a7,0x3
    8000873c:	00f507b3          	add	a5,a0,a5
    80008740:	00e6e733          	or	a4,a3,a4
    80008744:	000e089b          	sext.w	a7,t3
    80008748:	00f806b3          	add	a3,a6,a5
    8000874c:	00e7b023          	sd	a4,0(a5)
    80008750:	00878793          	addi	a5,a5,8
    80008754:	fed79ce3          	bne	a5,a3,8000874c <__memset+0xd4>
    80008758:	ff8e7793          	andi	a5,t3,-8
    8000875c:	0007871b          	sext.w	a4,a5
    80008760:	01d787bb          	addw	a5,a5,t4
    80008764:	0ce88e63          	beq	a7,a4,80008840 <__memset+0x1c8>
    80008768:	00f50733          	add	a4,a0,a5
    8000876c:	00b70023          	sb	a1,0(a4)
    80008770:	0017871b          	addiw	a4,a5,1
    80008774:	0cc77663          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    80008778:	00e50733          	add	a4,a0,a4
    8000877c:	00b70023          	sb	a1,0(a4)
    80008780:	0027871b          	addiw	a4,a5,2
    80008784:	0ac77e63          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    80008788:	00e50733          	add	a4,a0,a4
    8000878c:	00b70023          	sb	a1,0(a4)
    80008790:	0037871b          	addiw	a4,a5,3
    80008794:	0ac77663          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    80008798:	00e50733          	add	a4,a0,a4
    8000879c:	00b70023          	sb	a1,0(a4)
    800087a0:	0047871b          	addiw	a4,a5,4
    800087a4:	08c77e63          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00b70023          	sb	a1,0(a4)
    800087b0:	0057871b          	addiw	a4,a5,5
    800087b4:	08c77663          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    800087b8:	00e50733          	add	a4,a0,a4
    800087bc:	00b70023          	sb	a1,0(a4)
    800087c0:	0067871b          	addiw	a4,a5,6
    800087c4:	06c77e63          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    800087c8:	00e50733          	add	a4,a0,a4
    800087cc:	00b70023          	sb	a1,0(a4)
    800087d0:	0077871b          	addiw	a4,a5,7
    800087d4:	06c77663          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    800087d8:	00e50733          	add	a4,a0,a4
    800087dc:	00b70023          	sb	a1,0(a4)
    800087e0:	0087871b          	addiw	a4,a5,8
    800087e4:	04c77e63          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    800087e8:	00e50733          	add	a4,a0,a4
    800087ec:	00b70023          	sb	a1,0(a4)
    800087f0:	0097871b          	addiw	a4,a5,9
    800087f4:	04c77663          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    800087f8:	00e50733          	add	a4,a0,a4
    800087fc:	00b70023          	sb	a1,0(a4)
    80008800:	00a7871b          	addiw	a4,a5,10
    80008804:	02c77e63          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    80008808:	00e50733          	add	a4,a0,a4
    8000880c:	00b70023          	sb	a1,0(a4)
    80008810:	00b7871b          	addiw	a4,a5,11
    80008814:	02c77663          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    80008818:	00e50733          	add	a4,a0,a4
    8000881c:	00b70023          	sb	a1,0(a4)
    80008820:	00c7871b          	addiw	a4,a5,12
    80008824:	00c77e63          	bgeu	a4,a2,80008840 <__memset+0x1c8>
    80008828:	00e50733          	add	a4,a0,a4
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	00d7879b          	addiw	a5,a5,13
    80008834:	00c7f663          	bgeu	a5,a2,80008840 <__memset+0x1c8>
    80008838:	00f507b3          	add	a5,a0,a5
    8000883c:	00b78023          	sb	a1,0(a5)
    80008840:	00813403          	ld	s0,8(sp)
    80008844:	01010113          	addi	sp,sp,16
    80008848:	00008067          	ret
    8000884c:	00b00693          	li	a3,11
    80008850:	e55ff06f          	j	800086a4 <__memset+0x2c>
    80008854:	00300e93          	li	t4,3
    80008858:	ea5ff06f          	j	800086fc <__memset+0x84>
    8000885c:	00100e93          	li	t4,1
    80008860:	e9dff06f          	j	800086fc <__memset+0x84>
    80008864:	00000e93          	li	t4,0
    80008868:	e95ff06f          	j	800086fc <__memset+0x84>
    8000886c:	00000793          	li	a5,0
    80008870:	ef9ff06f          	j	80008768 <__memset+0xf0>
    80008874:	00200e93          	li	t4,2
    80008878:	e85ff06f          	j	800086fc <__memset+0x84>
    8000887c:	00400e93          	li	t4,4
    80008880:	e7dff06f          	j	800086fc <__memset+0x84>
    80008884:	00500e93          	li	t4,5
    80008888:	e75ff06f          	j	800086fc <__memset+0x84>
    8000888c:	00600e93          	li	t4,6
    80008890:	e6dff06f          	j	800086fc <__memset+0x84>

0000000080008894 <__memmove>:
    80008894:	ff010113          	addi	sp,sp,-16
    80008898:	00813423          	sd	s0,8(sp)
    8000889c:	01010413          	addi	s0,sp,16
    800088a0:	0e060863          	beqz	a2,80008990 <__memmove+0xfc>
    800088a4:	fff6069b          	addiw	a3,a2,-1
    800088a8:	0006881b          	sext.w	a6,a3
    800088ac:	0ea5e863          	bltu	a1,a0,8000899c <__memmove+0x108>
    800088b0:	00758713          	addi	a4,a1,7
    800088b4:	00a5e7b3          	or	a5,a1,a0
    800088b8:	40a70733          	sub	a4,a4,a0
    800088bc:	0077f793          	andi	a5,a5,7
    800088c0:	00f73713          	sltiu	a4,a4,15
    800088c4:	00174713          	xori	a4,a4,1
    800088c8:	0017b793          	seqz	a5,a5
    800088cc:	00e7f7b3          	and	a5,a5,a4
    800088d0:	10078863          	beqz	a5,800089e0 <__memmove+0x14c>
    800088d4:	00900793          	li	a5,9
    800088d8:	1107f463          	bgeu	a5,a6,800089e0 <__memmove+0x14c>
    800088dc:	0036581b          	srliw	a6,a2,0x3
    800088e0:	fff8081b          	addiw	a6,a6,-1
    800088e4:	02081813          	slli	a6,a6,0x20
    800088e8:	01d85893          	srli	a7,a6,0x1d
    800088ec:	00858813          	addi	a6,a1,8
    800088f0:	00058793          	mv	a5,a1
    800088f4:	00050713          	mv	a4,a0
    800088f8:	01088833          	add	a6,a7,a6
    800088fc:	0007b883          	ld	a7,0(a5)
    80008900:	00878793          	addi	a5,a5,8
    80008904:	00870713          	addi	a4,a4,8
    80008908:	ff173c23          	sd	a7,-8(a4)
    8000890c:	ff0798e3          	bne	a5,a6,800088fc <__memmove+0x68>
    80008910:	ff867713          	andi	a4,a2,-8
    80008914:	02071793          	slli	a5,a4,0x20
    80008918:	0207d793          	srli	a5,a5,0x20
    8000891c:	00f585b3          	add	a1,a1,a5
    80008920:	40e686bb          	subw	a3,a3,a4
    80008924:	00f507b3          	add	a5,a0,a5
    80008928:	06e60463          	beq	a2,a4,80008990 <__memmove+0xfc>
    8000892c:	0005c703          	lbu	a4,0(a1)
    80008930:	00e78023          	sb	a4,0(a5)
    80008934:	04068e63          	beqz	a3,80008990 <__memmove+0xfc>
    80008938:	0015c603          	lbu	a2,1(a1)
    8000893c:	00100713          	li	a4,1
    80008940:	00c780a3          	sb	a2,1(a5)
    80008944:	04e68663          	beq	a3,a4,80008990 <__memmove+0xfc>
    80008948:	0025c603          	lbu	a2,2(a1)
    8000894c:	00200713          	li	a4,2
    80008950:	00c78123          	sb	a2,2(a5)
    80008954:	02e68e63          	beq	a3,a4,80008990 <__memmove+0xfc>
    80008958:	0035c603          	lbu	a2,3(a1)
    8000895c:	00300713          	li	a4,3
    80008960:	00c781a3          	sb	a2,3(a5)
    80008964:	02e68663          	beq	a3,a4,80008990 <__memmove+0xfc>
    80008968:	0045c603          	lbu	a2,4(a1)
    8000896c:	00400713          	li	a4,4
    80008970:	00c78223          	sb	a2,4(a5)
    80008974:	00e68e63          	beq	a3,a4,80008990 <__memmove+0xfc>
    80008978:	0055c603          	lbu	a2,5(a1)
    8000897c:	00500713          	li	a4,5
    80008980:	00c782a3          	sb	a2,5(a5)
    80008984:	00e68663          	beq	a3,a4,80008990 <__memmove+0xfc>
    80008988:	0065c703          	lbu	a4,6(a1)
    8000898c:	00e78323          	sb	a4,6(a5)
    80008990:	00813403          	ld	s0,8(sp)
    80008994:	01010113          	addi	sp,sp,16
    80008998:	00008067          	ret
    8000899c:	02061713          	slli	a4,a2,0x20
    800089a0:	02075713          	srli	a4,a4,0x20
    800089a4:	00e587b3          	add	a5,a1,a4
    800089a8:	f0f574e3          	bgeu	a0,a5,800088b0 <__memmove+0x1c>
    800089ac:	02069613          	slli	a2,a3,0x20
    800089b0:	02065613          	srli	a2,a2,0x20
    800089b4:	fff64613          	not	a2,a2
    800089b8:	00e50733          	add	a4,a0,a4
    800089bc:	00c78633          	add	a2,a5,a2
    800089c0:	fff7c683          	lbu	a3,-1(a5)
    800089c4:	fff78793          	addi	a5,a5,-1
    800089c8:	fff70713          	addi	a4,a4,-1
    800089cc:	00d70023          	sb	a3,0(a4)
    800089d0:	fec798e3          	bne	a5,a2,800089c0 <__memmove+0x12c>
    800089d4:	00813403          	ld	s0,8(sp)
    800089d8:	01010113          	addi	sp,sp,16
    800089dc:	00008067          	ret
    800089e0:	02069713          	slli	a4,a3,0x20
    800089e4:	02075713          	srli	a4,a4,0x20
    800089e8:	00170713          	addi	a4,a4,1
    800089ec:	00e50733          	add	a4,a0,a4
    800089f0:	00050793          	mv	a5,a0
    800089f4:	0005c683          	lbu	a3,0(a1)
    800089f8:	00178793          	addi	a5,a5,1
    800089fc:	00158593          	addi	a1,a1,1
    80008a00:	fed78fa3          	sb	a3,-1(a5)
    80008a04:	fee798e3          	bne	a5,a4,800089f4 <__memmove+0x160>
    80008a08:	f89ff06f          	j	80008990 <__memmove+0xfc>

0000000080008a0c <__putc>:
    80008a0c:	fe010113          	addi	sp,sp,-32
    80008a10:	00813823          	sd	s0,16(sp)
    80008a14:	00113c23          	sd	ra,24(sp)
    80008a18:	02010413          	addi	s0,sp,32
    80008a1c:	00050793          	mv	a5,a0
    80008a20:	fef40593          	addi	a1,s0,-17
    80008a24:	00100613          	li	a2,1
    80008a28:	00000513          	li	a0,0
    80008a2c:	fef407a3          	sb	a5,-17(s0)
    80008a30:	fffff097          	auipc	ra,0xfffff
    80008a34:	b3c080e7          	jalr	-1220(ra) # 8000756c <console_write>
    80008a38:	01813083          	ld	ra,24(sp)
    80008a3c:	01013403          	ld	s0,16(sp)
    80008a40:	02010113          	addi	sp,sp,32
    80008a44:	00008067          	ret

0000000080008a48 <__getc>:
    80008a48:	fe010113          	addi	sp,sp,-32
    80008a4c:	00813823          	sd	s0,16(sp)
    80008a50:	00113c23          	sd	ra,24(sp)
    80008a54:	02010413          	addi	s0,sp,32
    80008a58:	fe840593          	addi	a1,s0,-24
    80008a5c:	00100613          	li	a2,1
    80008a60:	00000513          	li	a0,0
    80008a64:	fffff097          	auipc	ra,0xfffff
    80008a68:	ae8080e7          	jalr	-1304(ra) # 8000754c <console_read>
    80008a6c:	fe844503          	lbu	a0,-24(s0)
    80008a70:	01813083          	ld	ra,24(sp)
    80008a74:	01013403          	ld	s0,16(sp)
    80008a78:	02010113          	addi	sp,sp,32
    80008a7c:	00008067          	ret

0000000080008a80 <console_handler>:
    80008a80:	fe010113          	addi	sp,sp,-32
    80008a84:	00813823          	sd	s0,16(sp)
    80008a88:	00113c23          	sd	ra,24(sp)
    80008a8c:	00913423          	sd	s1,8(sp)
    80008a90:	02010413          	addi	s0,sp,32
    80008a94:	14202773          	csrr	a4,scause
    80008a98:	100027f3          	csrr	a5,sstatus
    80008a9c:	0027f793          	andi	a5,a5,2
    80008aa0:	06079e63          	bnez	a5,80008b1c <console_handler+0x9c>
    80008aa4:	00074c63          	bltz	a4,80008abc <console_handler+0x3c>
    80008aa8:	01813083          	ld	ra,24(sp)
    80008aac:	01013403          	ld	s0,16(sp)
    80008ab0:	00813483          	ld	s1,8(sp)
    80008ab4:	02010113          	addi	sp,sp,32
    80008ab8:	00008067          	ret
    80008abc:	0ff77713          	andi	a4,a4,255
    80008ac0:	00900793          	li	a5,9
    80008ac4:	fef712e3          	bne	a4,a5,80008aa8 <console_handler+0x28>
    80008ac8:	ffffe097          	auipc	ra,0xffffe
    80008acc:	6dc080e7          	jalr	1756(ra) # 800071a4 <plic_claim>
    80008ad0:	00a00793          	li	a5,10
    80008ad4:	00050493          	mv	s1,a0
    80008ad8:	02f50c63          	beq	a0,a5,80008b10 <console_handler+0x90>
    80008adc:	fc0506e3          	beqz	a0,80008aa8 <console_handler+0x28>
    80008ae0:	00050593          	mv	a1,a0
    80008ae4:	00001517          	auipc	a0,0x1
    80008ae8:	b1450513          	addi	a0,a0,-1260 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80008aec:	fffff097          	auipc	ra,0xfffff
    80008af0:	afc080e7          	jalr	-1284(ra) # 800075e8 <__printf>
    80008af4:	01013403          	ld	s0,16(sp)
    80008af8:	01813083          	ld	ra,24(sp)
    80008afc:	00048513          	mv	a0,s1
    80008b00:	00813483          	ld	s1,8(sp)
    80008b04:	02010113          	addi	sp,sp,32
    80008b08:	ffffe317          	auipc	t1,0xffffe
    80008b0c:	6d430067          	jr	1748(t1) # 800071dc <plic_complete>
    80008b10:	fffff097          	auipc	ra,0xfffff
    80008b14:	3e0080e7          	jalr	992(ra) # 80007ef0 <uartintr>
    80008b18:	fddff06f          	j	80008af4 <console_handler+0x74>
    80008b1c:	00001517          	auipc	a0,0x1
    80008b20:	bdc50513          	addi	a0,a0,-1060 # 800096f8 <digits+0x78>
    80008b24:	fffff097          	auipc	ra,0xfffff
    80008b28:	a68080e7          	jalr	-1432(ra) # 8000758c <panic>
	...
