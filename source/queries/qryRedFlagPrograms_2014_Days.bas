﻿Operation =1
Option =0
Where ="(((tblActivitySchedule.EndDate) Like \"*2014*\"))"
Begin InputTables
    Name ="tblDaySortNormal"
    Name ="tblFacility"
    Name ="tblActivityType"
    Name ="tblProgram"
    Name ="tblRedFlag"
    Name ="tblActivitySchedule"
    Name ="tblActivityScheduleDays"
End
Begin OutputColumns
    Expression ="tblFacility.District"
    Expression ="tblFacility.FacilityName"
    Expression ="tblActivityType.ActivityTypeName"
    Expression ="tblProgram.ProgramName"
    Expression ="tblDaySortNormal.DayName"
    Alias ="TotalHoursPerDay"
    Expression ="([EndTime]-[StartTime])*24"
    Expression ="tblProgram.ProgramID"
    Expression ="tblActivitySchedule.ActivityScheduleID"
End
Begin Joins
    LeftTable ="tblProgram"
    RightTable ="tblRedFlag"
    Expression ="tblProgram.ProgramID=tblRedFlag.ProgramID"
    Flag =1
    LeftTable ="tblProgram"
    RightTable ="tblActivitySchedule"
    Expression ="tblProgram.ActivityID=tblActivitySchedule.ActivityID"
    Flag =1
    LeftTable ="tblActivitySchedule"
    RightTable ="tblActivityScheduleDays"
    Expression ="tblActivitySchedule.ActivityScheduleID=tblActivityScheduleDays.ActivityScheduleI"
        "D"
    Flag =1
    LeftTable ="tblActivityType"
    RightTable ="tblProgram"
    Expression ="tblActivityType.ID=tblProgram.ActivityTypeID"
    Flag =1
    LeftTable ="tblFacility"
    RightTable ="tblProgram"
    Expression ="tblFacility.FacilityID=tblProgram.FacilityID"
    Flag =1
    LeftTable ="tblDaySortNormal"
    RightTable ="tblActivityScheduleDays"
    Expression ="tblDaySortNormal.DayNumberSunday=tblActivityScheduleDays.DayNumber"
    Flag =1
End
Begin OrderBy
    Expression ="tblFacility.District"
    Flag =0
    Expression ="tblActivityType.ActivityTypeName"
    Flag =0
End
Begin Groups
    Expression ="tblFacility.District"
    GroupLevel =0
    Expression ="tblFacility.FacilityName"
    GroupLevel =0
    Expression ="tblActivityType.ActivityTypeName"
    GroupLevel =0
    Expression ="tblProgram.ProgramName"
    GroupLevel =0
    Expression ="tblDaySortNormal.DayName"
    GroupLevel =0
    Expression ="([EndTime]-[StartTime])*24"
    GroupLevel =0
    Expression ="tblProgram.ProgramID"
    GroupLevel =0
    Expression ="tblActivitySchedule.ActivityScheduleID"
    GroupLevel =0
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
        dbText "Name" ="tblProgram.ProgramName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.District"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityType.ActivityTypeName"
        dbInteger "ColumnWidth" ="2730"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TotalHoursPerDay"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.ProgramID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.ActivityScheduleID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.FacilityName"
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
    Bottom =330
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =288
        Top =188
        Right =432
        Bottom =332
        Top =0
        Name ="tblRedFlag"
        Name =""
    End
    Begin
        Left =51
        Top =14
        Right =269
        Bottom =281
        Top =0
        Name ="tblProgram"
        Name =""
    End
    Begin
        Left =585
        Top =17
        Right =729
        Bottom =161
        Top =0
        Name ="tblFacility"
        Name =""
    End
    Begin
        Left =325
        Top =3
        Right =469
        Bottom =147
        Top =0
        Name ="tblActivityType"
        Name =""
    End
    Begin
        Left =472
        Top =164
        Right =681
        Bottom =338
        Top =0
        Name ="tblActivitySchedule"
        Name =""
    End
    Begin
        Left =756
        Top =157
        Right =900
        Bottom =301
        Top =0
        Name ="tblActivityScheduleDays"
        Name =""
    End
    Begin
        Left =917
        Top =24
        Right =1104
        Bottom =145
        Top =0
        Name ="tblDaySortNormal"
        Name =""
    End
End
