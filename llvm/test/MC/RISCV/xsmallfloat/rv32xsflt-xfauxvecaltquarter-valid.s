# Automatically generated by parse_opcodes (noah95/riscv-opcodes)
# RUN: llvm-mc %s -triple=riscv64 -mattr=xfauxvecaltquarter,+d,+xfauxvecquarter -riscv-no-aliases -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK-ASM %s

# CHECK-ASM: encoding: [0xb3,0xbc,0x71,0x8e]
vfsum.ab f25, f3
# CHECK-ASM: encoding: [0xb3,0x35,0x79,0xae]
vfnsum.ab f11, f18
