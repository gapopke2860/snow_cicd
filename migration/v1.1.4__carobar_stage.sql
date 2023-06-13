USE DATABASE dealerships;
CREATE SCHEMA dealerships.STAGE_CAROBAR;
use schema dealerships.STAGE_CAROBAR;

CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.CAR_SALES (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	SUBDEALER_ID VARCHAR(50),
	EMP_ID VARCHAR(50),
	DEALER_ID VARCHAR(50),
	CAR_VERSION_ID NUMBER(38,0),
	CUSTOMER_AGE NUMBER(38,0),
	CUSTOMER_ID VARCHAR(50),
	CAR_ID VARCHAR(50),
	CAR_TYPE VARCHAR(50),
	COST_PER_CAR NUMBER(38,0),
	CUSTOMER_SEX VARCHAR(50),
	SALE_DATE DATE,
	ARRIVAL_DATE DATE,
	MANUFACTURER_ID VARCHAR(50),
	SELL_PRICE NUMBER(38,0),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.CLICK_DATA (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	TIMESTAMP TIMESTAMP_TZ(9),
	DEALER_ID VARCHAR(50),
	FILTERS VARCHAR(50),
	CAR_ID VARCHAR(50),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.CUSTOMER (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	CUSTOMER_ID VARCHAR(50),
	CUSTOMER_EMAIL VARCHAR(50),
	FNAME VARCHAR(50),
	LNAME VARCHAR(50),
	DEALER_ID VARCHAR(50),
	CUSTOMER_AGE NUMBER(38,0),
	CUSTOMER_SEX VARCHAR(50),
	BOUGHT_CAR BOOLEAN,
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	SUBDEALER_ID VARCHAR(50),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.CUSTOMER_COMPLAINT (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	CUSTOMER_ID VARCHAR(50),
	COMPLAINT VARCHAR(50),
	DEALER_ID VARCHAR(50),
	CAR_VERSION_ID VARCHAR(50),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.DEALER_MASTER (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	CITY VARCHAR(50),
	DEALERS VARCHAR(50),
	DEALER_COST NUMBER(38,0),
	CAR_VERSION_ID VARCHAR(50),
	DEALER_ID VARCHAR(50),
	STATE VARCHAR(50),
	SUBDEALER_ID VARCHAR(50),
	VARIANT VARCHAR(50),
	BRAND VARCHAR(50),
	MODEL VARCHAR(50),
	DEALER_SELL_PRICE NUMBER(38,0),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.EMPLOYEE (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	EMP_ID VARCHAR(50),
	EMP_COMMISSION FLOAT,
	SUBDEALER_ID VARCHAR(50),
	EMP_END_DATE DATE,
	EMP_FNAME VARCHAR(50),
	EMP_LNAME VARCHAR(50),
	EMP_PHONE VARCHAR(50),
	EMP_CITY VARCHAR(50),
	DEALER_ID VARCHAR(50),
	EMP_START_DATE DATE,
	EMP_EMAIL VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.FEATURE_DATA (
	FEATURE_TRACKING NUMBER(38,0) NOT NULL,
	SUNROOF VARCHAR(50),
	COLORS VARCHAR(50),
	POWER_STEERING VARCHAR(50),
	ALLOY_WHEEL VARCHAR(50),
	KEY_LESS_ENTRY VARCHAR(50),
	AUTOMATIC_CLIMATE_CONTROL VARCHAR(50),
	FOG_LIGHTS VARCHAR(50),
	DBT_UPDATED_AT VARCHAR(50),
	AC_VENT VARCHAR(50),
	DBT_VALID_TO VARCHAR(50),
	PARKING_SENSOR VARCHAR(50),
	CHILD_LOCK_SAFETY VARCHAR(50),
	CRUISE_CONTROL VARCHAR(50),
	CENTRAL_LOCK VARCHAR(50),
	REAR_CAMERA VARCHAR(50),
	DBT_VALID_FROM VARCHAR(50),
	CAR_VERSION_ID VARCHAR(50),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (FEATURE_TRACKING)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.FEATURE_MASTER (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	FEATURE_NAME VARCHAR(50),
	FEATURE_ID VARCHAR(50),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.GENERIC_CAR_ATTRIBUTE (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	DOORS NUMBER(38,0),
	AUDIOSYSTEM VARCHAR(50),
	CITY_MILEAGE VARCHAR(50),
	HEIGHT VARCHAR(50),
	SEATING_CAPACITY NUMBER(38,0),
	SHOWROOM_PRICE NUMBER(38,0),
	GEARS NUMBER(38,0),
	DRIVETRAIN VARCHAR(50),
	SPEEDOMETER VARCHAR(50),
	WIDTH VARCHAR(50),
	ENGINE_LOCATION VARCHAR(50),
	POWER VARCHAR(50),
	VARIANT VARCHAR(50),
	GROUND_CLEARANCE VARCHAR(50),
	FUEL_TANK_CAPACITY VARCHAR(50),
	SEATS_MATERIAL VARCHAR(50),
	HIGHWAY_MILEAGE VARCHAR(50),
	FRONT_BRAKES VARCHAR(50),
	TACHOMETER VARCHAR(50),
	CHILD_SAFETY_LOCKS VARCHAR(50),
	LENGTH VARCHAR(50),
	REAR_BRAKES VARCHAR(50),
	POWER_WINDOWS VARCHAR(50),
	BODY_TYPE VARCHAR(50),
	CITY VARCHAR(50),
	DISPLACEMENT VARCHAR(50),
	TORQUE VARCHAR(50),
	BRAND VARCHAR(50),
	FUEL_TYPE VARCHAR(50),
	FUEL_GAUGE VARCHAR(50),
	FUEL_LID_OPENER VARCHAR(50),
	MODEL VARCHAR(50),
	HANDBRAKE VARCHAR(50),
	WHEELBASE VARCHAR(50),
	FUEL_SYSTEM VARCHAR(50),
	STATE_CODE VARCHAR(50),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	CAR_VERSION_ID VARCHAR(50),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.INDIVDUAL_CAR_ATTRIBUTES (
	SOLD VARCHAR(50),
	CAR_TYPE VARCHAR(50),
	YEAR NUMBER(38,0),
	USED_CAR_KILOMETERS VARCHAR(50),
	SELL_PRICE NUMBER(38,0),
	DEALER_COST NUMBER(38,0),
	DEALER_ID NUMBER(38,0),
	USED_VEHICLE_CAR_NUMBER VARCHAR(50),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	SUBDEALER_ID VARCHAR(50),
	CAR_ID VARCHAR(50),
	CAR_VERSION_ID VARCHAR(50)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.MANUFACTURER_MASTER (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	MANUFACTURER_TRACKING NUMBER(38,0),
	MANUFACTURER_NAME VARCHAR(50),
	DEALER_ID VARCHAR(50),
	MANUFACTURER_ID VARCHAR(50),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.MANUFACTURER_MASTER_C (
	ID VARCHAR(18) NOT NULL,
	OWNER_ID VARCHAR(18),
	IS_DELETED BOOLEAN,
	NAME VARCHAR(240),
	CREATED_DATE TIMESTAMP_TZ(9),
	CREATED_BY_ID VARCHAR(18),
	LAST_MODIFIED_DATE TIMESTAMP_TZ(9),
	LAST_MODIFIED_BY_ID VARCHAR(18),
	SYSTEM_MODSTAMP TIMESTAMP_TZ(9),
	DEALER_ID_C FLOAT,
	MANUFACTURER_ID_C FLOAT,
	MANUFACTURER_NAME_C VARCHAR(630),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (ID)
);
CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.POSTPURCHASESURVEY (
	_FIVETRAN_ID VARCHAR(256) NOT NULL,
	FUEL_TYPE VARCHAR(50),
	CAR_VERSION_ID VARCHAR(50),
	MOST_IMPORTANT_FEATURE VARCHAR(50),
	SEATING_CAPACITY VARCHAR(50),
	PRICE_RANGE VARCHAR(50),
	DEALER_ID VARCHAR(50),
	SURVEY_TRACKING NUMBER(38,0),
	OWNERSHIP_EXPERIENCE NUMBER(38,0),
	SAFETY_FEATURES NUMBER(38,0),
	MAINTENANCE_COSTS NUMBER(38,0),
	TRANSMISSION VARCHAR(50),
	CAR_TYPE VARCHAR(50),
	_FIVETRAN_INDEX NUMBER(38,0),
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (_FIVETRAN_ID)
);

CREATE TABLE DEALERSHIPS.STAGE_CAROBAR.TEST_DRIVES (
	ID VARCHAR(18) NOT NULL,
	OWNER_ID VARCHAR(18),
	IS_DELETED BOOLEAN,
	CREATED_DATE TIMESTAMP_TZ(9),
	CREATED_BY_ID VARCHAR(18),
	LAST_MODIFIED_DATE TIMESTAMP_TZ(9),
	LAST_MODIFIED_BY_ID VARCHAR(18),
	SYSTEM_MODSTAMP TIMESTAMP_TZ(9),
	CAR_VERSION_ID VARCHAR(630),
	DEALER_ID VARCHAR(630),
	EMP_ID VARCHAR(630),
	QUOTE_RELEASED VARCHAR(630),
	SUBDEALER_ID VARCHAR(630),
	TEST_DRIVE_BOOK_DATE DATE,
	TEST_DRIVE_ID FLOAT,
	_FIVETRAN_DELETED BOOLEAN,
	_FIVETRAN_SYNCED TIMESTAMP_TZ(9),
	primary key (ID)
);