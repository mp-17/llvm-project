// RUN: llvm-mc -triple x86_64-unknown-unknown --show-encoding < %s  | FileCheck %s

// CHECK: vmovsh %xmm28, %xmm29, %xmm30
// CHECK: encoding: [0x62,0x05,0x16,0x00,0x10,0xf4]
          vmovsh %xmm28, %xmm29, %xmm30

// CHECK: vmovsh 268435456(%rbp,%r14,8), %xmm30 {%k7}
// CHECK: encoding: [0x62,0x25,0x7e,0x0f,0x10,0xb4,0xf5,0x00,0x00,0x00,0x10]
          vmovsh 268435456(%rbp,%r14,8), %xmm30 {%k7}

// CHECK: vmovsh (%r9), %xmm30
// CHECK: encoding: [0x62,0x45,0x7e,0x08,0x10,0x31]
          vmovsh (%r9), %xmm30

// CHECK: vmovsh 254(%rcx), %xmm30
// CHECK: encoding: [0x62,0x65,0x7e,0x08,0x10,0x71,0x7f]
          vmovsh 254(%rcx), %xmm30

// CHECK: vmovsh -256(%rdx), %xmm30 {%k7} {z}
// CHECK: encoding: [0x62,0x65,0x7e,0x8f,0x10,0x72,0x80]
          vmovsh -256(%rdx), %xmm30 {%k7} {z}

// CHECK: vmovsh %xmm30, 268435456(%rbp,%r14,8) {%k7}
// CHECK: encoding: [0x62,0x25,0x7e,0x0f,0x11,0xb4,0xf5,0x00,0x00,0x00,0x10]
          vmovsh %xmm30, 268435456(%rbp,%r14,8) {%k7}

// CHECK: vmovsh %xmm30, (%r9)
// CHECK: encoding: [0x62,0x45,0x7e,0x08,0x11,0x31]
          vmovsh %xmm30, (%r9)

// CHECK: vmovsh %xmm30, 254(%rcx)
// CHECK: encoding: [0x62,0x65,0x7e,0x08,0x11,0x71,0x7f]
          vmovsh %xmm30, 254(%rcx)

// CHECK: vmovsh %xmm30, -256(%rdx) {%k7}
// CHECK: encoding: [0x62,0x65,0x7e,0x0f,0x11,0x72,0x80]
          vmovsh %xmm30, -256(%rdx) {%k7}

// CHECK: vmovw %r12d, %xmm30
// CHECK: encoding: [0x62,0x45,0x7d,0x08,0x6e,0xf4]
          vmovw %r12d, %xmm30

// CHECK: vmovw %xmm30, %r12d
// CHECK: encoding: [0x62,0x45,0x7d,0x08,0x7e,0xf4]
          vmovw %xmm30, %r12d

// CHECK: vmovw 268435456(%rbp,%r14,8), %xmm30
// CHECK: encoding: [0x62,0x25,0x7d,0x08,0x6e,0xb4,0xf5,0x00,0x00,0x00,0x10]
          vmovw 268435456(%rbp,%r14,8), %xmm30

// CHECK: vmovw (%r9), %xmm30
// CHECK: encoding: [0x62,0x45,0x7d,0x08,0x6e,0x31]
          vmovw (%r9), %xmm30

// CHECK: vmovw 254(%rcx), %xmm30
// CHECK: encoding: [0x62,0x65,0x7d,0x08,0x6e,0x71,0x7f]
          vmovw 254(%rcx), %xmm30

// CHECK: vmovw -256(%rdx), %xmm30
// CHECK: encoding: [0x62,0x65,0x7d,0x08,0x6e,0x72,0x80]
          vmovw -256(%rdx), %xmm30

// CHECK: vmovw %xmm30, 268435456(%rbp,%r14,8)
// CHECK: encoding: [0x62,0x25,0x7d,0x08,0x7e,0xb4,0xf5,0x00,0x00,0x00,0x10]
          vmovw %xmm30, 268435456(%rbp,%r14,8)

// CHECK: vmovw %xmm30, (%r9)
// CHECK: encoding: [0x62,0x45,0x7d,0x08,0x7e,0x31]
          vmovw %xmm30, (%r9)

// CHECK: vmovw %xmm30, 254(%rcx)
// CHECK: encoding: [0x62,0x65,0x7d,0x08,0x7e,0x71,0x7f]
          vmovw %xmm30, 254(%rcx)

// CHECK: vmovw %xmm30, -256(%rdx)
// CHECK: encoding: [0x62,0x65,0x7d,0x08,0x7e,0x72,0x80]
          vmovw %xmm30, -256(%rdx)