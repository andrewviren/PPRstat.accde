﻿Operation =1
Option =0
Where ="(((Left(Right(StringFromGUID([qryAssignedStaff].[AssignedFacilityID]),38),36)) L"
    "ike '*EA4B90A3-274F-4549-8625-14B7B247412'))"
Begin InputTables
    Name ="qryAssignedStaff"
End
Begin OutputColumns
    Expression ="qryAssignedStaff.EmployeeNumber"
    Expression ="qryAssignedStaff.[Full Name]"
End
Begin OrderBy
    Expression ="qryAssignedStaff.[Full Name]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="[qryAssignedStaff].EmployeeNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryAssignedStaff.EmployeeNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[qryAssignedStaff].[Full Name]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryAssignedStaff.[Full Name]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1325
    Bottom =852
    Left =-1
    Top =-1
    Right =1309
    Bottom =565
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =340
        Top =12
        Right =831
        Bottom =463
        Top =0
        Name ="qryAssignedStaff"
        Name =""
    End
End
