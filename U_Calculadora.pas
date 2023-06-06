unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
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
    EdtiUm: TEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}




end.
