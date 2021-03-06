unit x32.avx_gather;

// This unit was generated by d2p.pl script.
// Source : gas/avx-gather-intel.d

interface

uses
  uTestCase,
  UnivDisasm.Cnsts;

procedure Test();

implementation

procedure Test();
var
  TestCase:TTestCase;
begin
  TestCase := TTestCase.Create('x32.avx_gather');
  TestCase.Start();	
  TestCase.Arch := CPUX32;

  TestCase.testcase(0, [$C4,$E2,$E9,$92,$4C,$7D,$00                       ] , 'vgatherdpd  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(1, [$C4,$E2,$E9,$93,$4C,$7D,$00                       ] , 'vgatherqpd  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(2, [$C4,$E2,$ED,$92,$4C,$7D,$00                       ] , 'vgatherdpd  ymm1,qword [ebp+xmm7*2+0x0],ymm2'     );
  TestCase.testcase(3, [$C4,$E2,$ED,$93,$4C,$7D,$00                       ] , 'vgatherqpd  ymm1,qword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(4, [$C4,$E2,$D5,$92,$34,$25,$08,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*1+0x8],ymm5'         );
  TestCase.testcase(5, [$C4,$E2,$D5,$92,$34,$25,$F8,$FF,$FF,$FF           ] , 'vgatherdpd  ymm6,qword [xmm4*1-0x8],ymm5'         );
  TestCase.testcase(6, [$C4,$E2,$D5,$92,$34,$25,$00,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*1+0x0],ymm5'         );
  TestCase.testcase(7, [$C4,$E2,$D5,$92,$34,$25,$98,$02,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*1+0x298],ymm5'       );
  TestCase.testcase(8, [$C4,$E2,$D5,$92,$34,$E5,$08,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*8+0x8],ymm5'         );
  TestCase.testcase(9, [$C4,$E2,$D5,$92,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vgatherdpd  ymm6,qword [xmm4*8-0x8],ymm5'         );
  TestCase.testcase(10, [$C4,$E2,$D5,$92,$34,$E5,$00,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*8+0x0],ymm5'         );
  TestCase.testcase(11, [$C4,$E2,$D5,$92,$34,$E5,$98,$02,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*8+0x298],ymm5'       );
  TestCase.testcase(12, [$C4,$E2,$69,$92,$4C,$7D,$00                       ] , 'vgatherdps  xmm1,dword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(13, [$C4,$E2,$69,$93,$4C,$7D,$00                       ] , 'vgatherqps  xmm1,dword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(14, [$C4,$E2,$6D,$92,$4C,$7D,$00                       ] , 'vgatherdps  ymm1,dword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(15, [$C4,$E2,$6D,$93,$4C,$7D,$00                       ] , 'vgatherqps  xmm1,dword [ebp+ymm7*2+0x0],xmm2'     );
  TestCase.testcase(16, [$C4,$E2,$51,$92,$34,$25,$08,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*1+0x8],xmm5'         );
  TestCase.testcase(17, [$C4,$E2,$51,$92,$34,$25,$F8,$FF,$FF,$FF           ] , 'vgatherdps  xmm6,dword [xmm4*1-0x8],xmm5'         );
  TestCase.testcase(18, [$C4,$E2,$51,$92,$34,$25,$00,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*1+0x0],xmm5'         );
  TestCase.testcase(19, [$C4,$E2,$51,$92,$34,$25,$98,$02,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*1+0x298],xmm5'       );
  TestCase.testcase(20, [$C4,$E2,$51,$92,$34,$E5,$08,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*8+0x8],xmm5'         );
  TestCase.testcase(21, [$C4,$E2,$51,$92,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vgatherdps  xmm6,dword [xmm4*8-0x8],xmm5'         );
  TestCase.testcase(22, [$C4,$E2,$51,$92,$34,$E5,$00,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*8+0x0],xmm5'         );
  TestCase.testcase(23, [$C4,$E2,$51,$92,$34,$E5,$98,$02,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*8+0x298],xmm5'       );
  TestCase.testcase(24, [$C4,$E2,$69,$90,$4C,$7D,$00                       ] , 'vpgatherdd  xmm1,dword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(25, [$C4,$E2,$6D,$90,$4C,$7D,$00                       ] , 'vpgatherdd  ymm1,dword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(26, [$C4,$E2,$51,$90,$34,$25,$08,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*1+0x8],xmm5'         );
  TestCase.testcase(27, [$C4,$E2,$51,$90,$34,$25,$F8,$FF,$FF,$FF           ] , 'vpgatherdd  xmm6,dword [xmm4*1-0x8],xmm5'         );
  TestCase.testcase(28, [$C4,$E2,$51,$90,$34,$25,$00,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*1+0x0],xmm5'         );
  TestCase.testcase(29, [$C4,$E2,$51,$90,$34,$25,$98,$02,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*1+0x298],xmm5'       );
  TestCase.testcase(30, [$C4,$E2,$51,$90,$34,$E5,$08,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*8+0x8],xmm5'         );
  TestCase.testcase(31, [$C4,$E2,$51,$90,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vpgatherdd  xmm6,dword [xmm4*8-0x8],xmm5'         );
  TestCase.testcase(32, [$C4,$E2,$51,$90,$34,$E5,$00,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*8+0x0],xmm5'         );
  TestCase.testcase(33, [$C4,$E2,$51,$90,$34,$E5,$98,$02,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*8+0x298],xmm5'       );
  TestCase.testcase(34, [$C4,$E2,$E9,$90,$4C,$7D,$00                       ] , 'vpgatherdq  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(35, [$C4,$E2,$E9,$91,$4C,$7D,$00                       ] , 'vpgatherqq  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(36, [$C4,$E2,$ED,$90,$4C,$7D,$00                       ] , 'vpgatherdq  ymm1,qword [ebp+xmm7*2+0x0],ymm2'     );
  TestCase.testcase(37, [$C4,$E2,$ED,$91,$4C,$7D,$00                       ] , 'vpgatherqq  ymm1,qword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(38, [$C4,$E2,$D5,$90,$34,$25,$08,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*1+0x8],ymm5'         );
  TestCase.testcase(39, [$C4,$E2,$D5,$90,$34,$25,$F8,$FF,$FF,$FF           ] , 'vpgatherdq  ymm6,qword [xmm4*1-0x8],ymm5'         );
  TestCase.testcase(40, [$C4,$E2,$D5,$90,$34,$25,$00,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*1+0x0],ymm5'         );
  TestCase.testcase(41, [$C4,$E2,$D5,$90,$34,$25,$98,$02,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*1+0x298],ymm5'       );
  TestCase.testcase(42, [$C4,$E2,$D5,$90,$34,$E5,$08,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*8+0x8],ymm5'         );
  TestCase.testcase(43, [$C4,$E2,$D5,$90,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vpgatherdq  ymm6,qword [xmm4*8-0x8],ymm5'         );
  TestCase.testcase(44, [$C4,$E2,$D5,$90,$34,$E5,$00,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*8+0x0],ymm5'         );
  TestCase.testcase(45, [$C4,$E2,$D5,$90,$34,$E5,$98,$02,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*8+0x298],ymm5'       );
  TestCase.testcase(46, [$C4,$E2,$E9,$92,$4C,$7D,$00                       ] , 'vgatherdpd  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(47, [$C4,$E2,$E9,$93,$4C,$7D,$00                       ] , 'vgatherqpd  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(48, [$C4,$E2,$ED,$92,$4C,$7D,$00                       ] , 'vgatherdpd  ymm1,qword [ebp+xmm7*2+0x0],ymm2'     );
  TestCase.testcase(49, [$C4,$E2,$ED,$93,$4C,$7D,$00                       ] , 'vgatherqpd  ymm1,qword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(50, [$C4,$E2,$D5,$92,$34,$25,$08,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*1+0x8],ymm5'         );
  TestCase.testcase(51, [$C4,$E2,$D5,$92,$34,$25,$F8,$FF,$FF,$FF           ] , 'vgatherdpd  ymm6,qword [xmm4*1-0x8],ymm5'         );
  TestCase.testcase(52, [$C4,$E2,$D5,$92,$34,$25,$00,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*1+0x0],ymm5'         );
  TestCase.testcase(53, [$C4,$E2,$D5,$92,$34,$25,$98,$02,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*1+0x298],ymm5'       );
  TestCase.testcase(54, [$C4,$E2,$D5,$92,$34,$E5,$08,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*8+0x8],ymm5'         );
  TestCase.testcase(55, [$C4,$E2,$D5,$92,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vgatherdpd  ymm6,qword [xmm4*8-0x8],ymm5'         );
  TestCase.testcase(56, [$C4,$E2,$D5,$92,$34,$E5,$00,$00,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*8+0x0],ymm5'         );
  TestCase.testcase(57, [$C4,$E2,$D5,$92,$34,$E5,$98,$02,$00,$00           ] , 'vgatherdpd  ymm6,qword [xmm4*8+0x298],ymm5'       );
  TestCase.testcase(58, [$C4,$E2,$69,$92,$4C,$7D,$00                       ] , 'vgatherdps  xmm1,dword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(59, [$C4,$E2,$69,$93,$4C,$7D,$00                       ] , 'vgatherqps  xmm1,dword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(60, [$C4,$E2,$6D,$92,$4C,$7D,$00                       ] , 'vgatherdps  ymm1,dword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(61, [$C4,$E2,$6D,$93,$4C,$7D,$00                       ] , 'vgatherqps  xmm1,dword [ebp+ymm7*2+0x0],xmm2'     );
  TestCase.testcase(62, [$C4,$E2,$51,$92,$34,$25,$08,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*1+0x8],xmm5'         );
  TestCase.testcase(63, [$C4,$E2,$51,$92,$34,$25,$F8,$FF,$FF,$FF           ] , 'vgatherdps  xmm6,dword [xmm4*1-0x8],xmm5'         );
  TestCase.testcase(64, [$C4,$E2,$51,$92,$34,$25,$00,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*1+0x0],xmm5'         );
  TestCase.testcase(65, [$C4,$E2,$51,$92,$34,$25,$98,$02,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*1+0x298],xmm5'       );
  TestCase.testcase(66, [$C4,$E2,$51,$92,$34,$E5,$08,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*8+0x8],xmm5'         );
  TestCase.testcase(67, [$C4,$E2,$51,$92,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vgatherdps  xmm6,dword [xmm4*8-0x8],xmm5'         );
  TestCase.testcase(68, [$C4,$E2,$51,$92,$34,$E5,$00,$00,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*8+0x0],xmm5'         );
  TestCase.testcase(69, [$C4,$E2,$51,$92,$34,$E5,$98,$02,$00,$00           ] , 'vgatherdps  xmm6,dword [xmm4*8+0x298],xmm5'       );
  TestCase.testcase(70, [$C4,$E2,$69,$90,$4C,$7D,$00                       ] , 'vpgatherdd  xmm1,dword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(71, [$C4,$E2,$6D,$90,$4C,$7D,$00                       ] , 'vpgatherdd  ymm1,dword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(72, [$C4,$E2,$51,$90,$34,$25,$08,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*1+0x8],xmm5'         );
  TestCase.testcase(73, [$C4,$E2,$51,$90,$34,$25,$F8,$FF,$FF,$FF           ] , 'vpgatherdd  xmm6,dword [xmm4*1-0x8],xmm5'         );
  TestCase.testcase(74, [$C4,$E2,$51,$90,$34,$25,$00,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*1+0x0],xmm5'         );
  TestCase.testcase(75, [$C4,$E2,$51,$90,$34,$25,$98,$02,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*1+0x298],xmm5'       );
  TestCase.testcase(76, [$C4,$E2,$51,$90,$34,$E5,$08,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*8+0x8],xmm5'         );
  TestCase.testcase(77, [$C4,$E2,$51,$90,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vpgatherdd  xmm6,dword [xmm4*8-0x8],xmm5'         );
  TestCase.testcase(78, [$C4,$E2,$51,$90,$34,$E5,$00,$00,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*8+0x0],xmm5'         );
  TestCase.testcase(79, [$C4,$E2,$51,$90,$34,$E5,$98,$02,$00,$00           ] , 'vpgatherdd  xmm6,dword [xmm4*8+0x298],xmm5'       );
  TestCase.testcase(80, [$C4,$E2,$E9,$90,$4C,$7D,$00                       ] , 'vpgatherdq  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(81, [$C4,$E2,$E9,$91,$4C,$7D,$00                       ] , 'vpgatherqq  xmm1,qword [ebp+xmm7*2+0x0],xmm2'     );
  TestCase.testcase(82, [$C4,$E2,$ED,$90,$4C,$7D,$00                       ] , 'vpgatherdq  ymm1,qword [ebp+xmm7*2+0x0],ymm2'     );
  TestCase.testcase(83, [$C4,$E2,$ED,$91,$4C,$7D,$00                       ] , 'vpgatherqq  ymm1,qword [ebp+ymm7*2+0x0],ymm2'     );
  TestCase.testcase(84, [$C4,$E2,$D5,$90,$34,$25,$08,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*1+0x8],ymm5'         );
  TestCase.testcase(85, [$C4,$E2,$D5,$90,$34,$25,$F8,$FF,$FF,$FF           ] , 'vpgatherdq  ymm6,qword [xmm4*1-0x8],ymm5'         );
  TestCase.testcase(86, [$C4,$E2,$D5,$90,$34,$25,$00,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*1+0x0],ymm5'         );
  TestCase.testcase(87, [$C4,$E2,$D5,$90,$34,$25,$98,$02,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*1+0x298],ymm5'       );
  TestCase.testcase(88, [$C4,$E2,$D5,$90,$34,$E5,$08,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*8+0x8],ymm5'         );
  TestCase.testcase(89, [$C4,$E2,$D5,$90,$34,$E5,$F8,$FF,$FF,$FF           ] , 'vpgatherdq  ymm6,qword [xmm4*8-0x8],ymm5'         );
  TestCase.testcase(90, [$C4,$E2,$D5,$90,$34,$E5,$00,$00,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*8+0x0],ymm5'         );
  TestCase.testcase(91, [$C4,$E2,$D5,$90,$34,$E5,$98,$02,$00,$00           ] , 'vpgatherdq  ymm6,qword [xmm4*8+0x298],ymm5'       );
  TestCase.Stop();
  TestCase.SaveToFile('../../../log/x32.avx_gather.log');
end;

end.