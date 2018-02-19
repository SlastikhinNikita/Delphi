unit Unit3;

interface

uses
  Winapi.Windows,
  //Winapi.Messages,
  System.SysUtils,
  System.UITypes,
  System.Types,
  //Vcl.Graphics,
  //Vcl.Controls,
  Vcl.Forms,
  //Vcl.Dialogs,
  //Vcl.ExtCtrls,
  //Vcl.StdCtrls,
  //Vcl.ActnMan,
  Vcl.ActnColorMaps, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Dialogs, Vcl.Controls,
  System.Classes,  Vcl.Graphics, Vcl.Mask;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ListBox1: TListBox;
    Label1: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
procent1 : Extended;
procent2 : Extended;
procent3 : Extended;
implementation

{$R *.dfm}

function ColorToHex(rgb:TColor):String;
begin
  Result:=Format('%.2x%.2x%.2x', [byte(rgb),byte(rgb shr 8),byte(rgb shr 16)]);
end;

function HexToTColor(sColor : string) : TColor;
begin
   Result :=
     RGB(
       StrToInt('$'+Copy(sColor, 1, 2)),
       StrToInt('$'+Copy(sColor, 3, 2)),
       StrToInt('$'+Copy(sColor, 5, 2))
     ) ;
end;


function SaveBitmap(ImageObject : TImage) : boolean;
 var
  Bitmap: TBitmap;
  Source: TRect;
  Dest: TRect;
  Width,Height: integer;
begin
  Bitmap := TBitmap.Create;
  try
    with Bitmap do
    begin
      Width := ImageObject.Width;
      Height := ImageObject.Height;
      Dest := Rect(0, 0, Width, Height);
    end;
    with ImageObject.Canvas do
      Source := Rect(0, 0, ImageObject.Width, ImageObject.Height);
      Bitmap.Canvas.CopyRect(Dest, ImageObject.Canvas, Source);
      Bitmap.SaveToFile('MYFILE.BMP');
  finally
    Bitmap.Free;
    Result := true;
  end;
end;








procedure TForm3.Button1Click(Sender: TObject);
var
a,b,ix,iy : integer;
sdvig: bool;
all, i,temp : integer;
begin
  Form3.AutoSize:=False;
  //Form3.Visible:=false;
  Image1.Height:=1040;
  Image1.Width:=1040;
  Form3.Height:=1040;
  Form3.Width:=1040;



if Checkbox1.Checked then
begin
with Image1.Canvas do
  begin
  Pen.Width:=1; //��������� ������� ����
  Pen.Color:=Edit4.Color; //��������� ����� ���� (������� �����������)
  Brush.Color:=Edit4.Color; //��������� ����� ������� (������� �����������)
  PolyGon([Point(1040,0),Point(1040,1040),Point(0,1040),Point(0,0)]);
   ix:= 1;
    a:= 0;
    b:=0;
    iy:= 1;
    sdvig:=false;
   while b <> 38 do
   begin
      while a <> 32 do
      begin
          case random(4) of
           0: Brush.Color:= Edit4.Color;
           1: Brush.Color:= Edit5.Color;
           2: Brush.Color:= Edit6.Color;
           3: Brush.Color:= Edit7.Color;
          end;
          Pen.Color:=Brush.Color;
          PolyGon([Point(0+ix,10+iy),Point(15+ix,0+iy),Point(30+ix,10+iy),Point(30+ix,25+iy),Point(15+ix,35+iy),Point(0+ix,25+iy)]);
          ix:=ix + 32;
          a:=a+1;
      end;
      if sdvig=false then
        begin
        ix:=16;
        sdvig:=true;
        end
        else
        begin
        ix:=0;
        sdvig:=false;
        end;
      b:=b+1;
      a:=0;
      iy:=iy+27;
      end;
end;
end
else
begin

ListBox1.Clear;
I:=0;
while i <> StrToInt(Edit1.Text) do
begin
  ListBox1.Items.Add(ColorToHex(Edit5.Color));
i:=i+1;
end;
I:=0;
while i <> StrToInt(Edit2.Text) do
begin
  ListBox1.Items.Add(ColorToHex(Edit6.Color));
i:=i+1;
end;
I:=0;
while i <> StrToInt(Edit3.Text) do
begin
  ListBox1.Items.Add(ColorToHex(Edit7.Color));
i:=i+1;
end;
all:=StrToInt(Edit1.Text)+StrToInt(Edit2.Text)+StrToInt(Edit3.Text);
I:=0;
while i <> (1216-all) do
begin
  ListBox1.Items.Add(ColorToHex(Edit4.Color));
