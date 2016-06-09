﻿Operation =1
Option =0
Begin InputTables
    Name ="tblProgram"
    Name ="tblActivitySchedule"
End
Begin OutputColumns
    Expression ="tblActivitySchedule.*"
    Alias ="strActivityScheduleID"
    Expression ="CStr([ActivityScheduleID])"
End
Begin Joins
    LeftTable ="tblProgram"
    RightTable ="tblActivitySchedule"
    Expression ="tblProgram.ActivityID=tblActivitySchedule.ActivityID"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tblActivitySchedule.ActivityScheduleID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="strActivityScheduleID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =0
    Right =1276
    Bottom =809
    Left =-1
    Top =-1
    Right =1260
    Bottom =547
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =393
        Top =34
        Right =537
        Bottom =178
        Top =0
        Name ="tblProgram"
        Name =""
    End
    Begin
        Left =161
        Top =54
        Right =362
        Bottom =252
        Top =0
        Name ="tblActivitySchedule"
        Name =""
    End
End