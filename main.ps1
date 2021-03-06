#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 05.10.2020 16:18
# Generated By: Luis Lüscher
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$linkLabel1 = New-Object System.Windows.Forms.LinkLabel
$label2 = New-Object System.Windows.Forms.Label
$label1 = New-Object System.Windows.Forms.Label
$btn_cancel1 = New-Object System.Windows.Forms.Button
$btn_log = New-Object System.Windows.Forms.Button
$btn_csv = New-Object System.Windows.Forms.Button
$btn_user = New-Object System.Windows.Forms.Button
$btn_group = New-Object System.Windows.Forms.Button
$btn_ou = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#Start Write-log function
    $path = "C:\Users\Administrator\Documents\scripts\ad_manager\Log"
    $date = get-date -Format "yyyy-MM-dd"
    $file = ("Log_" + $date + ".log")
    $logfile = $path + "\" + $file

    function Write-Log([string]$logtext, [int]$level = 0) {
        $logdate = get-date -Format "yyyy-MM-dd HH:mm:ss"
        if ($level -eq 0) {
            $logtext = "[INFO] " + $logtext
            $text = "[" + $logdate + "] - " + $logtext
        }
        $text >> $logfile
    }
    Write-Log "Starting the application"


#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$btn_user_Click= 
{
.\add_user.ps1

Write-Log "Started add_user.ps1"

}

$btn_csv_Click= 
{
.\add_via_csv.ps1

Write-Log "Started add_via_csv.ps1"

}

$btn_log_Click= 
{
Invoke-Item "..\ad_manager\Log\Read-Me.txt"
Write-Log "Read-Me.txt has been opened"

}

$btn_group_click= 
{
.\showusergr.ps1
Write-Log "Started showusergr.ps1"

}

$btn_ou_Click= 
{
.\showuserou.ps1
Write-Log "Started showuserou.ps1"

}

$btn_cancel1_Click= 
{

$form1.Close()
Write-Log "Form has been closed"

}

$handler_form1_Load= 
{
#TODO: Place custom script here

}

$handler_linkLabel1_LinkClicked= 
{
    Start-Process -FilePath 'C:\Program Files\Google\Chrome\Application\chrome.exe' -ArgumentList 'https://luis-luescher.com'
    Write-Log "Opened website www.luis-luescher.com"

}

$handler_label1_Click= 
{
#TODO: Place custom script here

}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 419
$System_Drawing_Size.Width = 342
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "AD-Manager M159"
$form1.add_Load($handler_form1_Load)

$linkLabel1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 81
$System_Drawing_Point.Y = 374
$linkLabel1.Location = $System_Drawing_Point
$linkLabel1.Name = "linkLabel1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 74
$linkLabel1.Size = $System_Drawing_Size
$linkLabel1.TabIndex = 8
$linkLabel1.TabStop = $True
$linkLabel1.Text = "Luis Lüscher"
$linkLabel1.add_LinkClicked($handler_linkLabel1_LinkClicked)

$form1.Controls.Add($linkLabel1)

$label2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 34
$System_Drawing_Point.Y = 374
$label2.Location = $System_Drawing_Point
$label2.Name = "label2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 49
$label2.Size = $System_Drawing_Size
$label2.TabIndex = 7
$label2.Text = "Made by"

$form1.Controls.Add($label2)

$label1.DataBindings.DefaultDataSourceUpdateMode = 0
$label1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",24,0,3,1)

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 72
$System_Drawing_Point.Y = 52
$label1.Location = $System_Drawing_Point
$label1.Name = "label1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 43
$System_Drawing_Size.Width = 199
$label1.Size = $System_Drawing_Size
$label1.TabIndex = 6
$label1.Text = "AD-Manager"
$label1.add_Click($handler_label1_Click)

$form1.Controls.Add($label1)


$btn_cancel1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 175
$System_Drawing_Point.Y = 374
$btn_cancel1.Location = $System_Drawing_Point
$btn_cancel1.Name = "btn_cancel1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 33
$System_Drawing_Size.Width = 133
$btn_cancel1.Size = $System_Drawing_Size
$btn_cancel1.TabIndex = 5
$btn_cancel1.Text = "Cancel"
$btn_cancel1.UseVisualStyleBackColor = $True
$btn_cancel1.add_Click($btn_cancel1_Click)

$form1.Controls.Add($btn_cancel1)


$btn_log.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 34
$System_Drawing_Point.Y = 283
$btn_log.Location = $System_Drawing_Point
$btn_log.Name = "btn_log"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 33
$System_Drawing_Size.Width = 274
$btn_log.Size = $System_Drawing_Size
$btn_log.TabIndex = 4
$btn_log.Text = "Read-Me"
$btn_log.UseVisualStyleBackColor = $True
$btn_log.add_Click($btn_log_Click)

$form1.Controls.Add($btn_log)


$btn_csv.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 34
$System_Drawing_Point.Y = 243
$btn_csv.Location = $System_Drawing_Point
$btn_csv.Name = "btn_csv"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 34
$System_Drawing_Size.Width = 274
$btn_csv.Size = $System_Drawing_Size
$btn_csv.TabIndex = 3
$btn_csv.Text = "CSV-Import"
$btn_csv.UseVisualStyleBackColor = $True
$btn_csv.add_Click($btn_csv_Click)

$form1.Controls.Add($btn_csv)


$btn_user.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 34
$System_Drawing_Point.Y = 202
$btn_user.Location = $System_Drawing_Point
$btn_user.Name = "btn_user"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 35
$System_Drawing_Size.Width = 274
$btn_user.Size = $System_Drawing_Size
$btn_user.TabIndex = 2
$btn_user.Text = "User"
$btn_user.UseVisualStyleBackColor = $True
$btn_user.add_Click($btn_user_Click)

$form1.Controls.Add($btn_user)


$btn_group.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 34
$System_Drawing_Point.Y = 161
$btn_group.Location = $System_Drawing_Point
$btn_group.Name = "btn_group"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 35
$System_Drawing_Size.Width = 274
$btn_group.Size = $System_Drawing_Size
$btn_group.TabIndex = 1
$btn_group.Text = "Group"
$btn_group.UseVisualStyleBackColor = $True
$btn_group.add_Click($btn_group_click)

$form1.Controls.Add($btn_group)


$btn_ou.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 34
$System_Drawing_Point.Y = 120
$btn_ou.Location = $System_Drawing_Point
$btn_ou.Name = "btn_ou"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 35
$System_Drawing_Size.Width = 274
$btn_ou.Size = $System_Drawing_Size
$btn_ou.TabIndex = 0
$btn_ou.Text = "OU"
$btn_ou.UseVisualStyleBackColor = $True
$btn_ou.add_Click($btn_ou_Click)

$form1.Controls.Add($btn_ou)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
