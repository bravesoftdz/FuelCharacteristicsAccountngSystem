unit unEmployeeAdministrationCardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unEmployeeCardForm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, unEmployeeLogOnInfoCardFrame,
  unEmployeeCardFrame, StdCtrls, cxButtons, CardFormViewModel,
  EmployeeAdministrationCardFormViewModel;

type
  TEmployeeAdministrationCardForm = class(TEmployeeCardForm)
    EmployeeLogOnInfoCardFrame: TEmployeeLogOnInfoCardFrame;
    procedure EmployeeCardFrameSpecialityComboBoxChange(Sender: TObject);
    procedure EmployeeLogOnInfoCardFrameRoleComboBoxChange(Sender: TObject);
  private

  protected

    procedure FillControlsByViewModel(ViewModel: TCardFormViewModel); override;
    procedure FillViewModelByControls(ViewModel: TCardFormViewModel); override;

    procedure FillRoleNameComboBoxFrom(ViewModel: TCardFormViewModel);
    
  protected

    function IsInputDataValid: Boolean; override;
    function IsRoleNameSelected: Boolean;
    
  public

  end;

var
  EmployeeAdministrationCardForm: TEmployeeAdministrationCardForm;

implementation

{$R *.dfm}

procedure TEmployeeAdministrationCardForm.EmployeeCardFrameSpecialityComboBoxChange(
  Sender: TObject);
var SelectedSpecialityIndex: Integer;
begin

  inherited;

  SelectedSpecialityIndex :=
    EmployeeLogOnInfoCardFrame.RoleComboBox.Items.IndexOf(
      EmployeeCardFrame.SpecialityComboBox.Items[
        EmployeeCardFrame.SpecialityComboBox.ItemIndex
      ]
    );

  if SelectedSpecialityIndex <> -1 then
    EmployeeLogOnInfoCardFrame.RoleComboBox.ItemIndex := SelectedSpecialityIndex;
  
end;

procedure TEmployeeAdministrationCardForm.EmployeeLogOnInfoCardFrameRoleComboBoxChange(
  Sender: TObject);
begin

  IsRoleNameSelected;

end;

procedure TEmployeeAdministrationCardForm.FillControlsByViewModel(
  ViewModel: TCardFormViewModel);
begin

  inherited;

  with ViewModel as TEmployeeAdministrationCardFormViewModel do begin

    if not Login.Visible then
      EmployeeLogOnInfoCardFrame.LoginEdit.Visible := False

    else begin

      EmployeeLogOnInfoCardFrame.LoginEdit.Text := VarToStr(Login.Value);
      EmployeeLogOnInfoCardFrame.LoginEdit.ReadOnly := Login.ReadOnly;
      
    end;

    if not Password.Visible then
      EmployeeLogOnInfoCardFrame.PasswordEdit.Visible := False

    else begin

      EmployeeLogOnInfoCardFrame.PasswordEdit.Text := VarToStr(Password.Value);
      EmployeeLogOnInfoCardFrame.PasswordEdit.ReadOnly := Password.ReadOnly;
      
    end;

    FillRoleNameComboBoxFrom(ViewModel);

  end;

end;

procedure TEmployeeAdministrationCardForm.FillRoleNameComboBoxFrom(
  ViewModel: TCardFormViewModel);
var RoleName: String;
begin
  
  with ViewModel as TEmployeeAdministrationCardFormViewModel do begin

    if not CurrentRoleName.Visible then  begin

      EmployeeLogOnInfoCardFrame.RoleComboBox.Visible := False;
      Exit;

    end;

    for RoleName in RoleNames do
      EmployeeLogOnInfoCardFrame.RoleComboBox.AddItem(RoleName, nil);

    EmployeeLogOnInfoCardFrame.RoleComboBox.ItemIndex :=
      EmployeeLogOnInfoCardFrame.RoleComboBox.Items.IndexOf(
        VarToStr(CurrentRoleName.Value)
      );

    if CurrentRoleName.ReadOnly then
      SetComboBoxAsReadOnly(EmployeeLogOnInfoCardFrame.RoleComboBox);

  end;

end;

procedure TEmployeeAdministrationCardForm.FillViewModelByControls(
  ViewModel: TCardFormViewModel);
begin

  inherited;
  
  with ViewModel as TEmployeeAdministrationCardFormViewModel do begin

    if Login.Visible then
      Login.Value := EmployeeLogOnInfoCardFrame.LoginEdit.Text;

    if Password.Visible then
      Password.Value := Trim(EmployeeLogOnInfoCardFrame.PasswordEdit.Text);

    if CurrentRoleName.Visible then begin

      CurrentRoleName.Value :=
        EmployeeLogOnInfoCardFrame.RoleComboBox.Items[
          EmployeeLogOnInfoCardFrame.RoleComboBox.ItemIndex
        ];
        
    end;

  end;

end;

function TEmployeeAdministrationCardForm.IsInputDataValid: Boolean;
var IsLoginValid, IsRoleNameValid: Boolean;
begin

  Result := inherited IsInputDataValid;

  IsLoginValid := EmployeeLogOnInfoCardFrame.LoginEdit.IsValid;
  IsRoleNameValid := IsRoleNameSelected;

  Result := Result and IsLoginValid and IsRoleNameValid;
  
end;

function TEmployeeAdministrationCardForm.IsRoleNameSelected: Boolean;
begin

  Result :=
    IsComboBoxItemSelected(
      EmployeeLogOnInfoCardFrame.RoleComboBox,
      '������� ������������ ���� ����������',
      EmployeeCardFrame.NameEdit.InvalidColor
    );

end;

end.
