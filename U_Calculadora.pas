unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    BtnUm: TButton;
    BtnDois: TButton;
    BtnTres: TButton;
    BtnDividir: TButton;
    BtnQuatro: TButton;
    BtnCinco: TButton;
    BtnSeis: TButton;
    BtnMultiplicar: TButton;
    BtnSete: TButton;
    BtnOito: TButton;
    BtnNove: TButton;
    BtnSubtrair: TButton;
    BtnPonto: TButton;
    BtnZero: TButton;
    BtnIgual: TButton;
    BtnSoma: TButton;
    Layout1: TLayout;
    CaixaTopo: TLayout;
    EditDois: TEdit;
    EditUm: TEdit;
    LblOperador: TLabel;
    LblResultado: TLabel;
    EditResultado: TEdit;
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnSubtrairClick(Sender: TObject);
    procedure BtnMultiplicarClick(Sender: TObject);
    procedure BtnDividirClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.BtnIgualClick(Sender: TObject);
var
  valorUm, valorDois, resultado: Double;
var
  resultadoSwit: Char;

begin
  valorUm := strToFloat(EditUm.Text);
  valorDois := strToFloat(EditDois.Text);

  { if (LblOperador.Text = '+') then
    begin
    resultado := valorUm + valorDois;
    // showmessage(floatToStr(resultado));
    EditResultado.Text := resultado.ToString;
    end
    else if (LblOperador.Text = '-') then
    begin
    resultado := valorUm - valorDois;
    // showmessage(floatToStr(resultado));
    EditResultado.Text := resultado.ToString;
    end
    else if (LblOperador.Text = '*') then
    begin
    resultado := valorUm * valorDois;
    // showmessage(floatToStr(resultado));
    EditResultado.Text := resultado.ToString;
    end
    else if (LblOperador.Text = '/') then
    begin
    resultado := valorUm / valorDois;
    // showmessage(floatToStr(resultado));
    EditResultado.Text := resultado.ToString;
    end; }

  resultadoSwit := LblOperador.Text[1];
  case resultadoSwit of
    '+':
      begin
        resultado := valorUm + valorDois;
        // showmessage(floatToStr(resultado));
        EditResultado.Text := resultado.ToString;
      end;
    '-':
      begin
        resultado := valorUm - valorDois;
        // showmessage(floatToStr(resultado));
        EditResultado.Text := resultado.ToString;
      end;
    '*':
      begin
        resultado := valorUm * valorDois;
        // showmessage(floatToStr(resultado));
        EditResultado.Text := resultado.ToString;
      end;
    '/':
      begin
        resultado := valorUm / valorDois;
        // showmessage(floatToStr(resultado));
        EditResultado.Text := resultado.ToString;
      end;
  end;

end;

procedure TForm1.BtnDividirClick(Sender: TObject);
begin
  LblOperador.Text := '/';
  BtnSoma.Enabled := true;
  BtnSubtrair.Enabled := true;
  BtnMultiplicar.Enabled := true;
  BtnDividir.Enabled := false;
end;

procedure TForm1.BtnMultiplicarClick(Sender: TObject);
begin
  LblOperador.Text := '*';
  BtnSoma.Enabled := true;
  BtnSubtrair.Enabled := true;
  BtnMultiplicar.Enabled := false;
  BtnDividir.Enabled := true;
end;

procedure TForm1.BtnSomaClick(Sender: TObject);
begin
  LblOperador.Text := '+';
  BtnSoma.Enabled := false;
  BtnSubtrair.Enabled := true;
  BtnMultiplicar.Enabled := true;
  BtnDividir.Enabled := true;
end;

procedure TForm1.BtnSubtrairClick(Sender: TObject);
begin
  LblOperador.Text := '-';
  BtnSoma.Enabled := true;
  BtnSubtrair.Enabled := false;
  BtnMultiplicar.Enabled := true;
  BtnDividir.Enabled := true;
end;

end.
