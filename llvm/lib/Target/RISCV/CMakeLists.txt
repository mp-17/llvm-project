add_llvm_component_group(RISCV)

set(LLVM_TARGET_DEFINITIONS RISCV.td)

tablegen(LLVM RISCVGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM RISCVGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM RISCVGenCompressInstEmitter.inc -gen-compress-inst-emitter)
tablegen(LLVM RISCVGenDAGISel.inc -gen-dag-isel)
tablegen(LLVM RISCVGenDisassemblerTables.inc -gen-disassembler)
tablegen(LLVM RISCVGenGlobalISel.inc -gen-global-isel)
tablegen(LLVM RISCVGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM RISCVGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM RISCVGenMCPseudoLowering.inc -gen-pseudo-lowering)
tablegen(LLVM RISCVGenRegisterBank.inc -gen-register-bank)
tablegen(LLVM RISCVGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM RISCVGenSearchableTables.inc -gen-searchable-tables)
tablegen(LLVM RISCVGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(RISCVCommonTableGen)

add_llvm_target(RISCVCodeGen
  PULP/PULPHardwareLoops.cpp
  PULP/PULPFixupHwLoops.cpp
  RISCVAsmPrinter.cpp
  RISCVCallLowering.cpp
  RISCVCleanupVSETVLI.cpp
  RISCVExpandAtomicPseudoInsts.cpp
  RISCVExpandPseudoInsts.cpp
  RISCVExpandSSRInsts.cpp
  RISCVExpandSDMAInsts.cpp
  RISCVFrameLowering.cpp
  RISCVInstrInfo.cpp
  RISCVInstructionSelector.cpp
  RISCVISelDAGToDAG.cpp
  RISCVISelLowering.cpp
  RISCVLegalizerInfo.cpp
  RISCVMCInstLower.cpp
  RISCVMergeBaseOffset.cpp
  RISCVRegisterBankInfo.cpp
  RISCVRegisterInfo.cpp
  RISCVSubtarget.cpp
  RISCVTargetMachine.cpp
  RISCVTargetObjectFile.cpp
  RISCVTargetTransformInfo.cpp
  Snitch/SNITCHFrepLoops.cpp

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  Core
  CodeGen
  MC
  RISCVDesc
  RISCVInfo
  SelectionDAG
  Support
  Target
  GlobalISel

  ADD_TO_COMPONENT
  RISCV
  )

add_subdirectory(AsmParser)
add_subdirectory(Disassembler)
add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
