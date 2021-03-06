﻿Operation =1
Option =0
Where ="(((DateAdd(\"d\",[CountID],([StartDate])))>=[StartDate] And (DateAdd(\"d\",[Coun"
    "tID],([StartDate])))<=[EndDate]))"
Begin InputTables
    Name ="tblCount"
    Name ="tblDaySortNormal"
    Name ="tblAmenityType"
    Name ="tblFacilityAmenities"
    Name ="tblFacility"
    Name ="tblPermit"
    Name ="tblActivitySchedule"
    Name ="tblActivityScheduleAmenity"
    Name ="tblActivityScheduleDays"
End
Begin OutputColumns
    Expression ="tblPermit.*"
    Expression ="tblActivitySchedule.*"
    Expression ="tblActivityScheduleDays.*"
    Expression ="tblActivityScheduleAmenity.*"
    Expression ="tblFacility.*"
    Expression ="tblAmenityType.*"
    Expression ="tblFacilityAmenities.*"
    Alias ="Dates"
    Expression ="DateAdd(\"d\",[CountID],([StartDate]))"
    Expression ="tblDaySortNormal.*"
End
Begin Joins
    LeftTable ="tblAmenityType"
    RightTable ="tblFacilityAmenities"
    Expression ="tblAmenityType.AmenityTypeID=tblFacilityAmenities.AmenityTypeID"
    Flag =1
    LeftTable ="tblPermit"
    RightTable ="tblActivitySchedule"
    Expression ="tblPermit.ActivityID=tblActivitySchedule.ActivityID"
    Flag =1
    LeftTable ="tblActivitySchedule"
    RightTable ="tblActivityScheduleAmenity"
    Expression ="tblActivitySchedule.ActivityScheduleID=tblActivityScheduleAmenity.ActivitySchedu"
        "leID"
    Flag =1
    LeftTable ="tblActivitySchedule"
    RightTable ="tblActivityScheduleDays"
    Expression ="tblActivitySchedule.ActivityScheduleID=tblActivityScheduleDays.ActivityScheduleI"
        "D"
    Flag =1
    LeftTable ="tblFacility"
    RightTable ="tblPermit"
    Expression ="tblFacility.FacilityID=tblPermit.FacilityID"
    Flag =1
    LeftTable ="tblFacilityAmenities"
    RightTable ="tblActivityScheduleAmenity"
    Expression ="tblFacilityAmenities.AmenityID=tblActivityScheduleAmenity.AmenityID"
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
        dbText "Name" ="tblPermit.ActivityID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.Issuer"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.PublishID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.FacilityID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.SchoolID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.ApplicantName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.OrganizationName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.Email"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.EmailPermit"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.ActivityType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.SpaceRequested"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.AgeGroupText"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.DayPhone"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.EveningPhone"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.Address"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.City"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.AddressState"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.ZIP"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.Charging"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.AmountPaid"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.ApplicationDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.SpecialConditions"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPermit.ExpectedGroupSizeMin"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.ExpectedGroupSizeMax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.Per"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.PermitDescription"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2880"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblPermit.ReplacedBy"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.DateTimeEntered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.DateTimeUpdated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.SchoolReferenceNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.FormerLocation"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.ActivityScheduleID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.ActivityID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.StartDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.EndDate"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.StaffFacilitators"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.Comment"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.DateTimeEntered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivitySchedule.DateTimeUpdated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.ActivityScheduleID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.DayNumber"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.StartTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.EndTime"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.DateTimeEntered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleDays.DateTimeUpdated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleAmenity.ScheduledAmenityID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleAmenity.ActivityScheduleID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleAmenity.AmenityID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="4080"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblActivityScheduleAmenity.Notes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleAmenity.DateTimeEntered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblActivityScheduleAmenity.DateTimeUpdated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.AmenityName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dates"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.FacilityID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.FacilityName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.FacilityType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.District"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.CODE"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.BoundsObjectID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.WebID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.PoliceDistrict"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.CouncilDistrict"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.PlanningAnalysisSection"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.LongName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.Address"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.Address2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.ZIP"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.ContactPhone"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.Fax"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.FacilitySupervisor"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.BuildingSquareFeet"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.DateTimeEntered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.DateTimeUpdated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblAmenityType.AmenityTypeID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblAmenityType.AmenityTypeName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblAmenityType.TypeDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblAmenityType.DateTimeInput"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblAmenityType.DateTimeModified"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.AmenityID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.FacilityID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.AmenityTypeID"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3795"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.AmenityUse"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.AmenityDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.Dimensions"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.DateTimeEntered"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.DateTimeUpdated"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.PreviousID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.PreviousDataSource"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.HasRoof"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.Lighting"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacilityAmenities.Working"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDaySortNormal.DayNumberSunday"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDaySortNormal.DayNumberMonday"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDaySortNormal.DayName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblDaySortNormal.DayShortName"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.RulesAndRegs"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.ImageURL"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblFacility.FacilityDescription"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tblPermit.PermitType"
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
    Bottom =380
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =1071
        Top =91
        Right =1215
        Bottom =235
        Top =0
        Name ="tblCount"
        Name =""
    End
    Begin
        Left =728
        Top =247
        Right =910
        Bottom =371
        Top =0
        Name ="tblDaySortNormal"
        Name =""
    End
    Begin
        Left =894
        Top =85
        Right =1038
        Bottom =229
        Top =0
        Name ="tblAmenityType"
        Name =""
    End
    Begin
        Left =703
        Top =53
        Right =865
        Bottom =217
        Top =0
        Name ="tblFacilityAmenities"
        Name =""
    End
    Begin
        Left =276
        Top =235
        Right =451
        Bottom =385
        Top =0
        Name ="tblFacility"
        Name =""
    End
    Begin
        Left =15
        Top =16
        Right =211
        Bottom =600
        Top =0
        Name ="tblPermit"
        Name =""
    End
    Begin
        Left =276
        Top =39
        Right =452
        Bottom =225
        Top =0
        Name ="tblActivitySchedule"
        Name =""
    End
    Begin
        Left =497
        Top =21
        Right =674
        Bottom =178
        Top =0
        Name ="tblActivityScheduleAmenity"
        Name =""
    End
    Begin
        Left =488
        Top =193
        Right =689
        Bottom =371
        Top =0
        Name ="tblActivityScheduleDays"
        Name =""
    End
End
