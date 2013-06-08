unit Unit2;

interface

type
  PElem = ^TElem;
  TElem = record
      info: integer;
      next: PElem;
  end;

// создать список из одного элемента
procedure CreateList(var ListN, ListK: PElem; r: integer);
// добавить новый элемент перед первым
procedure AddFirst(var ListN: PElem; ListK: PElem; r: integer);
// добавить новый элемент в конец
procedure AddLast(ListN: PElem; var ListK: PElem; r: integer);
// добавить новый элемент в середину после ListC (не в конец)
procedure AddMedium(ListN,ListC,ListK: PElem; r: integer);
// очистить список
procedure FreeList(var ListN, ListK: PElem);

implementation

// создать список из одного элемента
procedure CreateList(var ListN, ListK: PElem; r: integer);
begin
  New(ListN);
  ListK:=ListN; // конец и начало совпадают
  ListN^.info:=r;
  ListN^.next:=nil;
end;

// добавить новый элемент перед первым
procedure AddFirst(var ListN: PElem; ListK: PElem; r: integer);
var Elem: PElem;
begin
  new(Elem);
  Elem^.info:=r;
  Elem^.next:=ListN;
  ListN:=Elem; // теперь он 1-ый
end;

// добавить новый элемент в конец
procedure AddLast(ListN: PElem; var ListK: PElem; r: integer);
begin
  new(ListK^.next);
  ListK^.next^.info:=r;
  ListK^.next^.next:=nil;
  ListK:= ListK^.next; 
end;


// добавить новый элемент в середину после ListC (не в конец)
procedure AddMedium(ListN,ListC,ListK: PElem; r: integer);
var Elem: PElem;
begin
  new(Elem);
  Elem^.info:=r;
  Elem^.next:=ListC^.next; // после него то, что было после ListC
  ListC^.next:=Elem; // а он сам после ListC
end;

// очистить список
procedure FreeList(var ListN, ListK: PElem);
var Elem: PElem;
begin
  Elem:=ListN;
  while Elem<>nil do
  begin
    ListN:=ListN^.next;
    Dispose(Elem);
    Elem:=ListN;
  end;
  ListK:=nil;
end;

end.

