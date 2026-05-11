use [PrestigeCars];
Go

/*
 *  Make a schema to test the changes, before moving everything to the original schema.
 */
if schema_id(n'Normalized') is null
  Begin
    exec(n'
      create schema [Normalized];
    ');
  End;
Go

/*
 *  Make a copy of each of the original tables.
 */

if object_id(n'Normalized._Original_Data_Country', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_Country]
    from
      [Data].[Country];
  End;
Go

if object_id(n'Normalized._Original_Data_Customer', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_Customer]
    from
      [Data].[Customer];
  End;
Go

if object_id(n'Normalized._Original_Data_Make', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_Make]
    from
      [Data].[Make];
  End;
Go

if object_id(n'Normalized._Original_Data_Model', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_Model]
    from
      [Data].[Model];
  End;
Go

if object_id(n'Normalized._Original_Data_SalesDetails', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_SalesDetails]
    from
      [Data].[SalesDetails];
  End;
Go

if object_id(n'Normalized._Original_Data_Stock', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_Stock]
    from
      [Data].[Stock];
  End;
Go

if object_id(n'Normalized._Original_Data_SalesByCountry', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_SalesByCountry]
    from
      [Data].[SalesByCountry];
  End;
Go

if object_id(n'Normalized._Original_Data_PivotTable', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Data_PivotTable]
    from
      [Data].[PivotTable];
  End;
Go

if object_id(n'Normalized._Original_DataTransfer_Sales2015', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_DataTransfer_Sales2015]
    from
      [DataTransfer].[Sales2015];
  End;
Go

if object_id(n'Normalized._Original_DataTransfer_Sales2016', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_DataTransfer_Sales2016]
    from
      [DataTransfer].[Sales2016];
  End;
Go

if object_id(n'Normalized._Original_DataTransfer_Sales2017', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_DataTransfer_Sales2017]
    from
      [DataTransfer].[Sales2017];
  End;
Go

if object_id(n'Normalized._Original_DataTransfer_Sales2018', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_DataTransfer_Sales2018]
    from
      [DataTransfer].[Sales2018];
  End;
Go

if object_id(n'Normalized._Original_Output_StockPrices', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Output_StockPrices]
    from
      [Output].[StockPrices];
  End;
Go

if object_id(n'Normalized._Original_Reference_Budget', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_Budget]
    from
      [Reference].[Budget];
  End;
Go

if object_id(n'Normalized._Original_Reference_Forex', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_Forex]
    from
      [Reference].[Forex];
  End;
Go

if object_id(n'Normalized._Original_Reference_MarketingCategories', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_MarketingCategories]
    from
      [Reference].[MarketingCategories];
  End;
Go

if object_id(n'Normalized._Original_Reference_MarketingInformation', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_MarketingInformation]
    from
      [Reference].[MarketingInformation];
  End;
Go

if object_id(n'Normalized._Original_Reference_SalesBudgets', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_SalesBudgets]
    from
      [Reference].[SalesBudgets];
  End;
Go

if object_id(n'Normalized._Original_Reference_SalesCategory', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_SalesCategory]
    from
      [Reference].[SalesCategory];
  End;
Go

if object_id(n'Normalized._Original_Reference_Staff', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_Staff]
    from
      [Reference].[Staff];
  End;
Go

if object_id(n'Normalized._Original_Reference_StaffHierarchy', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_StaffHierarchy]
    from
      [Reference].[StaffHierarchy];
  End;
Go

if object_id(n'Normalized._Original_Reference_YearlySales', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_Reference_YearlySales]
    from
      [Reference].[YearlySales];
  End;
Go

if object_id(n'Normalized._Original_SourceData_SalesInPounds', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_SourceData_SalesInPounds]
    from
      [SourceData].[SalesInPounds];
  End;
Go

if object_id(n'Normalized._Original_SourceData_SalesText', n'u') is null
  Begin
    select
      *
    into
      [Normalized].[_Original_SourceData_SalesText]
    from
      [SourceData].[SalesText];
  End;
Go
