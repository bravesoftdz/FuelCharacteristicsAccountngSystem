unit unEmployeeCardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogFormUnit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, unCardForm, CardFormViewModel, unEmployeeCardFrame,
  EmployeeCardFormViewModel;

type
  TEmployeeCardForm = class(TCardForm)
    EmployeeCardFrame: TEmployeeCardFrame;
    procedure EmployeeCardFrameSpecialityComboBoxChange(Sender: TObject);
  private

  protected

    procedure FillControlsByViewModel(ViewModel: TCardFormViewModel); override;
    procedure FillViewModelByControls(ViewModel: TCardFormViewModel); override;

    procedure FillSpecialityComboBoxFrom(ViewModel: TCardFormViewModel);

    procedure SetComboBoxAsReadOnly(ComboBox: TComboBox);
    
  protected

    function IsInputDataValid: Boolean; override;
    function IsSpecialitySelected: Boolean;

    function IsComboBoxItemSelected(
      ComboBox: TComboBox;
      const InvalidHint: String;
      const InvalidColor: TColor
    ): Boolean;
    
  public

  end;

var
  EmployeeCardForm: TEmployeeCardForm;

implementation

{$R *.dfm}

{ TEmployeeCardForm }

procedure TEmployeeCardForm.EmployeeCardFrameSpecialityComboBoxChange(
  Sender: TObject);
begin

  IsSpecialitySelected;

end;

procedure TEmployeeCardForm.FillControlsByViewModel(
  ViewModel: TCardFormViewModel);
begin

  inherited;

  with ViewModel as TEmployeeCardFormViewModel do begin

    if not Name.Visible then
      EmployeeCardFrame.NameEdit.Visible := False

    else begin

      EmployeeCardFrame.NameEdit.Text := Name.Value;
      EmployeeCardFrame.NameEdit.ReadOnly := Name.ReadOnly;

    end;

    if not Surname.Visible then
      EmployeeCardFrame.SurnameEdit.Visible := False

    else begin

      EmployeeCardFrame.SurnameEdit.Text := Surname.Value;
      EmployeeCardFrame.SurnameEdit.ReadOnly := Surname.ReadOnly;

    end;

    if not Patronymic.Visible then
      EmployeeCardFrame.PatronymicEdit.Visible := False

    else begin

      EmployeeCardFrame.PatronymicEdit.Text := Patronymic.Value;
      EmployeeCardFrame.PatronymicEdit.ReadOnly := Patronymic.ReadOnly;
      
    end;

    if not BirthDate.Visible then
      EmployeeCardFrame.BirthDateTimePicker.Visible := False

    else begin

      EmployeeCardFrame.BirthDateTimePicker.DateTime := VarToDateTime(BirthDate.Value);
      EmployeeCardFrame.BirthDateTimePicker.Enabled := not BirthDate.ReadOnly;
      
    end;

    FillSpecialityComboBoxFrom(ViewModel);
    
  end;
  
end;

procedure TEmployeeCardForm.FillSpecialityComboBoxFrom(
  ViewModel: TCardFormViewModel);
var SpecialityName: String;
    EmployeeCardFormViewModel: TEmployeeCardFormViewModel;
begin

  EmployeeCardFormViewModel := ViewModel as TEmployeeCardFormViewModel;

  if not EmployeeCardFormViewModel.Speciality.Visible then begin

    EmployeeCardFrame.SpecialityComboBox.Visible := False;
    Exit;

  end;
  
  for SpecialityName in EmployeeCardFormViewModel.Specialities
  do begin

    EmployeeCardFrame.SpecialityComboBox.AddItem(SpecialityName, nil);

  end;

  EmployeeCardFrame.SpecialityComboBox.ItemIndex :=
    EmployeeCardFrame.SpecialityComboBox.Items.IndexOf(
      EmployeeCardFormViewModel.Speciality.Value
    );

  if EmployeeCardFormViewModel.Speciality.ReadOnly then
    SetComboBoxAsReadOnly(EmployeeCardFrame.SpecialityComboBox);
  
end;

procedure TEmployeeCardForm.FillViewModelByControls(
  ViewModel: TCardFormViewModel);
begin

  with ViewModel as TEmployeeCardFormViewModel do begin

    if Name.Visible then
      Name.Value := EmployeeCardFrame.NameEdit.Text;

    if Surname.Visible then
      Surname.Value := EmployeeCardFrame.SurnameEdit.Text;

    if Patronymic.Visible then
      Patronymic.Value := EmployeeCardFrame.PatronymicEdit.Text;

    if BirthDate.Visible then
      BirthDate.Value := EmployeeCardFrame.BirthDateTimePicker.DateTime;

    if Speciality.Visible then begin

      Speciality.Value :=
        EmployeeCardFrame.SpecialityComboBox.Items[
          EmployeeCardFrame.SpecialityComboBox.ItemIndex
        ];

    end;

  end;

end;

function TEmployeeCardForm.IsComboBoxItemSelected(
  ComboBox: TComboBox;
  const InvalidHint: String;
  const InvalidColor: TColor
): Boolean;
begin

  Result := ComboBox.ItemIndex <> -1;

  if not Result then begin

    ComboBox.Color := InvalidColor;
    ComboBox.Hint := InvalidHint;
    ComboBox.ShowHint := True;
    
  end

  else begin

    ComboBox.Color := clWindow;
    ComboBox.ShowHint := False;

  end;

end;

function TEmployeeCardForm.IsInputDataValid: Boolean;
var IsNameValid, IsSurnameValid, IsPatronymicValid,
    IsBirthDateValid, IsSpecialityValid: Boolean;
begin

  IsNameValid := EmployeeCardFrame.NameEdit.IsValid;
  IsSurnameValid := EmployeeCardFrame.SurnameEdit.IsValid;
  IsPatronymicValid := EmployeeCardFrame.PatronymicEdit.IsValid;
  IsSpecialityValid := IsSpecialitySelected;
  
  Result :=
    IsNameValid and
    IsSurnameValid and
    IsPatronymicValid and
    IsSpecialityValid;
  
end;

function TEmployeeCardForm.IsSpecialitySelected: Boolean;
begin

  Result :=
    IsComboBoxItemSelected(
      EmployeeCardFrame.SpecialityComboBox,
      '������� ������������ ��������� ����������',
      EmployeeCardFrame.NameEdit.InvalidColor
    );
  
end;

procedure TEmployeeCardForm.SetComboBoxAsReadOnly(ComboBox: TComboBox);
begin

  ComboBox.Enabled := False;
  ComboBox.Style := csSimple;
  
end;

end.
