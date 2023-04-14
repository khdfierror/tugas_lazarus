unit tugas_akhir_1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioGroup1: TRadioGroup;
    total: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  angka: real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  try

  angka := StrToFloat(edit1.Text);


  if RadioButton1.Checked = true then total.Caption:= FloatToStr(angka * 15000)
  else if RadioButton2.Checked = true then total.Caption:= FloatToStr(angka * 5000)
  else if RadioButton3.Checked = true then total.Caption:= FloatToStr(angka * 2000)
  else showMessage('Pilih Metode Pencucian');

  except
      showMessage('Masukkan Angka');
  end;



end;

end.

