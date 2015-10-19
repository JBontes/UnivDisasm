unit x64.fma_scalar;

// This unit was generated by d2p.pl script.
// Source : gas/x86-64-fma-scalar-intel.d

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
  TestCase := TTestCase.Create('x64.fma_scalar');
  TestCase.Start();	
  TestCase.Arch := CPUX64;

  TestCase.testcase(0, [$C4,$E2,$CD,$99,$D4                               ] , 'vfmadd132sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(1, [$C4,$E2,$CD,$99,$11                               ] , 'vfmadd132sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(2, [$C4,$E2,$CD,$A9,$D4                               ] , 'vfmadd213sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(3, [$C4,$E2,$CD,$A9,$11                               ] , 'vfmadd213sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(4, [$C4,$E2,$CD,$B9,$D4                               ] , 'vfmadd231sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(5, [$C4,$E2,$CD,$B9,$11                               ] , 'vfmadd231sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(6, [$C4,$E2,$CD,$9B,$D4                               ] , 'vfmsub132sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(7, [$C4,$E2,$CD,$9B,$11                               ] , 'vfmsub132sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(8, [$C4,$E2,$CD,$AB,$D4                               ] , 'vfmsub213sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(9, [$C4,$E2,$CD,$AB,$11                               ] , 'vfmsub213sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(10, [$C4,$E2,$CD,$BB,$D4                               ] , 'vfmsub231sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(11, [$C4,$E2,$CD,$BB,$11                               ] , 'vfmsub231sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(12, [$C4,$E2,$CD,$9D,$D4                               ] , 'vfnmadd132sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(13, [$C4,$E2,$CD,$9D,$11                               ] , 'vfnmadd132sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(14, [$C4,$E2,$CD,$AD,$D4                               ] , 'vfnmadd213sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(15, [$C4,$E2,$CD,$AD,$11                               ] , 'vfnmadd213sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(16, [$C4,$E2,$CD,$BD,$D4                               ] , 'vfnmadd231sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(17, [$C4,$E2,$CD,$BD,$11                               ] , 'vfnmadd231sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(18, [$C4,$E2,$CD,$9F,$D4                               ] , 'vfnmsub132sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(19, [$C4,$E2,$CD,$9F,$11                               ] , 'vfnmsub132sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(20, [$C4,$E2,$CD,$AF,$D4                               ] , 'vfnmsub213sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(21, [$C4,$E2,$CD,$AF,$11                               ] , 'vfnmsub213sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(22, [$C4,$E2,$CD,$BF,$D4                               ] , 'vfnmsub231sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(23, [$C4,$E2,$CD,$BF,$11                               ] , 'vfnmsub231sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(24, [$C4,$E2,$4D,$99,$D4                               ] , 'vfmadd132ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(25, [$C4,$E2,$4D,$99,$11                               ] , 'vfmadd132ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(26, [$C4,$E2,$4D,$A9,$D4                               ] , 'vfmadd213ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(27, [$C4,$E2,$4D,$A9,$11                               ] , 'vfmadd213ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(28, [$C4,$E2,$4D,$B9,$D4                               ] , 'vfmadd231ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(29, [$C4,$E2,$4D,$B9,$11                               ] , 'vfmadd231ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(30, [$C4,$E2,$4D,$9B,$D4                               ] , 'vfmsub132ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(31, [$C4,$E2,$4D,$9B,$11                               ] , 'vfmsub132ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(32, [$C4,$E2,$4D,$AB,$D4                               ] , 'vfmsub213ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(33, [$C4,$E2,$4D,$AB,$11                               ] , 'vfmsub213ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(34, [$C4,$E2,$4D,$BB,$D4                               ] , 'vfmsub231ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(35, [$C4,$E2,$4D,$BB,$11                               ] , 'vfmsub231ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(36, [$C4,$E2,$4D,$9D,$D4                               ] , 'vfnmadd132ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(37, [$C4,$E2,$4D,$9D,$11                               ] , 'vfnmadd132ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(38, [$C4,$E2,$4D,$AD,$D4                               ] , 'vfnmadd213ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(39, [$C4,$E2,$4D,$AD,$11                               ] , 'vfnmadd213ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(40, [$C4,$E2,$4D,$BD,$D4                               ] , 'vfnmadd231ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(41, [$C4,$E2,$4D,$BD,$11                               ] , 'vfnmadd231ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(42, [$C4,$E2,$4D,$9F,$D4                               ] , 'vfnmsub132ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(43, [$C4,$E2,$4D,$9F,$11                               ] , 'vfnmsub132ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(44, [$C4,$E2,$4D,$AF,$D4                               ] , 'vfnmsub213ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(45, [$C4,$E2,$4D,$AF,$11                               ] , 'vfnmsub213ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(46, [$C4,$E2,$4D,$BF,$D4                               ] , 'vfnmsub231ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(47, [$C4,$E2,$4D,$BF,$11                               ] , 'vfnmsub231ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(48, [$C4,$E2,$CD,$99,$D4                               ] , 'vfmadd132sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(49, [$C4,$E2,$CD,$99,$11                               ] , 'vfmadd132sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(50, [$C4,$E2,$CD,$99,$11                               ] , 'vfmadd132sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(51, [$C4,$E2,$CD,$A9,$D4                               ] , 'vfmadd213sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(52, [$C4,$E2,$CD,$A9,$11                               ] , 'vfmadd213sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(53, [$C4,$E2,$CD,$A9,$11                               ] , 'vfmadd213sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(54, [$C4,$E2,$CD,$B9,$D4                               ] , 'vfmadd231sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(55, [$C4,$E2,$CD,$B9,$11                               ] , 'vfmadd231sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(56, [$C4,$E2,$CD,$B9,$11                               ] , 'vfmadd231sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(57, [$C4,$E2,$CD,$9B,$D4                               ] , 'vfmsub132sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(58, [$C4,$E2,$CD,$9B,$11                               ] , 'vfmsub132sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(59, [$C4,$E2,$CD,$9B,$11                               ] , 'vfmsub132sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(60, [$C4,$E2,$CD,$AB,$D4                               ] , 'vfmsub213sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(61, [$C4,$E2,$CD,$AB,$11                               ] , 'vfmsub213sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(62, [$C4,$E2,$CD,$AB,$11                               ] , 'vfmsub213sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(63, [$C4,$E2,$CD,$BB,$D4                               ] , 'vfmsub231sd  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(64, [$C4,$E2,$CD,$BB,$11                               ] , 'vfmsub231sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(65, [$C4,$E2,$CD,$BB,$11                               ] , 'vfmsub231sd  xmm2,xmm6,qword [rcx]'               );
  TestCase.testcase(66, [$C4,$E2,$CD,$9D,$D4                               ] , 'vfnmadd132sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(67, [$C4,$E2,$CD,$9D,$11                               ] , 'vfnmadd132sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(68, [$C4,$E2,$CD,$9D,$11                               ] , 'vfnmadd132sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(69, [$C4,$E2,$CD,$AD,$D4                               ] , 'vfnmadd213sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(70, [$C4,$E2,$CD,$AD,$11                               ] , 'vfnmadd213sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(71, [$C4,$E2,$CD,$AD,$11                               ] , 'vfnmadd213sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(72, [$C4,$E2,$CD,$BD,$D4                               ] , 'vfnmadd231sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(73, [$C4,$E2,$CD,$BD,$11                               ] , 'vfnmadd231sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(74, [$C4,$E2,$CD,$BD,$11                               ] , 'vfnmadd231sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(75, [$C4,$E2,$CD,$9F,$D4                               ] , 'vfnmsub132sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(76, [$C4,$E2,$CD,$9F,$11                               ] , 'vfnmsub132sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(77, [$C4,$E2,$CD,$9F,$11                               ] , 'vfnmsub132sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(78, [$C4,$E2,$CD,$AF,$D4                               ] , 'vfnmsub213sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(79, [$C4,$E2,$CD,$AF,$11                               ] , 'vfnmsub213sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(80, [$C4,$E2,$CD,$AF,$11                               ] , 'vfnmsub213sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(81, [$C4,$E2,$CD,$BF,$D4                               ] , 'vfnmsub231sd  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(82, [$C4,$E2,$CD,$BF,$11                               ] , 'vfnmsub231sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(83, [$C4,$E2,$CD,$BF,$11                               ] , 'vfnmsub231sd  xmm2,xmm6,qword [rcx]'              );
  TestCase.testcase(84, [$C4,$E2,$4D,$99,$D4                               ] , 'vfmadd132ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(85, [$C4,$E2,$4D,$99,$11                               ] , 'vfmadd132ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(86, [$C4,$E2,$4D,$99,$11                               ] , 'vfmadd132ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(87, [$C4,$E2,$4D,$A9,$D4                               ] , 'vfmadd213ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(88, [$C4,$E2,$4D,$A9,$11                               ] , 'vfmadd213ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(89, [$C4,$E2,$4D,$A9,$11                               ] , 'vfmadd213ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(90, [$C4,$E2,$4D,$B9,$D4                               ] , 'vfmadd231ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(91, [$C4,$E2,$4D,$B9,$11                               ] , 'vfmadd231ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(92, [$C4,$E2,$4D,$B9,$11                               ] , 'vfmadd231ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(93, [$C4,$E2,$4D,$9B,$D4                               ] , 'vfmsub132ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(94, [$C4,$E2,$4D,$9B,$11                               ] , 'vfmsub132ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(95, [$C4,$E2,$4D,$9B,$11                               ] , 'vfmsub132ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(96, [$C4,$E2,$4D,$AB,$D4                               ] , 'vfmsub213ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(97, [$C4,$E2,$4D,$AB,$11                               ] , 'vfmsub213ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(98, [$C4,$E2,$4D,$AB,$11                               ] , 'vfmsub213ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(99, [$C4,$E2,$4D,$BB,$D4                               ] , 'vfmsub231ss  xmm2,xmm6,xmm4'                      );
  TestCase.testcase(100, [$C4,$E2,$4D,$BB,$11                               ] , 'vfmsub231ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(101, [$C4,$E2,$4D,$BB,$11                               ] , 'vfmsub231ss  xmm2,xmm6,dword [rcx]'               );
  TestCase.testcase(102, [$C4,$E2,$4D,$9D,$D4                               ] , 'vfnmadd132ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(103, [$C4,$E2,$4D,$9D,$11                               ] , 'vfnmadd132ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(104, [$C4,$E2,$4D,$9D,$11                               ] , 'vfnmadd132ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(105, [$C4,$E2,$4D,$AD,$D4                               ] , 'vfnmadd213ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(106, [$C4,$E2,$4D,$AD,$11                               ] , 'vfnmadd213ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(107, [$C4,$E2,$4D,$AD,$11                               ] , 'vfnmadd213ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(108, [$C4,$E2,$4D,$BD,$D4                               ] , 'vfnmadd231ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(109, [$C4,$E2,$4D,$BD,$11                               ] , 'vfnmadd231ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(110, [$C4,$E2,$4D,$BD,$11                               ] , 'vfnmadd231ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(111, [$C4,$E2,$4D,$9F,$D4                               ] , 'vfnmsub132ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(112, [$C4,$E2,$4D,$9F,$11                               ] , 'vfnmsub132ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(113, [$C4,$E2,$4D,$9F,$11                               ] , 'vfnmsub132ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(114, [$C4,$E2,$4D,$AF,$D4                               ] , 'vfnmsub213ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(115, [$C4,$E2,$4D,$AF,$11                               ] , 'vfnmsub213ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(116, [$C4,$E2,$4D,$AF,$11                               ] , 'vfnmsub213ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(117, [$C4,$E2,$4D,$BF,$D4                               ] , 'vfnmsub231ss  xmm2,xmm6,xmm4'                     );
  TestCase.testcase(118, [$C4,$E2,$4D,$BF,$11                               ] , 'vfnmsub231ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.testcase(119, [$C4,$E2,$4D,$BF,$11                               ] , 'vfnmsub231ss  xmm2,xmm6,dword [rcx]'              );
  TestCase.Stop();
  TestCase.SaveToFile('../../../log/x64.fma_scalar.log');
end;

end.