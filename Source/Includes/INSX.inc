//
// *************************************************************************** //
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
// *************************************************************************** //
//
//
// *************************************************************************** //
// UnivDisasm library.
//
// This file is a part of UnivDisasm library.
//
// https://github.com/MahdiSafsafi/UnivDisasm
//
// The Original Code is INSX.inc
//
// The Initial Developer of the Original Code is Mahdi Safsafi.
// Portions created by Mahdi Safsafi . are Copyright (C) 2015 Mahdi Safsafi.
// All Rights Reserved.
// *************************************************************************** //
//

procedure Decode_INSX_HANG_void(PInst: PInstruction);
begin
  // HANG  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_HANG;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_HANG);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_LOADALL_void(PInst: PInstruction);
begin
  // LOADALL  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_LOADALL;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_LOADALL);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_RESET_void(PInst: PInstruction);
begin
  // RESET  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_RESET;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_RESET);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CL1INVMB_void(PInst: PInstruction);
begin
  // CL1INVMB  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_CL1INVMB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CL1INVMB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_UD1_void(PInst: PInstruction);
begin
  // UD1  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_UD1;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_UD1);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_PREFETCHx_M(PInst: PInstruction);
begin
  // PREFETCHx  M
  DecodeModRm(PInst);
  OpCodes_0x0F_0x0D_PREFETCH_Array[PInst^.ModRm.Value.Reg](PInst);
end;

procedure Decode_INSX_FEMMS_void(PInst: PInstruction);
begin
  // FEMMS  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_FEMMS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_FEMMS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_UMOV_Eb_Gb(PInst: PInstruction);
begin
  // UMOV  Eb,Gb
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_Eb_Gb(PInst);
  PInst^.InstID := INST_ID_UMOV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_UMOV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_UMOV_Ev_Gv(PInst: PInstruction);
begin
  // UMOV  Ev,Gv
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_Ev_Gv(PInst);
  PInst^.InstID := INST_ID_UMOV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_UMOV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_UMOV_Gb_Eb(PInst: PInstruction);
begin
  // UMOV  Gb,Eb
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_Gb_Eb(PInst);
  PInst^.InstID := INST_ID_UMOV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_UMOV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_UMOV_Gv_Ev(PInst: PInstruction);
begin
  // UMOV  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_UMOV;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_UMOV);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_RDSHR_Ed(PInst: PInstruction);
begin
  // RDSHR  Ed
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_Ed(PInst);
  PInst^.InstID := INST_ID_RDSHR;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_RDSHR);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_GETSEC_void(PInst: PInstruction);
begin
  // GETSEC  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_GETSEC;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_GETSEC);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_WRSHR_Ed(PInst: PInstruction);
begin
  // WRSHR  Ed
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_Ed(PInst);
  PInst^.InstID := INST_ID_WRSHR;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_WRSHR);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_SMINT_void(PInst: PInstruction);
begin
  // SMINT  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_SMINT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_SMINT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_DMINT_void(PInst: PInstruction);
begin
  // DMINT  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_DMINT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_DMINT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_RDM_void(PInst: PInstruction);
begin
  // RDM  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_RDM;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_RDM);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_BB0_RESET_void(PInst: PInstruction);
begin
  // BB0_RESET  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_BB0_RESET;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_BB0_RESET);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_BB1_RESET_void(PInst: PInstruction);
begin
  // BB1_RESET  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_BB1_RESET;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_BB1_RESET);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CPU_WRITE_void(PInst: PInstruction);
begin
  // CPU_WRITE  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_CPU_WRITE;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CPU_WRITE);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CPU_READ_void(PInst: PInstruction);
begin
  // CPU_READ  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_CPU_READ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CPU_READ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_ALTINST_void(PInst: PInstruction);
begin
  // ALTINST  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_ALTINST;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_ALTINST);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVO_Gv_Ev(PInst: PInstruction);
begin
  // CMOVO  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVO;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVO);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNO_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNO  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNO;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNO);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVB_Gv_Ev(PInst: PInstruction);
begin
  // CMOVB  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNB_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNB  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVZ_Gv_Ev(PInst: PInstruction);
begin
  // CMOVZ  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVZ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVZ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNZ_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNZ  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNZ;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNZ);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVBE_Gv_Ev(PInst: PInstruction);
begin
  // CMOVBE  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVBE;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVBE);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNBE_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNBE  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNBE;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNBE);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVS_Gv_Ev(PInst: PInstruction);
begin
  // CMOVS  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNS_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNS  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVP_Gv_Ev(PInst: PInstruction);
