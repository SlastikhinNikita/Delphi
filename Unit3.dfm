object Form3: TForm3
  Left = 221
  Top = 0
  AutoSize = True
  Caption = 'Form3'
  ClientHeight = 190
  ClientWidth = 185
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 2
    Width = 105
    Height = 81
    Visible = False
  end
  object Label1: TLabel
    Left = 8
    Top = 89
    Width = 17
    Height = 13
    Caption = '0%'
  end
  object Label2: TLabel
    Left = 8
    Top = 108
    Width = 17
    Height = 13
    Caption = '0%'
  end
  object Label3: TLabel
    Left = 8
    Top = 127
    Width = 17
    Height = 13
    Caption = '0%'
  end
  object Label4: TLabel
    Left = 8
    Top = 146
    Width = 17
    Height = 13
    Caption = '0%'
  end
  object Button1: TButton
    Left = 0
    Top = 165
    Width = 185
    Height = 25
    Caption = 'Start!'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 44
    Top = 86
    Width = 33
    Height = 21
    TabOrder = 1
    Text = '0'
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 44
    Top = 105
    Width = 33
    Height = 21
    TabOrder = 2
    Text = '0'
    OnChange = Edit2Change
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 44
    Top = 124
    Width = 33
    Height = 21
    TabOrder = 3
    Text = '0'
    OnChange = Edit3Change
    OnKeyPress = Edit1KeyPress
  end
  object ListBox1: TListBox
    Left = 83
    Top = 112
    Width = 41
    Height = 37
    ItemHeight = 13
    TabOrder = 4
    Visible = False
  end
  object Edit4: TEdit
    Left = 0
    Top = 2
    Width = 105
    Height = 21
    TabOrder = 5
    Text = '000000'
    OnKeyPress = Edit1KeyPress
  end
  object Edit5: TEdit
    Left = 0
    Top = 22
    Width = 105
    Height = 21
    TabOrder = 6
    Text = '000000'
    OnKeyPress = Edit1KeyPress
  end
  object Edit6: TEdit
    Left = 0
    Top = 42
    Width = 105
    Height = 21
    TabOrder = 7
    Text = '000000'
    OnKeyPress = Edit1KeyPress
  end
  object Edit7: TEdit
    Left = 0
    Top = 62
    Width = 105
    Height = 21
    TabOrder = 8
    Text = '000000'
    OnKeyPress = Edit1KeyPress
  end
  object Button4: TButton
    Left = 104
    Top = 0
    Width = 81
    Height = 83
    Caption = 'Set Color'
    TabOrder = 9
    OnClick = Button4Click
  end
  object CheckBox1: TCheckBox
    Left = 104
    Top = 112
    Width = 81
    Height = 17
    Caption = 'Random all ?'
    TabOrder = 10
    OnClick = CheckBox1Click
  end
end
