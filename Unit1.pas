unit Unit1;

interface





uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, ComCtrls, ExtCtrls,Unit2, Unit3;

const minrandom=-150;
const maxrandom=150;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    XPManifest1: TXPManifest;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Button7: TButton;
    OpenDialog1: TOpenDialog;
    Splitter2: TSplitter;
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure AddListItem(var ListN, ListK: PElem; r: integer); // адреса начала и конца списка и R
var ListC: PElem;  // текущий элемент списка
begin
  if ListN = nil then CreateList(ListN, ListK, r)  // если список пуст
   else
  if (0 >r) then AddLast(ListN, ListK, r)  // добавить в конец //or (r=0)
    else
       if 0 < r then AddFirst(ListN, ListK, r)  // добавить в начало
       else
         begin // найти после какого
           ListC:=ListN; // с начала списка
           while ListC^.next^.info < 0 do
             ListC := ListC^.next;
           AddMedium(ListN, ListC, ListK, r)  // добавить после текущего
         end;
end;





procedure TForm1.Button6Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Randomize;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
FreeList(StartList, EndList);
Button5.Enabled:=false;
Button7.Click;
Label3.Caption:='Список пуст';

end;

procedure TForm1.Button3Click(Sender: TObject);
var ListC: PElem;
insert:integer;
begin
if (Edit2.Text <> '') then begin
  insert:=strtoint(Edit2.Text);
  if (insert>=minrandom) and (insert<=maxrandom) then
  begin
  Button5.Enabled:=true;
  AddListItem(StartList, Endlist, insert)
  end
  else
  begin
  (ShowMessage('Некорректное число '));
  Button5.Enabled:=false;
  end;
end
else
begin ShowMessage('Введите число');
Button5.Enabled:=false;
end;
Button7.Click;
Button5.Click;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  ListC: PElem;
  k: integer;
begin
  Memo1.Clear;
  ListC:=StartList;
  if ListC=nil then Memo1.Lines.Add('Пусто');
  k:=0;
  while ListC<>nil do
  begin
    inc(k);
    Memo1.Lines.Add(IntToStr(k)+ '. ' + IntToStr(ListC^.info));
    ListC:=ListC^.next;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var n,i: integer; insert: integer;
begin
  n:=UpDown1.Position;
  for i:=1 to n do
  begin
    insert:= (minrandom + Random(maxrandom-minrandom));
    AddListItem(StartList, EndList, insert);
  
  end;
Button7.Click;
Button5.Enabled:=true;
Button5.Click;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  ListC: PElem;
  flag: boolean;
  k,max:integer;
begin
  ListC:=StartList;
  k:=0;
  max:=0;
  while (ListC<>nil) do begin
  inc(k);          // номер элемента списка
    if abs(ListC^.info)>=max then begin

    max:=abs(ListC^.info);
    Label3.Caption:=IntToStr(k) + ' - последний максимальный';
    ListC:=ListC^.next;
    Label3.Visible:=true;
    end else ListC:=ListC^.next;
    Label3.Visible:=true;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var f:textfile; i:integer;
begin
if OpenDialog1.Execute then begin
  AssignFile(f, OpenDialog1.FileName);
  try
    Reset(f);
   try
    try
      while not eof(f) do begin

      readln(f, i);

        if (i>=minrandom) AND (i<=maxrandom) then
        begin AddListItem(StartList, EndList,i);
        Button5.Enabled:=true;
        Button5.Click;
        end
        else ShowMessage('Неподходящее число в файле: '+ IntToStr(i));
      end;
  except
  ShowMessage('Неправильный формат в файле '+ OpenDialog1.FileName);
  end;
  finally
  CloseFile(f);
  end;
  except
    ShowMessage('Не удалось открыть текстовый файл '+ OpenDialog1.FileName);
end;
 end
 else
  ShowMessage('Текстовый файл не задан! Операция отменена');

Button7.Click;

end;

end.
