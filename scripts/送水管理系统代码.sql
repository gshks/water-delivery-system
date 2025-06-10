/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2024/5/23 23:21:01                           */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('Buying')
            and   name  = '属于_FK'
            and   indid > 0
            and   indid < 255)
   drop index Buying.属于_FK
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
            and   name  = '显示_FK'
            and   indid > 0
            and   indid < 255)
   drop index Cost.显示_FK
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
            and   name  = '显示_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sell.显示_FK
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
            and   name  = '进货_FK'
            and   indid > 0
            and   indid < 255)
   drop index Supplier.进货_FK
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
           where  id    = object_id('处理')
            and   name  = '处理_FK2'
            and   indid > 0
            and   indid < 255)
   drop index 处理.处理_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('处理')
            and   name  = '处理_FK'
            and   indid > 0
            and   indid < 255)
   drop index 处理.处理_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('处理')
            and   type = 'U')
   drop table 处理
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('存放')
            and   name  = '存放_FK2'
            and   indid > 0
            and   indid < 255)
   drop index 存放.存放_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('存放')
            and   name  = '存放_FK'
            and   indid > 0
            and   indid < 255)
   drop index 存放.存放_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('存放')
            and   type = 'U')
   drop table 存放
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('销售1')
            and   name  = '销售1_FK2'
            and   indid > 0
            and   indid < 255)
   drop index 销售1.销售1_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('销售1')
            and   name  = '销售1_FK'
            and   indid > 0
            and   indid < 255)
   drop index 销售1.销售1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('销售1')
            and   type = 'U')
   drop table 销售1
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('销售2')
            and   name  = '销售2_FK2'
            and   indid > 0
            and   indid < 255)
   drop index 销售2.销售2_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('销售2')
            and   name  = '销售2_FK'
            and   indid > 0
            and   indid < 255)
   drop index 销售2.销售2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('销售2')
            and   type = 'U')
   drop table 销售2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('销售3')
            and   name  = '销售3_FK2'
            and   indid > 0
            and   indid < 255)
   drop index 销售3.销售3_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('销售3')
            and   name  = '销售3_FK'
            and   indid > 0
            and   indid < 255)
   drop index 销售3.销售3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('销售3')
            and   type = 'U')
   drop table 销售3
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
/* Index: 属于_FK                                                 */
/*==============================================================*/
create index 属于_FK on Buying (
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
/* Index: 显示_FK                                                 */
/*==============================================================*/
create index 显示_FK on Cost (
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
/* Index: 显示_FK                                                 */
/*==============================================================*/
create index 显示_FK on Sell (
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
/* Index: 进货_FK                                                 */
/*==============================================================*/
create index 进货_FK on Supplier (
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
/* Table: 处理                                                    */
/*==============================================================*/
create table 处理 (
   SellID               int                  not null,
   HID                  int                  not null,
   constraint PK_处理 primary key (SellID, HID)
)
go

/*==============================================================*/
/* Index: 处理_FK                                                 */
/*==============================================================*/
create index 处理_FK on 处理 (
SellID ASC
)
go

/*==============================================================*/
/* Index: 处理_FK2                                                */
/*==============================================================*/
create index 处理_FK2 on 处理 (
HID ASC
)
go

/*==============================================================*/
/* Table: 存放                                                    */
/*==============================================================*/
create table 存放 (
   PID                  int                  not null,
   WHID                 int                  not null,
   constraint PK_存放 primary key (PID, WHID)
)
go

/*==============================================================*/
/* Index: 存放_FK                                                 */
/*==============================================================*/
create index 存放_FK on 存放 (
PID ASC
)
go

/*==============================================================*/
/* Index: 存放_FK2                                                */
/*==============================================================*/
create index 存放_FK2 on 存放 (
WHID ASC
)
go

/*==============================================================*/
/* Table: 销售1                                                   */
/*==============================================================*/
create table 销售1 (
   PID                  int                  not null,
   CID                  int                  not null,
   constraint PK_销售1 primary key (PID, CID)
)
go

/*==============================================================*/
/* Index: 销售1_FK                                                */
/*==============================================================*/
create index 销售1_FK on 销售1 (
PID ASC
)
go

/*==============================================================*/
/* Index: 销售1_FK2                                               */
/*==============================================================*/
create index 销售1_FK2 on 销售1 (
CID ASC
)
go

/*==============================================================*/
/* Table: 销售2                                                   */
/*==============================================================*/
create table 销售2 (
   PID                  int                  not null,
   SellID               int                  not null,
   constraint PK_销售2 primary key (PID, SellID)
)
go

/*==============================================================*/
/* Index: 销售2_FK                                                */
/*==============================================================*/
create index 销售2_FK on 销售2 (
PID ASC
)
go

/*==============================================================*/
/* Index: 销售2_FK2                                               */
/*==============================================================*/
create index 销售2_FK2 on 销售2 (
SellID ASC
)
go

/*==============================================================*/
/* Table: 销售3                                                   */
/*==============================================================*/
create table 销售3 (
   CID                  int                  not null,
   SellID               int                  not null,
   constraint PK_销售3 primary key (CID, SellID)
)
go

/*==============================================================*/
/* Index: 销售3_FK                                                */
/*==============================================================*/
create index 销售3_FK on 销售3 (
CID ASC
)
go

/*==============================================================*/
/* Index: 销售3_FK2                                               */
/*==============================================================*/
create index 销售3_FK2 on 销售3 (
SellID ASC
)
go