i:=i+1;
end;
ListBox1.Items.SaveToFile('1.txt');

            {
 Form3.AutoSize:=False;
 // Form3.Visible:=false;
  Image1.Height:=1040;
  Image1.Width:=1040;
  Form3.Height:=1040;
  Form3.Width:=1040;

//if Checkbox1.Checked then
//begin

         }
with Image1.Canvas do
  begin
  Pen.Width:=1; //��������� ������� ����
  Pen.Color:=Edit4.Color; //��������� ����� ���� (������� �����������)
  Brush.Color:=Edit4.Color; //��������� ����� ������� (������� �����������)
  PolyGon([Point(1040,0),Point(1040,1040),Point(0,1040),Point(0,0)]);
   ix:= 1;
    a:= 0;
    b:=0;
    iy:= 1;
    sdvig:=false;
   while b <> 38 do
   begin
      while a <> 32 do
      begin



       //   case random(4) of
        //   0: Brush.Color:= Edit4.Color;
       //    1: Brush.Color:= Edit5.Color;
       //    2: Brush.Color:= Edit6.Color;
      //     3: Brush.Color:= Edit7.Color;
       //   end;
          if ListBox1.Items.Count > 1 then
              begin
          temp:=Random(ListBox1.Items.Count-1);
          //if temp = 0 then temp:=1;
          ListBox1.Items.Delete(temp);
          Brush.Color:=HexToTColor(ListBox1.Items[temp]);
              end;// else  Brush.Color:=HexToTColor(Edit4.Text);


          Pen.Color:=Brush.Color;
          PolyGon([Point(0+ix,10+iy),Point(15+ix,0+iy),Point(30+ix,10+iy),Point(30+ix,25+iy),Point(15+ix,35+iy),Point(0+ix,25+iy)]);
          ix:=ix + 32;
          a:=a+1;
      end;
      if sdvig=false then
        begin
        ix:=16;
        sdvig:=true;
        end
        else
        begin
        ix:=0;
        sdvig:=false;
        end;
      b:=b+1;
      a:=0;
      iy:=iy+27;
      end;
end;


end;


  SaveBitmap(Image1);
  Form3.AutoSize:=true;
end;


procedure TForm3.Button3Click(Sender: TObject);
var
all, i,temp : integer;
 a,b,ix,iy : integer;
sdvig: bool;
begin
//end
//else
///begin
//end;


  SaveBitmap(Image1);
 // Close();
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Edit4.Color:=HexToTColor(Edit4.Text);
Edit5.Color:=HexToTColor(Edit5.Text);
Edit6.Color:=HexToTColor(Edit6.Text);
Edit7.Color:=HexToTColor(Edit7.Text);
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
    Edit1.Enabled:=false
  else
    Edit1.Enabled:=true;
  Edit2.Enabled:=Edit1.Enabled;
  Edit3.Enabled:=Edit2.Enabled;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
if StrToInt(Edit1.Text) + StrToInt(Edit2.Text) + StrToInt(Edit3.Text) > 1216 then
Edit1.Text:= '0';
procent1:= (StrToInt(Edit1.Text) / 1216) * 100;

Label1.Caption:= Copy(FloatToStr(procent1),1,4) + ' %';
Label4.Caption:= Copy(FloatToStr(procent1+procent2+procent3),1,4) + ' % from 1216';
end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8,'A'..'F', 'a'..'f']) then Key:=#0;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
if StrToInt(Edit1.Text) + StrToInt(Edit2.Text) + StrToInt(Edit3.Text) > 1216 then
Edit2.Text:= '0';
procent2:=  (StrToInt(Edit2.Text) / 1216) * 100;
Label2.Caption:= Copy(FloatToStr(procent2),1,4) + ' %';
Label4.Caption:=  Copy(FloatToStr(procent1+procent2+procent3),1,4) + ' % from 1216';
end;

procedure TForm3.Edit3Change(Sender: TObject);
begin
if StrToInt(Edit1.Text) + StrToInt(Edit2.Text) + StrToInt(Edit3.Text) > 1216 then Edit3.Text:= '0';
procent3:=  (StrToInt(Edit3.Text) / 1216) * 100;
Label3.Caption:= Copy(FloatToStr(procent3),1,4) + ' %';
Label4.Caption:=  Copy(FloatToStr(procent1+procent2+procent3),1,4) + ' % from 1216';
end;


procedure TForm3.FormCreate(Sender: TObject);
begin
Form3.Top:=(screen.Height - Form3.Height) div 2;
Form3.Left:= (screen.Width - Form3.Width) div 2;
end;

end.