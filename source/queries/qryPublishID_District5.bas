﻿Operation =1
Option =0
Where ="(((tblFacility.District)=5))"
Begin InputTables
    Name ="tblFacility"
    Name ="tblPermit"
End
Begin OutputColumns
    Expression ="tblPermit.PublishID"
End
Begin Joins
    LeftTable ="tblFacility"
    RightTable ="tblPermit"
    Expression ="tblFacility.FacilityID=tblPermit.FacilityID"
    Flag =1
End
Begin Groups
    Expression ="tblPermit.PublishID"
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
        dbText "Name" ="tblPermit.PublishID"
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
    Bottom =530
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =310
        Top =38
        Right =524
        Bottom =213
        Top =0
        Name ="tblFacility"
        Name =""
    End
    Begin
        Left =71
        Top =129
        Right =215
        Bottom =273
        Top =0
        Name ="tblPermit"
        Name =""
    End
End
