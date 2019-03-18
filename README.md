# Tables

List of tables. Sub-bullets contain foreign key(s) to parent bullet(s).

- **[Type](#type)**
- **[Drugs](#drugs)**
- **[Jobs](#jobs)**
  - **[Staff](#staff)**
- **[Insurance](#insurance)**
  - **[Owners](#owners)**
    - **[Payment Methods](#payment-methods)**
      - **[Payments](#payments)**
  - **[Owners](#owners) & [Type](#type)**
    - **[Pets](#pets)**
      - **[Medical History](#medical-history)**
    - **[Pets](#pets) & [Staff](#staff) & [Drugs](#drugs)**
      - **[Appointments](#appointments)**
- **[Users](#users)**
  - **[Posts](#posts)**
    - **[Likes](#likes)**
    - **[Comments](#comments)**
  - **[Feedback](#feedback)**
  - **[Veterinarian Info](#veterinarian-info)**

## Appointments

|Column|
|------|
|**ID**|
|*Pet ID*|
|*Staff ID*|
|*Drug ID*|
|Appointment Date|
|Check In|
|Check Out|

## Comments

|Column|
|------|
|**ID**|
|*Post ID*|
|*User ID*|
|Comment Text|

## Drugs

|Column|
|------|
|**ID**|
|Name|
|Description|
|Symptoms|
|Price|

## Feedback

|Column|
|------|
|***Veterinarian ID***|
|***User ID***|
|Rating|
|Comment Text|

## Insurance

|Column|
|------|
|**ID**|
|Name|
|Policy Number|
|Address|
|Zip Code|
|Phone Number|

## Jobs

|Column|
|------|
|**ID**|
|Title|
|Description|

## Likes

|Column|
|------|
|***Post ID***|
|***User ID***|

## Medical History

|Column|
|------|
|**ID**|
|*Pet ID*|
|Allergies|
|Vaccines|
|Chipped|

## Owners

|Column|
|------|
|**ID**|
|First Name|
|Last Name|
|Email|
|Address|
|Zip Code|
|*Insurance ID*|
|Phone Number|

## Payment Methods

|Column|
|------|
|**ID**|
|*Owner ID*|
|Card Number|
|Card Expiration|

## Payments

|Column|
|------|
|**ID**|
|Billed On|
|*Payment Method ID*|
|Amount Due|
|Amount Paid|

## Pets

|Column|
|------|
|**ID**|
|Name|
|*Type ID*|
|DOB|
|*Owner ID*|
|Gender|
|Height|
|Weight|

## Posts

|Column|
|------|
|**ID**|
|*User ID*|
|Comment Text|

## Staff

|Column|
|------|
|**ID**|
|First Name|
|Last Name|
|Address|
|Zip Code|
|Phone Number|
|Email|
|*Job ID*|
|Salary|
|DOB|
|Schedule|

## Type

|Column|
|------|
|**ID**|
|Name|
|Description|

## Users

|Column|
|------|
|**ID**|
|Account Type|
|Username|
|Encrypted Password|
|First Name|
|Last Name|
|Profile Photo|

## Veterinarian Info

|Column|
|------|
|***ID***|
|Education|
|Experience|
|Biography|
|Schedule|