begin
  // CMOVP  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNP_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNP  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVL_Gv_Ev(PInst: PInstruction);
begin
  // CMOVL  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVL;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVL);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNL_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNL  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNL;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNL);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVLE_Gv_Ev(PInst: PInstruction);
begin
  // CMOVLE  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVLE;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVLE);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CMOVNLE_Gv_Ev(PInst: PInstruction);
begin
  // CMOVNLE  Gv,Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $14;
  Decode_Gv_Ev(PInst);
  PInst^.InstID := INST_ID_CMOVNLE;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CMOVNLE);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_MONTMUL_void(PInst: PInstruction);
begin
  // MONTMUL  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_MONTMUL;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MONTMUL);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_XSHA_void(PInst: PInstruction);
begin
  // XSHA  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_XSHA;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_XSHA);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_XBTS_void(PInst: PInstruction);
begin
  // XBTS  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_XBTS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_XBTS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_XCRYPT_void(PInst: PInstruction);
begin
  // XCRYPT  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_XCRYPT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_XCRYPT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_XSTORE_void(PInst: PInstruction);
begin
  // XSTORE  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_XSTORE;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_XSTORE);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_IBTS_void(PInst: PInstruction);
begin
  // IBTS  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_IBTS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_IBTS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_PCOMMIT_void(PInst: PInstruction);
begin
  // PCOMMIT  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_void(PInst);
  PInst^.InstID := INST_ID_PCOMMIT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_PCOMMIT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CLWB_M(PInst: PInstruction);
begin
  // CLWB  M
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_M(PInst);
  PInst^.InstID := INST_ID_CLWB;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CLWB);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CLFLUSHOPT_M(PInst: PInstruction);
begin
  // CLFLUSHOPT  M
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  MakeMndPrefix66(PInst);
  Decode_M(PInst);
  PInst^.InstID := INST_ID_CLFLUSHOPT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CLFLUSHOPT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_HINT_NOP_Ev(PInst: PInstruction);
begin
  // HINT_NOP  Ev
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_Ev(PInst);
  PInst^.InstID := INST_ID_HINT_NOP;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_HINT_NOP);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_ENCLS_void(PInst: PInstruction);
begin
  // ENCLS  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_ENCLS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_ENCLS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_ENCLU_void(PInst: PInstruction);
begin
  // ENCLU  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_ENCLU;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_ENCLU);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_STGI_void(PInst: PInstruction);
begin
  // STGI  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_STGI;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_STGI);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CLGI_void(PInst: PInstruction);
begin
  // CLGI  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_CLGI;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CLGI);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_SKINIT_void(PInst: PInstruction);
begin
  // SKINIT  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_SKINIT;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_SKINIT);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_INVLPGA_void(PInst: PInstruction);
begin
  // INVLPGA  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_INVLPGA;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_INVLPGA);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_RDPKRU_void(PInst: PInstruction);
begin
  // RDPKRU  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_RDPKRU;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_RDPKRU);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_WRPKRU_void(PInst: PInstruction);
begin
  // WRPKRU  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_WRPKRU;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_WRPKRU);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_MONITORX_void(PInst: PInstruction);
begin
  // MONITORX  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_MONITORX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MONITORX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_MWAITX_void(PInst: PInstruction);
begin
  // MWAITX  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_MWAITX;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_MWAITX);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_CLZERO_void(PInst: PInstruction);
begin
  // CLZERO  void
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_void(PInst);
  PInst^.InstID := INST_ID_CLZERO;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_CLZERO);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_XRSTORS_M(PInst: PInstruction);
begin
  // XRSTORS  M
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_M(PInst);
  PInst^.InstID := INST_ID_XRSTORS;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_XRSTORS);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_XSAVEC_M(PInst: PInstruction);
begin
  // XSAVEC  M
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_M(PInst);
  PInst^.InstID := INST_ID_XSAVEC;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_XSAVEC);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;

procedure Decode_INSX_XSAVES_M(PInst: PInstruction);
begin
  // XSAVES  M
  PInst^.InstGroups := INST_GRP_INSX;
  PInst^.FlagsIndex := $00;
  Decode_M(PInst);
  PInst^.InstID := INST_ID_XSAVES;
{$IFDEF NEED_DISPLAY}
  MoveMnem(PInst, MNEM_XSAVES);
  SyntaxManager.SyntaxDecoderArray[PInst.InternalData.SyntaxID](PInst);
{$ENDIF NEED_DISPLAY}
end;