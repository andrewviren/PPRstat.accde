﻿Operation =1
Option =0
Where ="(((tblActivitySchedule.EndDate)>=Date()) AND ((tblProgram.IsActive)=Yes))"
Begin InputTables
    Name ="tblDaySortNormal"
    Name ="tblFacility"
    Name ="tblActivityType"
    Name ="tblProgram"
    Name ="tblActivitySchedule"
    Name ="tblActivityScheduleDays"
End
Begin OutputColumns
    Expression ="tblFacility.FacilityName"
    Expression ="tblProgram.ProgramID"
    Expression ="tblActivityType.ActivityTypeName"
    Expression ="tblActivityType.Category"
    Expression ="tblProgram.ProgramName"
    Expression ="tblProgram.AgeLow"
    Expression ="tblProgram.AgeHigh"
    Expression ="tblProgram.AgeDescription"
    Expression ="tblProgram.Gender"
    Expression ="tblProgram.FacilitatorType"
    Expression ="tblActivitySchedule.StartDate"
    Expression ="tblActivitySchedule.EndDate"
    Expression ="tblDaySortNormal.DayNumberMonday"
    Expression ="tblDaySortNormal.DayName"
    Expression ="tblActivityScheduleDays.StartTime"
    Expression ="tblActivityScheduleDays.EndTime"
End
Begin Joins
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
        dbText "Name" ="tblFacility.FacilityName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.ProgramID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityType.ActivityTypeName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityType.Category"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.ProgramName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.AgeLow"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.AgeDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.FacilitatorType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.EndDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDaySortNormal.DayName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDaySortNormal.DayNumberMonday"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.EndTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.AgeHigh"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblProgram.Gender"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.StartDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.StartTime"
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
    Bottom =496
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1201
        Top =103
        Right =1345
        Bottom =247
        Top =0
        Name ="tblDaySortNormal"
        Name =""
    End
    Begin
        Left =782
        Top =224
        Right =939
        Bottom =401
        Top =0
        Name ="tblActivityType"
        Name =""
    End
    Begin
        Left =9
        Top =18
        Right =313
        Bottom =443
        Top =0
        Name ="tblFacility"
        Name =""
    End
    Begin
        Left =401
        Top =33
        Right =618
        Bottom =459
        Top =0
        Name ="tblProgram"
        Name =""
    End
    Begin
        Left =775
        Top =20
        Right =919
        Bottom =164
        Top =0
        Name ="tblActivitySchedule"
        Name =""
    End
    Begin
        Left =1014
        Top =169
        Right =1158
        Bottom =313
        Top =0
        Name ="tblActivityScheduleDays"
        Name =""
    End
End
