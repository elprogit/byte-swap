unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
 edit1.Text:='';
 edit2.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 // Exit
 Application.Terminate;
 
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 nastavak : String;
begin
 if OpenDialog1.Execute then begin
  edit1.Text:=OpenDialog1.FileName;
  nastavak:=ExtractFileExt(edit1.Text);
  edit2.Text:=ChangeFileExt(edit1.Text,'')+'_hilo_swap'+nastavak;
  edit2.SetFocus;
 end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
 afile: file of byte;
        buffer: array of byte;
        i: Integer;
        sw1,sw2,swt: byte;
        fsize: longint;
 begin
        AssignFile(afile, edit1.Text);
        Reset(afile);
        fsize:=FileSize(afile);
        SetLength(buffer, FileSize(afile));
        For i := 0 to FileSize(afile)-1 do
                Read(afile, buffer[i]);
        CloseFile(afile);

        i:=0;
        repeat
           sw1:=buffer[i];
           sw2:=buffer[i+1];
           swt:=sw1;
           buffer[i]:=sw2;
           buffer[i+1]:=swt;
           inc(i,2);
        until i=fsize;


        AssignFile(afile, edit2.Text);
        Rewrite(afile);
        i:=0;
        repeat
          write(afile,buffer[i]);
          inc(i);
        until i=fsize;
        CloseFile(afile);

        ShowMessage('Swap conversion OK!');







end;

end.
