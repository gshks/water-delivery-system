/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2024/5/23 23:21:01                           */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('Buying')
            and   name  = '����_FK'
            and   indid > 0
            and   indid < 255)
   drop index Buying.����_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Buying')
            and   type = 'U')
   drop table Buying
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Cost')
            and   name  = '��ʾ_FK'
            and   indid > 0
            and   indid < 255)
   drop index Cost.��ʾ_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Cost')
            and   type = 'U')
   drop table Cost
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Customers')
            and   type = 'U')
   drop table Customers
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sell')
            and   name  = '��ʾ_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sell.��ʾ_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sell')
            and   type = 'U')
   drop table Sell
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Supplier')
            and   name  = '����_FK'
            and   indid > 0
            and   indid < 255)
   drop index Supplier.����_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Supplier')
            and   type = 'U')
   drop table Supplier
go

if exists (select 1
            from  sysobjects
           where  id = object_id('hydrotechnic')
            and   type = 'U')
   drop table hydrotechnic
go

if exists (select 1
            from  sysobjects
           where  id = object_id('products')
            and   type = 'U')
   drop table products
go

if exists (select 1
            from  sysobjects
           where  id = object_id('warehouse')
            and   type = 'U')
   drop table warehouse
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = '����_FK2'
            and   indid > 0
            and   indid < 255)
   drop index ����.����_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����')
            and   name  = '����_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����.����_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����')
            and   type = 'U')
   drop table ����
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('���')
            and   name  = '���_FK2'
            and   indid > 0
            and   indid < 255)
   drop index ���.���_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('���')
            and   name  = '���_FK'
            and   indid > 0
            and   indid < 255)
   drop index ���.���_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('���')
            and   type = 'U')
   drop table ���
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����1')
            and   name  = '����1_FK2'
            and   indid > 0
            and   indid < 255)
   drop index ����1.����1_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����1')
            and   name  = '����1_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����1.����1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����1')
            and   type = 'U')
   drop table ����1
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����2')
            and   name  = '����2_FK2'
            and   indid > 0
            and   indid < 255)
   drop index ����2.����2_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����2')
            and   name  = '����2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����2.����2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����2')
            and   type = 'U')
   drop table ����2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����3')
            and   name  = '����3_FK2'
            and   indid > 0
            and   indid < 255)
   drop index ����3.����3_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('����3')
            and   name  = '����3_FK'
            and   indid > 0
            and   indid < 255)
   drop index ����3.����3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('����3')
            and   type = 'U')
   drop table ����3
go

/*==============================================================*/
/* Table: Buying                                                */
/*==============================================================*/
create table Buying (
   BID                  int                  not null,
   HID                  int                  null,
   Bdata                datetime             null,
   Bquantity            char(1000)           null,
   Buy                  int                  null,
   Bsituation           int                  null,
   Bremarks             char(100)            null,
   constraint PK_BUYING primary key nonclustered (BID)
)
go

/*==============================================================*/
/* Index: ����_FK                                                 */
/*==============================================================*/
create index ����_FK on Buying (
HID ASC
)
go

/*==============================================================*/
/* Table: Cost                                                  */
/*==============================================================*/
create table Cost (
   CostID               int                  not null,
   SellID               int                  null,
   "Deal With"          int                  null,
   Receivable           int                  null,
   Cash                 int                  null,
   constraint PK_COST primary key nonclustered (CostID)
)
go

/*==============================================================*/
/* Index: ��ʾ_FK                                                 */
/*==============================================================*/
create index ��ʾ_FK on Cost (
SellID ASC
)
go

/*==============================================================*/
/* Table: Customers                                             */
/*==============================================================*/
create table Customers (
   CID                  int                  not null,
   Cname                char(30)             null,
   Phone                char(20)             null,
   address              char(30)             null,
   remarks              char(100)            null,
   constraint PK_CUSTOMERS primary key nonclustered (CID)
)
go

/*==============================================================*/
/* Table: Sell                                                  */
/*==============================================================*/
create table Sell (
   SellID               int                  not null,
   CostID               int                  null,
   Sdata                datetime             null,
   Squantity            int                  null,
   Psell                money                null,
   Situation            int                  null,
   Sremarks             char(100)            null,
   constraint PK_SELL primary key nonclustered (SellID)
)
go

