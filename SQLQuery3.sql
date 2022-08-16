create table Client(
Id int primary key identity(1,1),
Name varchar(255) not null unique 
);
create table Address(
Id int primary key identity(1,1),
Name varchar(255) not null unique,
ClientId int not null foreign key references Client(Id) 
);
create table SubscriberNumber(
Id int primary key identity(1,1),
Name varchar(255) not null unique,
RegistrationDate date not null,
SubscriberId int not null foreign key references Client(Id) 
);
