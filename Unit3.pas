unit Unit3;

interface

uses Unit2;  // �������� ���� � ���������
var StartList, EndList: PElem; // ������ � ����� ������

implementation
  // �����

initialization
  StartList:=nil;  // ������������� ����������
  EndList:=nil;
finalization
  FreeList(StartList, EndList);  // ������������ ������
end.