/*==============================================================*/
/* Index: ��ʾ_FK                                                 */
/*==============================================================*/
create index ��ʾ_FK on Sell (
CostID ASC
)
go

/*==============================================================*/
/* Table: Supplier                                              */
/*==============================================================*/
create table Supplier (
   SID                  int                  not null,
   BID                  int                  null,
   Sname                char(30)             null,
   Sphone               char(20)             null,
   Saddress             char(50)             null,
   postcode             char(6)              null,
   qq                   char(50)             null,
   Sremarks             char(100)            null,
   constraint PK_SUPPLIER primary key nonclustered (SID)
)
go

/*==============================================================*/
/* Index: ����_FK                                                 */
/*==============================================================*/
create index ����_FK on Supplier (
BID ASC
)
go

/*==============================================================*/
/* Table: hydrotechnic                                          */
/*==============================================================*/
create table hydrotechnic (
   HID                  int                  not null,
   Hname                char(30)             null,
   Hphone               char(20)             null,
   Hremarks             char(100)            null,
   constraint PK_HYDROTECHNIC primary key nonclustered (HID)
)
go

/*==============================================================*/
/* Table: products                                              */
/*==============================================================*/
create table products (
   PID                  int                  not null,
   Wname                char(50)             null,
   Ptype                char(50)             null,
   des                  char(500)            null,
   quantity             int                  null,
   constraint PK_PRODUCTS primary key nonclustered (PID)
)
go

/*==============================================================*/
/* Table: warehouse                                             */
/*==============================================================*/
create table warehouse (
   WHID                 int                  not null,
   WHname               char(50)             null,
   WHquantity           int                  null,
   constraint PK_WAREHOUSE primary key nonclustered (WHID)
)
go

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ���� (
   SellID               int                  not null,
   HID                  int                  not null,
   constraint PK_���� primary key (SellID, HID)
)
go

/*==============================================================*/
/* Index: ����_FK                                                 */
/*==============================================================*/
create index ����_FK on ���� (
SellID ASC
)
go

/*==============================================================*/
/* Index: ����_FK2                                                */
/*==============================================================*/
create index ����_FK2 on ���� (
HID ASC
)
go

/*==============================================================*/
/* Table: ���                                                    */
/*==============================================================*/
create table ��� (
   PID                  int                  not null,
   WHID                 int                  not null,
   constraint PK_��� primary key (PID, WHID)
)
go

/*==============================================================*/
/* Index: ���_FK                                                 */
/*==============================================================*/
create index ���_FK on ��� (
PID ASC
)
go

/*==============================================================*/
/* Index: ���_FK2                                                */
/*==============================================================*/
create index ���_FK2 on ��� (
WHID ASC
)
go

/*==============================================================*/
/* Table: ����1                                                   */
/*==============================================================*/
create table ����1 (
   PID                  int                  not null,
   CID                  int                  not null,
   constraint PK_����1 primary key (PID, CID)
)
go

/*==============================================================*/
/* Index: ����1_FK                                                */
/*==============================================================*/
create index ����1_FK on ����1 (
PID ASC
)
go

/*==============================================================*/
/* Index: ����1_FK2                                               */
/*==============================================================*/
create index ����1_FK2 on ����1 (
CID ASC
)
go

/*==============================================================*/
/* Table: ����2                                                   */
/*==============================================================*/
create table ����2 (
   PID                  int                  not null,
   SellID               int                  not null,
   constraint PK_����2 primary key (PID, SellID)
)
go

/*==============================================================*/
/* Index: ����2_FK                                                */
/*==============================================================*/
create index ����2_FK on ����2 (
PID ASC
)
go

/*==============================================================*/
/* Index: ����2_FK2                                               */
/*==============================================================*/
create index ����2_FK2 on ����2 (
SellID ASC
)
go

/*==============================================================*/
/* Table: ����3                                                   */
/*==============================================================*/
create table ����3 (
   CID                  int                  not null,
   SellID               int                  not null,
   constraint PK_����3 primary key (CID, SellID)
)
go

/*==============================================================*/
/* Index: ����3_FK                                                */
/*==============================================================*/
create index ����3_FK on ����3 (
CID ASC
)
go

/*==============================================================*/
/* Index: ����3_FK2                                               */
/*==============================================================*/
create index ����3_FK2 on ����3 (
SellID ASC
)
go
