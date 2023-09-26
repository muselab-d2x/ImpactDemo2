BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"AccountNumber" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"CleanStatus" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DunsNumber" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"NaicsCode" VARCHAR(255), 
	"NaicsDesc" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Tradestyle" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"YearStarted" VARCHAR(255), 
	"DandbCompanyId" VARCHAR(255), 
	"OperatingHoursId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Asset" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "AssetWarranty" (
	id INTEGER NOT NULL, 
	"StartDate" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "BusinessHours" (
	id INTEGER NOT NULL, 
	"FridayEndTime" VARCHAR(255), 
	"FridayStartTime" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsDefault" VARCHAR(255), 
	"MondayEndTime" VARCHAR(255), 
	"MondayStartTime" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"SaturdayEndTime" VARCHAR(255), 
	"SaturdayStartTime" VARCHAR(255), 
	"SundayEndTime" VARCHAR(255), 
	"SundayStartTime" VARCHAR(255), 
	"ThursdayEndTime" VARCHAR(255), 
	"ThursdayStartTime" VARCHAR(255), 
	"TimeZoneSidKey" VARCHAR(255), 
	"TuesdayEndTime" VARCHAR(255), 
	"TuesdayStartTime" VARCHAR(255), 
	"WednesdayEndTime" VARCHAR(255), 
	"WednesdayStartTime" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ContentAsset" (
	id INTEGER NOT NULL, 
	"DeveloperName" VARCHAR(255), 
	"IsVisibleByExternalUsers" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ContentAsset" VALUES(1,'Outbound_Funds_Astro','False','en_US','Outbound_Funds_Astro');
CREATE TABLE "ContentVersion" (
	id INTEGER NOT NULL, 
	"ContentLocation" VARCHAR(255), 
	"ContentModifiedDate" VARCHAR(255), 
	"ContentUrl" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ExternalDocumentInfo1" VARCHAR(255), 
	"ExternalDocumentInfo2" VARCHAR(255), 
	"IsAssetEnabled" VARCHAR(255), 
	"IsMajorVersion" VARCHAR(255), 
	"Origin" VARCHAR(255), 
	"PathOnClient" VARCHAR(255), 
	"ReasonForChange" VARCHAR(255), 
	"SharingOption" VARCHAR(255), 
	"SharingPrivacy" VARCHAR(255), 
	"TagCsv" VARCHAR(255), 
	"Title" VARCHAR(255), 
	"VersionData" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ContentVersion" VALUES(1,'S','2023-09-26T20:05:49.000+0000','','','','','True','True','H','Outbound Funds Astro.png','','A','N','','Outbound Funds Astro','/services/data/v58.0/sobjects/ContentVersion/0688N000000l2iPQAQ/VersionData');
CREATE TABLE "ContentWorkspace" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ShouldAddCreatorMembership" VARCHAR(255), 
	"WorkspaceImageId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ContractLineItem" (
	id INTEGER NOT NULL, 
	"Quantity" VARCHAR(255), 
	"UnitPrice" VARCHAR(255), 
	"PricebookEntryId" VARCHAR(255), 
	"ServiceContractId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "DandBCompany" (
	id INTEGER NOT NULL, 
	"DunsNumber" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Entitlement" (
	id INTEGER NOT NULL, 
	"CasesPerEntitlement" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"IsPerIncident" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RemainingCases" VARCHAR(255), 
	"RemainingWorkOrders" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"WorkOrdersPerEntitlement" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"AssetId" VARCHAR(255), 
	"AssetWarrantyId" VARCHAR(255), 
	"BusinessHoursId" VARCHAR(255), 
	"ContractLineItemId" VARCHAR(255), 
	"LocationId" VARCHAR(255), 
	"ServiceContractId" VARCHAR(255), 
	"SvcApptBookingWindowsId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "FieldServiceMobileSettings" (
	id INTEGER NOT NULL, 
	"AscAutomaticMode" VARCHAR(255), 
	"AscCancellationTimerInSec" VARCHAR(255), 
	"AscCompletedStatus" VARCHAR(255), 
	"AscOnSiteStatus" VARCHAR(255), 
	"AscRadiusInMeters" VARCHAR(255), 
	"AscTimeLimitationInMin" VARCHAR(255), 
	"AscTravelStatus" VARCHAR(255), 
	"BgGeoLocationAccuracy" VARCHAR(255), 
	"BgGeoLocationMinUpdateFreqMins" VARCHAR(255), 
	"BrandInvertedColor" VARCHAR(255), 
	"ContrastInvertedColor" VARCHAR(255), 
	"ContrastPrimaryColor" VARCHAR(255), 
	"ContrastQuaternaryColor" VARCHAR(255), 
	"ContrastQuinaryColor" VARCHAR(255), 
	"ContrastSecondaryColor" VARCHAR(255), 
	"ContrastTertiaryColor" VARCHAR(255), 
	"DefaultListViewDeveloperName" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"FeedbackPrimaryColor" VARCHAR(255), 
	"FeedbackSecondaryColor" VARCHAR(255), 
	"FeedbackSelectedColor" VARCHAR(255), 
	"FutureDaysInDatePicker" VARCHAR(255), 
	"GeoLocationAccuracy" VARCHAR(255), 
	"GeoLocationMinUpdateFreqMins" VARCHAR(255), 
	"IsAscTimeLimitEnabled" VARCHAR(255), 
	"IsAssignmentNotification" VARCHAR(255), 
	"IsDispatchNotification" VARCHAR(255), 
	"IsLimitedLocTrackingEnabled" VARCHAR(255), 
	"IsOptimizedImageUploadEnabled" VARCHAR(255), 
	"IsScheduleViewResourceAbsences" VARCHAR(255), 
	"IsSendLocationHistory" VARCHAR(255), 
	"IsShowEditFullRecord" VARCHAR(255), 
	"IsTimeSheetEnabled" VARCHAR(255), 
	"IsTimeZoneEnabled" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"MetadataCacheTimeDays" VARCHAR(255), 
	"NavbarBackgroundColor" VARCHAR(255), 
	"NavbarInvertedColor" VARCHAR(255), 
	"OptimizeImageSizeInMb" VARCHAR(255), 
	"PastDaysInDatePicker" VARCHAR(255), 
	"PrimaryBrandColor" VARCHAR(255), 
	"QuickStatusChangeFlowName" VARCHAR(255), 
	"RecordDataCacheTimeMins" VARCHAR(255), 
	"SecondaryBrandColor" VARCHAR(255), 
	"TimeIntervalSetupMins" VARCHAR(255), 
	"UpdateScheduleTimeMins" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Folder" (
	id INTEGER NOT NULL, 
	"AccessType" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"IsReadonly" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Folder" VALUES(1,'Hidden','NPSP_Outbound_Fund_Reports','True','Outbound Fund Reports','Report','');
INSERT INTO "Folder" VALUES(2,'Hidden','EBotR_v3','True','Einstein Bot Reports Winter ''23','Report','');
INSERT INTO "Folder" VALUES(3,'Hidden','EinsteinBotReports_v2','True','Einstein Bot Reports Rel_238','Report','');
CREATE TABLE "Location" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "MilestoneType" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecurrenceType" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "OperatingHours" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"TimeZone" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Pricebook2" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "PricebookEntry" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"UnitPrice" VARCHAR(255), 
	"UseStandardPrice" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"Product2Id" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ServiceContract" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "WorkBadgeDefinition" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"ImageUrl" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsCompanyWide" VARCHAR(255), 
	"IsLimitPerUser" VARCHAR(255), 
	"LimitNumber" VARCHAR(255), 
	"LimitStartDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "outfunds__Funding_Program__c" (
	id INTEGER NOT NULL, 
	"Is_Test__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"outfunds__Description__c" VARCHAR(255), 
	"outfunds__End_Date__c" VARCHAR(255), 
	"outfunds__Start_Date__c" VARCHAR(255), 
	"outfunds__Status__c" VARCHAR(255), 
	"outfunds__Top_Level__c" VARCHAR(255), 
	"outfunds__Total_Program_Amount__c" VARCHAR(255), 
	"outfunds__Parent_Funding_Program__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "outfunds__Funding_Program__c" VALUES(1,'True','Test','','','','','False','','');
COMMIT;
