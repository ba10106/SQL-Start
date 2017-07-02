-- DROP屏蔽用關鍵字清單.
DROP TABLE BLOCKED_KEYWORDS;
DROP SEQUENCE KEYWORD_NO_SQ;

-- DROP最新消息公告.
DROP TABLE ANNOUNCEMENT;
DROP SEQUENCE ANN_NO_SQ;

-- DROP檢舉單.
DROP TABLE CHECKLIST;
DROP SEQUENCE CHLI_NO_SQ;

-- DROP評價.
DROP TABLE COMMEND;
DROP SEQUENCE COMM_MEMNO_SQ;

-- DROP訂單明細.
DROP TABLE ORDERDE_DETAIL;
DROP SEQUENCE ORDERDE_DETAIL_SQ;

-- DROP一般商品.
DROP TABLE GOODS_SELL;
DROP SEQUENCE GS_NO_SQ;

-- DROP租借商品.
DROP TABLE GOODS_RENT;
DROP SEQUENCE GR_NO_SQ;

-- DROP場地.
DROP TABLE PLACE;
DROP SEQUENCE P_NO_SQ;

-- DROP權限明細.
DROP TABLE PURVIEW_DETAIL;

-- DROP野餐團成員名單明細.
DROP TABLE PICMEM;

-- DROP廣告.
DROP TABLE ADVERTISEMENT;
DROP SEQUENCE AD_NO_SQ;

-- DROP購買紀錄.
DROP TABLE BUY_RECORD;
DROP SEQUENCE BR_ID_SQ;

-- DROP留言板的留言(個人).
DROP TABLE BOARD_ARTICLE;
DROP SEQUENCE BOARD_ARTICLE_NO_SQ;

-- DROP野餐團的留言(PICNIC_PBOARD_ARTICLE)
DROP TABLE PBOARD_ARTICLE;
DROP SEQUENCE PBOARD_ARTICLE_NO_SQ;

-- DROP討論區文章.
DROP TABLE FORUM_ARTICLE;
DROP SEQUENCE FORUM_ARTICLE_NO_SQ;

-- DROP討論區.
DROP TABLE FORUM_BOARD;
DROP SEQUENCE FORUM_NO_SQ;

-- DROP野餐團的聊天室訊息記錄
DROP TABLE PCHATROOM_MES;
DROP SEQUENCE CRMSG_NO_SQ;

-- DROP聊天室訊息紀錄.
DROP TABLE CHATROOM_MESSAGE;
DROP SEQUENCE CR_MSG_NO_SQ;

-- DROP聊天室成員名單明細.
DROP TABLE CHATROOM_MEMBERS;

-- DROP聊天室.
DROP TABLE CHATROOM;
DROP SEQUENCE CHATROOM_NO_SQ;

-- DROP野餐團.
DROP TABLE PICNIC;
DROP SEQUENCE PICNIC_NO_SQ;

-- DROP站內信.
DROP TABLE INTERNAL_LETTER;
DROP SEQUENCE LETTER_NO_SQ;

-- DROP會員通訊錄名單.
DROP TABLE CONTACT_LIST;

-- DROP權限.
DROP TABLE PURVIEW;
DROP SEQUENCE PURVIEW_NO_SQ;

-- DROP管理員.
DROP TABLE ADMINISTRATOR;
DROP SEQUENCE ADM_NO_SQ;

-- DROP廠商會員.
DROP TABLE MANUFACTURERS;
DROP SEQUENCE MF_NO_SQ;

-- DROP一般會員.
DROP TABLE GENERAL_MEMBER;
DROP SEQUENCE MEM_NO_SQ;






-- 設定英文語系.
ALTER SESSION SET NLS_LANGUAGE = 'American';

-- 一般會員.
CREATE TABLE GENERAL_MEMBER (
MEM_NO                 VARCHAR2(10) NOT NULL,
MEM_NAME               VARCHAR2(30) NOT NULL,
MEM_GEN                CHAR(1),
MEM_BIRTH              DATE,
MEM_ADDR               VARCHAR2(300),
MEM_MAIL               VARCHAR2(30) NOT NULL UNIQUE,
MEM_PSW                VARCHAR2(128) NOT NULL,
MEM_SELF               VARCHAR2(800),
MEM_PIC                BLOB,
MEM_COIN               NUMBER(*),
MEM_STA              CHAR(1) NOT NULL,
MEM_PHONE              VARCHAR2(10),
MEM_PBOARD             CHAR(1) NOT NULL,
CONSTRAINT GENERAL_MEMBER_PRIMARY_KEY PRIMARY KEY(MEM_NO));
 
CREATE SEQUENCE MEM_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

-- 使用列舉欄位方式, 將資料新增至 GENERAL_MEMBER 表中.
-- 1, pw0001.
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), 'shyangs', 'F', '18-JAN-94', '臺北市大安區羅斯福路四段1號', 'shyangs@kimo.com', 'a026de8f8e9bb627828a4559402b831a', 367, 'E', 'N');
-- 2
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), '阿翔', 'M', '28-FEB-88', '彰化縣彰化市進德路1號', 'shyangs@gmail.com', 'e621e7f310445e00a661eacbc7f33542', 536, 'A', 'Y');
-- 3
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), '毛毛', 'M', '26-MAR-90', '臺中市西區民生路140號', 'reprehend@ariat.com', '86de92a688057d1d7946d58a9c5e5f8f', 765, 'A', 'N');
-- 4
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), 'flowhd', 'F', '25-APR-98', '新北市三峽區大學路151號', 'ficia@oabru.com', '2a9b67a625d00ad83b72ef247257453a', 0, 'U', 'N');
-- 5
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), '伸儒', 'M', '20-MAY-97', '臺北市中正區思源街18號', 'riufkty@lirtft.com', '896de0bf7b6894f5189c9c7c3f066910', 2898, 'M', 'N');
-- 6
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), '政弘', 'M', '23-JUN-92', '臺北市文山區指南路二段64號', 'ef5hsa@dfhr.com', 'cbbf9abc189f69129f1c93992661d704', 912, 'M', 'N');
-- 7
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), '友維', 'M', '07-JUL-94', '新竹市東區大學路1001號', 'hrfn@jryrr.com', '7d561f587e00f302dc116de93f3edcc2', 2250, 'A', 'N');
-- 8
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), '劍輝', 'M', '11-AUG-96', '桃園市中壢區中大路300號', 'jtytsw@mtert.com', '8d00ec50a565393e529bcb7d12fc8fe7', 710, 'E', 'N');
-- 9
INSERT INTO GENERAL_MEMBER(MEM_NO, MEM_NAME, MEM_GEN, MEM_BIRTH, MEM_ADDR, MEM_MAIL, MEM_PSW, MEM_COIN, MEM_STA, MEM_PBOARD)
VALUES('MG' || LPAD(MEM_NO_SQ.NEXTVAL, 8, '0'), '力愷', 'M', '15-SEP-93', '臺北市北投區立農街二段155號', 'ngeem@mytrr.com', '6e15d827e97fd58d1ddebacb970e6a21', 450, 'E', 'N');

COMMIT;



-- 廠商會員
CREATE TABLE MANUFACTURERS (
 MF_NO              VARCHAR2 (10) NOT NULL CONSTRAINT MANUFACTURERS_PRIMARY_KEY PRIMARY KEY,
 MF_NAME            VARCHAR2 (30) NOT NULL,
 MF_PHONE           VARCHAR2 (20) NOT NULL,
 MF_MAIL            VARCHAR2 (30) NOT NULL,
 MF_ACCO            VARCHAR2 (20) NOT NULL UNIQUE,
 MF_PSW             VARCHAR2 (20) NOT NULL,
 MF_LOGO            BLOB,
 MF_SELF            CLOB,
 MF_BS              VARCHAR2 (8),
 MF_ADDR            VARCHAR2 (300),
 MF_FAX             VARCHAR2 (20),
 MF_STA           CHAR (1) NOT NULL,
 MF_REPORTNUM           NUMBER (*));

CREATE SEQUENCE MF_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE; 

INSERT INTO MANUFACTURERS(MF_NO,MF_NAME,MF_PHONE,MF_MAIL,MF_ACCO,MF_PSW,MF_LOGO,MF_SELF,MF_BS,MF_ADDR,MF_FAX,MF_STA,MF_REPORTNUM)
VALUES('MM' || LPAD(MF_NO_SQ.NEXTVAL, 8, '0'),'A全','0971323121','jijri@rjioj.com','Away121','ae0514545',null,'Hello, we are A全','03-22221','桃園區中壢區中央路一號','03-156121','U',15);

INSERT INTO MANUFACTURERS(MF_NO,MF_NAME,MF_PHONE,MF_MAIL,MF_ACCO,MF_PSW,MF_LOGO,MF_SELF,MF_BS,MF_ADDR,MF_FAX,MF_STA,MF_REPORTNUM)
VALUES('MM' || LPAD(MF_NO_SQ.NEXTVAL, 8, '0'),'B歌','0972454221','reefc@rjioj.com','b5121','ae0514545',null,'Hello we are b歌','03-54454','桃園區中壢區中央路二號','03-454121','D',2);

INSERT INTO MANUFACTURERS(MF_NO,MF_NAME,MF_PHONE,MF_MAIL,MF_ACCO,MF_PSW,MF_LOGO,MF_SELF,MF_BS,MF_ADDR,MF_FAX,MF_STA,MF_REPORTNUM)
VALUES('MM' || LPAD(MF_NO_SQ.NEXTVAL, 8, '0'),'C++','0912121455','c++@gmial.com','ccaab','ae05w545',null,'Hello c++','03-23242','桃園區中壢區中央路三號','03-55521','D',8);



-- 管理員.
CREATE TABLE ADMINISTRATOR(
ADM_NO                   VARCHAR2(10) NOT NULL,
ADM_ACC                  VARCHAR2(20) NOT NULL, 
ADM_PW                   VARCHAR2(128) NOT NULL,
ADM_IDEN                 VARCHAR2(30) NOT NULL,
ADM_NAME                 VARCHAR2(30) NOT NULL,
ADM_STA                  CHAR(1) NOT NULL,
CONSTRAINT ADMINISTRATOR_PK PRIMARY KEY (ADM_NO));

CREATE SEQUENCE ADM_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;



-- 權限.
CREATE TABLE PURVIEW(
PURVIEW_NO                    VARCHAR2(10) NOT NULL,
PURVIEW_NAME                  VARCHAR2(30) NOT NULL,
CONSTRAINT PURVIEW_PK PRIMARY KEY(PURVIEW_NO));

CREATE SEQUENCE PURVIEW_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;



-- 會員通訊錄名單.
CREATE TABLE CONTACT_LIST(
MEM_NO                         VARCHAR2(10) NOT NULL,
CONTACT_NO                     VARCHAR2(10) NOT NULL,
RELATIONSHIP                   CHAR(1) NOT NULL,
CONSTRAINT CONTACT_LIST_CONTACTNO_FK FOREIGN KEY (CONTACT_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT CONTACT_LIST_MENNO_FK FOREIGN KEY (MEM_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT CONTACT_LIST_PK PRIMARY KEY (MEM_NO, CONTACT_NO));
 
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000003', 'F');
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000005', 'F');
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000006', 'F');
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000007', 'F');
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000008', 'F');
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000009', 'F');
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000001', 'B');
INSERT INTO CONTACT_LIST(MEM_NO, CONTACT_NO, RELATIONSHIP)
VALUES('MG00000002', 'MG00000004', 'B');

COMMIT;



-- 站內信.
CREATE TABLE INTERNAL_LETTER(
LETTER_NO              VARCHAR2(10) NOT NULL,
SENDER_NO              VARCHAR2(10),
RECIPIENT_NO           VARCHAR2(10),
LETTER_DATE	           DATE,
LETTER_TEXT            CLOB NOT NULL,
LETTER_TITLE	          VARCHAR2(90) NOT NULL,
LETTER_STA          CHAR(1),
CONSTRAINT INTERNAL_LETTER_SENDERNO_FK FOREIGN KEY (SENDER_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT INTERNAL_LETTER_RECIPIENTNO_FK FOREIGN KEY(RECIPIENT_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT INTERNAL_LETTER_PK PRIMARY KEY(LETTER_NO));


CREATE SEQUENCE LETTER_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO INTERNAL_LETTER(LETTER_NO, SENDER_NO, RECIPIENT_NO, LETTER_DATE, LETTER_TEXT, LETTER_TITLE, LETTER_STA)
VALUES('IL' || LPAD(LETTER_NO_SQ.NEXTVAL, 8, '0'), NULL, 'MG00000002', SYSDATE, '內文: 歡迎', '標題: 系統的歡迎信', 'U');
INSERT INTO INTERNAL_LETTER(LETTER_NO, SENDER_NO, RECIPIENT_NO, LETTER_DATE, LETTER_TEXT, LETTER_TITLE, LETTER_STA)
VALUES('IL' || LPAD(LETTER_NO_SQ.NEXTVAL, 8, '0'), 'MG00000004', 'MG00000002', SYSDATE, '內文: 來自好友的信', '標題: 好友的問候', 'U');

COMMIT;



-- 野餐團.
CREATE TABLE PICNIC(
PICNIC_NO                         VARCHAR2(10) NOT NULL,
PICNIC_NAME                       VARCHAR2(300)NOT NULL,
PICNIC_DESC                       CLOB,
PICKUPDATE                        DATE,
PICNIC_STARTUP                    DATE NOT NULL,
PICNIC_SETUP                      DATE NOT NULL,
PICNIC_CHK                        CHAR(1) NOT NULL,
PICNIC_DATE                       DATE NOT NULL,
PICNIC_PL                         NUMBER(3) NOT NULL,
PICNIC_STA                        CHAR(1) NOT NULL,
ORD_TOTAL                        NUMBER(*) NOT NULL,
ORD_DATE                         DATE,
ORD_DM                           VARCHAR2(30) NOT NULL,
ORD_STA                          CHAR(1) NOT NULL,
PICNIC_LAT			NUMBER(*) NOT NULL,
PICNIC_LON			NUMBER(*) NOT NULL,
CONSTRAINT PICNIC_PRIMARY_KEY PRIMARY KEY (PICNIC_NO));

CREATE SEQUENCE PICNIC_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '海賊團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 5, 'S', 0, 'unknown', 'S',24.969479, 121.193514);
INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '減肥團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 5, 'S', 0, 'unknown', 'S',24.9674754,121.1932079);
INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '胖胖團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 10, 'S', 0, 'unknown', 'S',24.9682765,121.1900487);
INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '吃漢團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 5, 'S', 0, 'unknown', 'S',25.0314901,121.5332146);
INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '廢物團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 30, 'S', 0, 'unknown', 'S',25.0741622,121.5341675);
INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '遲到團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 5, 'S', 0, 'unknown', 'S',24.1395013,120.6322513);
INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '一團肉團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 3, 'S', 0, 'unknown', 'S',23.0010052,120.2094921);
INSERT INTO PICNIC(PICNIC_NO, PICNIC_NAME, PICNIC_STARTUP, PICNIC_SETUP, PICNIC_CHK, PICNIC_DATE, PICNIC_PL, PICNIC_STA, ORD_TOTAL, ORD_DM, ORD_STA, PICNIC_LAT, PICNIC_LON)
VALUES('PG' || LPAD(PICNIC_NO_SQ.NEXTVAL, 8, '0'), '長輩團', SYSDATE, ADD_MONTHS(SYSDATE, 1), 'Y', ADD_MONTHS(SYSDATE, 2), 1, 'S', 0, 'unknown', 'S',22.6283564,120.2863812);
COMMIT;


-- 聊天室.
CREATE TABLE CHATROOM(
CHATROOM_NO               VARCHAR2(10) NOT NULL,
CHATROOM_NAME             VARCHAR2(90),
CHATROOM_KIND             NUMBER(1),
CONSTRAINT CHATROOM_PRIMARY_KEY PRIMARY KEY (CHATROOM_NO));

CREATE SEQUENCE CHATROOM_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'輝哥愛聊天',NULL);
INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'123聊天',NULL);
INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'俊傑愛吃飯',NULL);
INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'志傑愛睡叫',NULL);
INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'貿元愛吃來姆斯',NULL);
INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'小白會讀書',NULL);
INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'熱線你和我',NULL);
INSERT INTO CHATROOM(CHATROOM_NO,CHATROOM_NAME,CHATROOM_KIND)
  VALUES('CR' || LPAD(CHATROOM_NO_SQ.NEXTVAL, 8, '0'),'不要亂摸我',NULL);

COMMIT;


-- 聊天室成員名單明細.
CREATE TABLE CHATROOM_MEMBERS(
CHATROOM_NO              VARCHAR2(10) NOT NULL,
MEM_NO                   VARCHAR2(10) NOT NULL,
CHATROOM_ROLE            CHAR(1),
BAN_UNTIL                TIMESTAMP,
CONSTRAINT CHATROOM_MEMBERS_CHATROOMNO_FK FOREIGN KEY (CHATROOM_NO) REFERENCES CHATROOM (CHATROOM_NO),
CONSTRAINT CHATROOM_MEMBERS_MEMNO_FK FOREIGN KEY (MEM_NO) REFERENCES GENERAL_MEMBER (MEM_NO),
CONSTRAINT CHATEROOM_MEMBERS_PRIMARY_KEY PRIMARY KEY (CHATROOM_NO,MEM_NO));

insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000001','MG00000001','1');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000001','MG00000002','0');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000001','MG00000003','0');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000001','MG00000004','0');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000001','MG00000005','0');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000002','MG00000002','1');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000002','MG00000003','0');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000002','MG00000006','0');
insert into chatroom_members(chatroom_no,mem_no,chatroom_role)
values('CR00000002','MG00000007','0');

-- 聊天室訊息紀錄.
CREATE TABLE CHATROOM_MESSAGE(
CR_MSG_NO                    VARCHAR2(10) NOT NULL,
CHATROOM_NO                  VARCHAR2(10) NOT NULL,
MEM_NO                       VARCHAR2(10) NOT NULL,
MESSAGE_DATE                 TIMESTAMP NOT NULL,
MESSAGE_TEXT                 CLOB,
MESSAGE_IMG                  BLOB,
CONSTRAINT CHATROOM_MESSAGE_CHATROOMNO_FK FOREIGN KEY (CHATROOM_NO) REFERENCES CHATROOM(CHATROOM_NO),
CONSTRAINT CHATROOM_MESSAGE_MEMNO_FK FOREIGN KEY (MEM_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT CHATROOM_MESSAGE_PRIMARY_KEY PRIMARY KEY(CR_MSG_NO));

CREATE SEQUENCE CR_MSG_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000003',sysdate,'安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000002','MG00000001',sysdate,'安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000003',sysdate,'安安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000002',sysdate,'安安安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000003',sysdate,'安安安安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000002',sysdate,'安安安安安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000005',sysdate,'安安安安安安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000002',sysdate,'安安安安安安安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000002','MG00000001',sysdate,'安安',null);
insert into chatroom_message
values('CM'||lpad(CR_MSG_NO_SQ.nextval,8,'0'),'CR00000001','MG00000002',sysdate,'安安安安安安安安',null);

-- 野餐團的聊天室訊息記錄.
CREATE TABLE PCHATROOM_MES(
CRMSG_NO                    VARCHAR2(10) NOT NULL,
PICNIC_NO                   VARCHAR2(10) NOT NULL,
MEM_NO                      VARCHAR2(10) NOT NULL,
MESSAGE_DATE                TIMESTAMP,
MESSAGE_TEXT                CLOB,
MESSAGE_IMG                 BLOB,
CONSTRAINT PCHATROOM_MES_PICNICNO_FK FOREIGN KEY (PICNIC_NO) REFERENCES PICNIC (PICNIC_NO),
CONSTRAINT PCHATROOM_MES_MEMNO_FK FOREIGN KEY (MEM_NO) REFERENCES GENERAL_MEMBER (MEM_NO),
CONSTRAINT PCHATROOM_MES_CRMSG_NO_PK PRIMARY KEY (CRMSG_NO));

CREATE SEQUENCE CRMSG_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO PCHATROOM_MES(CRMSG_NO, PICNIC_NO, MEM_NO, MESSAGE_DATE, MESSAGE_TEXT)
VALUES('PM' || LPAD(CRMSG_NO_SQ.NEXTVAL, 8, '0'), 'PG00000001', 'MG00000001', SYSDATE, '野餐團的聊天室訊息AAA');
INSERT INTO PCHATROOM_MES(CRMSG_NO, PICNIC_NO, MEM_NO, MESSAGE_DATE, MESSAGE_TEXT)
VALUES('PM' || LPAD(CRMSG_NO_SQ.NEXTVAL, 8, '0'), 'PG00000001', 'MG00000006', SYSDATE, '野餐團的聊天室訊息BBB');
INSERT INTO PCHATROOM_MES(CRMSG_NO, PICNIC_NO, MEM_NO, MESSAGE_DATE, MESSAGE_TEXT)
VALUES('PM' || LPAD(CRMSG_NO_SQ.NEXTVAL, 8, '0'), 'PG00000002', 'MG00000002', SYSDATE, '野餐團的聊天室訊息CCC');
INSERT INTO PCHATROOM_MES(CRMSG_NO, PICNIC_NO, MEM_NO, MESSAGE_DATE, MESSAGE_TEXT)
VALUES('PM' || LPAD(CRMSG_NO_SQ.NEXTVAL, 8, '0'), 'PG00000002', 'MG00000003', SYSDATE, '野餐團的聊天室訊息DDD');

COMMIT;



-- 討論區.
CREATE TABLE FORUM_BOARD(
FORUM_NO                        VARCHAR2(10)NOT NULL,
FORUM_NAME                      VARCHAR2(90)NOT NULL,
FORUM_DESC                      CLOB,
FORUM_STA                       CHAR(1) NOT NULL,
CONSTRAINT FORUM_BOARD_PK PRIMARY KEY(FORUM_NO));

CREATE SEQUENCE FORUM_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO FORUM_BOARD(FORUM_NO, FORUM_NAME, FORUM_STA)
VALUES('BF' || LPAD(FORUM_NO_SQ.NEXTVAL, 8, '0'), '站務討論與建議', 'V');
INSERT INTO FORUM_BOARD(FORUM_NO, FORUM_NAME, FORUM_STA)
VALUES('BF' || LPAD(FORUM_NO_SQ.NEXTVAL, 8, '0'), '哈拉閒聊', 'V');

COMMIT;



-- 討論區文章.
CREATE TABLE FORUM_ARTICLE(
ARTICLE_NO                       VARCHAR2(10)NOT NULL,  
AUTHOR_NO                        VARCHAR2(10),
TOPIC_NO                         VARCHAR2(10),
FORUM_NO                         VARCHAR2(10) NOT NULL,
ARTICLE_TITLE                    VARCHAR2(300) NOT NULL,
ARTICLE_TEXT                     CLOB NOT NULL,
ARTICLE_POST                     DATE NOT NULL,
ARTICLE_EDIT                     DATE,
ARTICLE_VIEWS                    NUMBER(*)NOT NULL,
ARTICLE_STA                   CHAR(1),
ARTICLE_KIND                     NUMBER(1)NOT NULL,
ARTICLE_PW                       VARCHAR2(128),
CONSTRAINT FORUM_ARTICLE_AUTHORNO_FK FOREIGN KEY(AUTHOR_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT FORUM_ARTICLE_TOPICNO_FK FOREIGN KEY(TOPIC_NO) REFERENCES FORUM_ARTICLE(ARTICLE_NO),
CONSTRAINT FORUM_ARTICLE_FK FOREIGN KEY(FORUM_NO) REFERENCES FORUM_BOARD(FORUM_NO),
CONSTRAINT FORUM_ARTICLE_PK PRIMARY KEY(ARTICLE_NO));

CREATE SEQUENCE FORUM_ARTICLE_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO FORUM_ARTICLE(ARTICLE_NO, FORUM_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS,ARTICLE_KIND)
VALUES('AF' || LPAD(FORUM_ARTICLE_NO_SQ.NEXTVAL, 8, '0'),'BF00000001','[公告] 討論區規範','規範守則詳細內文',SYSDATE,0,0);

COMMIT;



-- 野餐團的留言(PICNIC_PBOARD_ARTICLE)
CREATE TABLE PBOARD_ARTICLE(
ARTICLE_NO                 VARCHAR2(10) NOT NULL,
AUTHOR_NO                  VARCHAR2(10),
TOPIC_NO                   VARCHAR2(10),
PICNIC_NO                  VARCHAR2(10) NOT NULL,
ARTICLE_TITLE              VARCHAR2(300) NOT NULL,
ARTICLE_TEXT               CLOB NOT NULL,
ARTICLE_POST               DATE NOT NULL,
ARTICLE_EDIT               DATE,
ARTICLE_VIEWS              NUMBER(*) NOT NULL,
ARTICLE_STA             CHAR(1),
ARTICLE_KIND               NUMBER(1) NOT NULL,
ARTICLE_PW                 VARCHAR2(128),
CONSTRAINT PBOARD_ARTICLE_PICNICNO_FK FOREIGN KEY(PICNIC_NO) REFERENCES PICNIC(PICNIC_NO),
CONSTRAINT PBOARD_ARTICLE_TOPICNO_FK FOREIGN KEY(TOPIC_NO) REFERENCES PBOARD_ARTICLE(ARTICLE_NO),
CONSTRAINT PBOARD_ARTICLE_AUTHORNO_FK FOREIGN KEY(AUTHOR_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT PBOARD_ARTICLE_PK PRIMARY KEY(ARTICLE_NO));

CREATE SEQUENCE PBOARD_ARTICLE_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO PBOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, PICNIC_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AB' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000001', 'PG00000001', '[標題]好開心','我覺得好開心', SYSTIMESTAMP, 0, 1);
INSERT INTO PBOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, PICNIC_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AB' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000002', 'PG00000001', '[標題]讚','這個版好讚', SYSTIMESTAMP, 0, 1);
INSERT INTO PBOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, PICNIC_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AB' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000003', 'PG00000001', '[標題]感謝','今天逛到這個版我真的覺得好開心', SYSTIMESTAMP, 0, 1);
INSERT INTO PBOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, PICNIC_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AB' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000004', 'PG00000001', '[標題]1234','12345678', SYSTIMESTAMP, 0, 1);

COMMIT;


-- 留言板的留言(個人).
CREATE TABLE BOARD_ARTICLE(
ARTICLE_NO                 VARCHAR2(10) NOT NULL,
AUTHOR_NO                  VARCHAR2(10),
TOPIC_NO                   VARCHAR2(10),
BOARD_NO                   VARCHAR2(10) NOT NULL,
ARTICLE_TITLE              VARCHAR2(300) NOT NULL,
ARTICLE_TEXT               CLOB NOT NULL,
ARTICLE_POST               DATE NOT NULL,
ARTICLE_EDIT               DATE,
ARTICLE_VIEWS              NUMBER(*) NOT NULL,
ARTICLE_STA             CHAR(1),
ARTICLE_KIND               NUMBER(1) NOT NULL,
ARTICLE_PW                 VARCHAR2(128),
CONSTRAINT BOARD_ARTICLE_AUTHORNO_FK FOREIGN KEY(AUTHOR_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT BOARD_ARTICLE_BOARDNO_FK FOREIGN KEY(BOARD_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT BOARD_ARTICLE_TOPICNO_FK FOREIGN KEY(TOPIC_NO) REFERENCES BOARD_ARTICLE(ARTICLE_NO),
CONSTRAINT BOARD_ARTICLE_PK PRIMARY KEY(ARTICLE_NO));

CREATE SEQUENCE BOARD_ARTICLE_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO BOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, BOARD_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AP' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000001', 'MG00000001', '[標題]好開心','我覺得好開心', SYSTIMESTAMP, 0, 1);
INSERT INTO BOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, BOARD_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AP' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000002', 'MG00000001', '[標題]讚','這個版好讚', SYSTIMESTAMP, 0, 1);
INSERT INTO BOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, BOARD_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AP' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000003', 'MG00000001', '[標題]感謝','今天逛到這個版我真的覺得好開心', SYSTIMESTAMP, 0, 1);
INSERT INTO BOARD_ARTICLE(ARTICLE_NO, AUTHOR_NO, BOARD_NO, ARTICLE_TITLE, ARTICLE_TEXT, ARTICLE_POST, ARTICLE_VIEWS, ARTICLE_KIND)
VALUES('AP' || LPAD(PBOARD_ARTICLE_NO_SQ.NEXTVAL, 8, '0'), 'MG00000004', 'MG00000001', '[標題]1234','12345678', SYSTIMESTAMP, 0, 1);

COMMIT;
 
 
-- 購買紀錄.
CREATE TABLE BUY_RECORD (
 BR_ID              VARCHAR2 (10) NOT NULL CONSTRAINT BR_ID_PK PRIMARY KEY,
 MEM_NO             VARCHAR2 (10) NOT NULL CONSTRAINT MEM_NO_FK REFERENCES GENERAL_MEMBER(MEM_NO),
 BR_DATE            DATE NOT NULL,
 BR_CASH            NUMBER (10) NOT NULL);
 
CREATE SEQUENCE BR_ID_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO BUY_RECORD(BR_ID,MEM_NO,BR_DATE,BR_CASH)
      VALUES('BR' || LPAD(BR_ID_SQ.NEXTVAL, 8, '0'),'MG00000001','18-JAN-09',500);

INSERT INTO BUY_RECORD(BR_ID,MEM_NO,BR_DATE,BR_CASH)
      VALUES('BR' || LPAD(BR_ID_SQ.NEXTVAL, 8, '0'),'MG00000001','18-APR-09',1000);

INSERT INTO BUY_RECORD(BR_ID,MEM_NO,BR_DATE,BR_CASH)
      VALUES('BR' || LPAD(BR_ID_SQ.NEXTVAL, 8, '0'),'MG00000002','12-DEC-09',500);


 
--廣告
CREATE TABLE ADVERTISEMENT (
 AD_NO              VARCHAR2 (10) NOT NULL CONSTRAINT ADVERTISEMENT_PRIMARY_KEY PRIMARY KEY,
 MF_NO              VARCHAR2 (10) NOT NULL,
 AD_SELF            CLOB ,
 AD_PHOTO           BLOB ,
 DAY_START          DATE NOT NULL ,
 DAY_END            DATE NOT NULL,
 AD_CASH            NUMBER(*) NOT NULL,
 AD_STA             CHAR (1) NOT NULL,
 CONSTRAINT ADVERTISEMENT_MFNO_FK FOREIGN KEY (MF_NO) REFERENCES MANUFACTURERS (MF_NO));

CREATE SEQUENCE AD_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

INSERT INTO Advertisement(AD_NO,MF_NO,AD_SELF,AD_PHOTO,DAY_START,DAY_END,AD_CASH,AD_STA)
	VALUES('AD' || LPAD(AD_NO_SQ.NEXTVAL, 8, '0'),'MM00000002','b歌折扣!!',null,'01-JAN-12','01-JAN-15',150000,'U');
INSERT INTO Advertisement(AD_NO,MF_NO,AD_SELF,AD_PHOTO,DAY_START,DAY_END,AD_CASH,AD_STA)
	VALUES('AD' || LPAD(AD_NO_SQ.NEXTVAL, 8, '0'),'MM00000001','A全牛奶買一送一大折扣!!',null,'03-AUG-12','01-APR-15',150000,'U');


 
--野餐團成員名單明細.
CREATE TABLE PICMEM(
PICNIC_NO               VARCHAR2(10) NOT NULL,
MEM_NO                  VARCHAR2(10) NOT NULL,
PICMEM_IDEN             VARCHAR2(9) NOT NULL,
PICMEM_STA              CHAR(1),
MEM_LONGI               NUMBER(*),
MEM_LATIT               NUMBER(*),
CONSTRAINT PICMEM_PICNICNO_FK FOREIGN KEY(PICNIC_NO) REFERENCES PICNIC (PICNIC_NO),
CONSTRAINT PICMEM_MEMNO_FK FOREIGN KEY(MEM_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT PICMEM_PK PRIMARY KEY(PICNIC_NO,MEM_NO));

INSERT INTO PICMEM(PICNIC_NO,MEM_NO,PICMEM_IDEN)
VALUES('PG00000001','MG00000002','團主');
INSERT INTO PICMEM(PICNIC_NO,MEM_NO,PICMEM_IDEN)
VALUES('PG00000001','MG00000004','副團主');
INSERT INTO PICMEM(PICNIC_NO,MEM_NO,PICMEM_IDEN)
VALUES('PG00000001','MG00000006','團員');
insert into picmem
values ('PG00000001','MG00000001','團員',null,null,null);
insert into picmem
values ('PG00000002','MG00000001','團員',null,null,null);
insert into picmem
values ('PG00000008','MG00000001','團主',null,null,null);
insert into picmem
values ('PG00000002','MG00000003','團員',null,null,null);
insert into picmem
values ('PG00000002','MG00000005','團員',null,null,null);
insert into picmem
values ('PG00000002','MG00000008','團員',null,null,null);
insert into picmem
values ('PG00000002','MG00000009','團員',null,null,null);
COMMIT;

 
-- 權限明細.
CREATE TABLE PURVIEW_DETAIL(
ADM_NO                       VARCHAR2(10) NOT NULL,
PURVIEW_NO                   VARCHAR2(10) NOT NULL,
CONSTRAINT PURVIEW_DETAIL_ADMNO_FK FOREIGN KEY (ADM_NO) REFERENCES ADMINISTRATOR (ADM_NO),
CONSTRAINT PURVIEW_DETAIL_PURVIEWNO_FK FOREIGN KEY (PURVIEW_NO) REFERENCES PURVIEW (PURVIEW_NO),
CONSTRAINT PURVIEW_DETAIL_PK PRIMARY KEY (ADM_NO,PURVIEW_NO));
 

 
-- 場地.
CREATE TABLE PLACE(
P_NO                              VARCHAR2(10) NOT NULL,
MF_NO                              VARCHAR2(10) ,
MEM_NO                             VARCHAR2(10) ,
P_NAME                             VARCHAR2(90) NOT NULL,
P_UNTIL                            DATE,
P_PLACE                            VARCHAR2(300),
P_POP                              NUMBER(3),
PIMG                               BLOB,
P_INFO                             CLOB,
P_STA                              CHAR(1) NOT NULL,
P_PRICE                            NUMBER(*) NOT NULL,
CONSTRAINT PLACE_MFNO_FK FOREIGN KEY (MF_NO) REFERENCES MANUFACTURERS (MF_NO),
CONSTRAINT PLACE_MEMNO_FK FOREIGN KEY (MEM_NO) REFERENCES GENERAL_MEMBER(MEM_NO),
CONSTRAINT GOODS_PLACE_PK PRIMARY KEY (P_NO));

CREATE SEQUENCE P_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

insert into PLACE (P_NO,MF_NO,P_NAME,P_UNTIL,P_PLACE,P_POP,P_INFO,P_STA,P_PRICE)values('P'||LPAD(P_NO_SQ.NEXTVAL,'9','0'),'MM00000002','太魯閣國家公園 ',SYSDATE,' 972花蓮縣秀林鄉富世村富世291號','40','太魯閣國家公園是台灣第四座成立的國家公園，前身為日治時期成立之次高太魯閣國立公園。第二次世界大戰後為國家級風景區，1986年11月12日公告計畫，1986年11月28日成立管理處。位於台灣東部，地跨花蓮縣、臺中市、南投縣三個行政區。園內有台灣第一條東西橫貫公路通過，稱為中橫公路系統。','A','25800');

insert into PLACE (P_NO,MF_NO,P_NAME,P_UNTIL,P_PLACE,P_POP,P_INFO,P_STA,P_PRICE)values('P'||LPAD(P_NO_SQ.NEXTVAL,'9','0'),'MM00000002','陽明山國家公園 ',SYSDATE,' 	中華民國台北市、新北市','50','陽明山原名草山（臺羅：Tsháu-suann），泛指大屯山、七星山、紗帽山、小觀音山這一帶的山區，而非單指某座山峰。清治時期，官府憂慮賊寇可匿於林中竊取硫磺，故定期放火燒山，因此整個山區只能長出五節芒這類的芒草。','A','45870');

insert into PLACE (P_NO,MF_NO,P_NAME,P_UNTIL,P_PLACE,P_POP,P_INFO,P_STA,P_PRICE)values('P'||LPAD(P_NO_SQ.NEXTVAL,'9','0'),'MM00000002','中正紀念堂 ',SYSDATE,' 	100台北市中正區中山南路21號','500','中正紀念堂是一座為紀念故前中華民國總統蔣中正而興建的建築，位於臺北市中正區，也是眾多紀念蔣中正總統的建築中規模最大者。','A','45870');

COMMIT;




-- 租借商品.
CREATE TABLE GOODS_RENT(
GR_NO              VARCHAR2(10) NOT NULL,
MF_NO              VARCHAR2(10) NOT NULL,
P_NO               VARCHAR2(10) NOT NULL,
GR_NAME            VARCHAR2(30) NOT NULL,
GR_DATE            DATE NOT NULL,
GR_PRICE           NUMBER(*) NOT NULL,
GR_COUNT           NUMBER(*) NOT NULL,
GR_INFO            CLOB,
GR_IMG             BLOB,
GR_UNTIL           DATE NOT NULL,
GR_PLACE           VARCHAR2(300) NOT NULL,
GR_STA             CHAR(1) NOT NULL,
CONSTRAINT GOODS_RENT_MFNO_FK FOREIGN KEY (MF_NO) REFERENCES MANUFACTURERS (MF_NO),
CONSTRAINT GOODS_RENT_PNO_FK FOREIGN KEY (P_NO) REFERENCES PLACE (P_NO),
CONSTRAINT GOODS_RENT_PRIMARY_KEY PRIMARY KEY (GR_NO));

CREATE SEQUENCE GR_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

insert into GOODS_RENT(GR_NO,MF_NO,P_NO,GR_NAME,GR_DATE,GR_PRICE,GR_COUNT,GR_INFO,GR_UNTIL,GR_PLACE,GR_STA) values('GR'||LPAD(GR_NO_SQ.nextval,'8','0'),'MM00000002','P000000001','救生圈',SYSDATE,'999','10','救生圈',SYSDATE + 1, '中華民國台北市、新北市','N');

insert into GOODS_RENT(GR_NO,MF_NO,P_NO,GR_NAME,GR_DATE,GR_PRICE,GR_COUNT,GR_INFO,GR_UNTIL,GR_PLACE,GR_STA) values('GR'||LPAD(GR_NO_SQ.nextval,'8','0'),'MM00000002','P000000001','人工呼吸器',SYSDATE,'999546','10','人工呼吸器',SYSDATE + 1, '中華民國台北市、新北市','N');

insert into GOODS_RENT(GR_NO,MF_NO,P_NO,GR_NAME,GR_DATE,GR_PRICE,GR_COUNT,GR_INFO,GR_UNTIL,GR_PLACE,GR_STA) values('GR'||LPAD(GR_NO_SQ.nextval,'8','0'),'MM00000002','P000000001','心臟除顫器',SYSDATE,'999546','10','心臟除顫器',SYSDATE + 1, '中華民國台北市、新北市','N');

COMMIT;



 
-- 一般商品.
CREATE TABLE GOODS_SELL(
GS_NO                      VARCHAR2(10) NOT NULL,
MF_NO                      VARCHAR2(10) NOT NULL,
GS_NAME                    VARCHAR2(30) NOT NULL,
GS_DATE                    DATE NOT NULL,
GS_PRICE                   NUMBER(*) NOT NULL,
GS_INFO                    CLOB,
GS_IMG                     BLOB,
GS_STA                     CHAR(1) NOT NULL,
CONSTRAINT GOODS_SELL_MFNO_FK FOREIGN KEY (MF_NO) REFERENCES MANUFACTURERS (MF_NO),
CONSTRAINT CONSTRAINT_PK PRIMARY KEY (GS_NO));

CREATE SEQUENCE GS_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

insert into GOODS_SELL(GS_NO,MF_NO,GS_NAME,GS_DATE,GS_PRICE,GS_INFO,GS_IMG,GS_STA) values ('GS'||LPAD(GS_NO_SQ.nextval,8,0),'MM00000003','手術刀',SYSDATE,'15200','一把手術刀由一個刀柄和一個刀刃組成，大部分都以不銹鋼製造。刀刃可以有多種形式（比如右手側的，彎曲的，鐮刀狀的等等），刀刃可以更換。 它非常鋒利，切割起來不必花費力氣。手術刀只可以單獨使用。一般用塑料包裝，也可以用金屬包裝。這種情況手術刀片只能一次性使用，刀柄經清洗及高溫消毒後可重複使用。','08078708545405','U');

insert into GOODS_SELL(GS_NO,MF_NO,GS_NAME,GS_DATE,GS_PRICE,GS_INFO,GS_IMG,GS_STA) values ('GS'||LPAD(GS_NO_SQ.nextval,8,0),'MM00000003','擔架床',SYSDATE,'1707','擔架床為運送傷者之救傷工具，由兩支承槓支撐著一塊帆布床身，承槓兩端連接手柄和滑輪。一些擔架床的承槓可以伸縮。床頭有枕袋，可塞入柔軟的物件。','08078708545405','U');

insert into GOODS_SELL(GS_NO,MF_NO,GS_NAME,GS_DATE,GS_PRICE,GS_INFO,GS_IMG,GS_STA) values ('GS'||LPAD(GS_NO_SQ.nextval,8,0),'MM00000003','非黏性敷料',SYSDATE,'1707','非黏性敷料（Non-adhesive dressings），顧名思義，就是沒有黏性的敷料，分為標準無黏敷料 (Prepared standard sterile dressings)和紗布敷料。','08078708545405','U');

COMMIT;

 

-- 訂單明細.
CREATE TABLE ORDERDE_DETAIL(
ORDERDE_DETAILNO           VARCHAR2(10) NOT NULL,
PICNIC_NO                  VARCHAR2(10) NOT NULL,
P_NO                      VARCHAR2(10) NOT NULL,
GR_NO                      VARCHAR2(10),
GS_NO                      VARCHAR2(10),
OD_AMOUNT                  NUMBER(3) NOT NULL,
OD_PRICE                   NUMBER(*) NOT NULL,
OD_DELIVER                 DATE NOT NULL,
OD_PLACE                   VARCHAR2(300),
OD_BS                      VARCHAR2(8),
CONSTRAINT ORDERDE_DETAIL_PICNICNO_FK FOREIGN KEY(PICNIC_NO) REFERENCES PICNIC(PICNIC_NO),
CONSTRAINT ORDERDE_DETAIL_PNO_FK FOREIGN KEY(P_NO) REFERENCES PLACE(P_NO),
CONSTRAINT ORDERDE_DETAIL_GRNO_FK FOREIGN KEY(GR_NO) REFERENCES GOODS_RENT(GR_NO),
CONSTRAINT ORDERDE_DETAIL_GSNO_FK FOREIGN KEY(GS_NO) REFERENCES GOODS_SELL(GS_NO),
CONSTRAINT ORDERDE_DETAIL_PK PRIMARY KEY (ORDERDE_DETAILNO ));

CREATE SEQUENCE ORDERDE_DETAIL_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

insert into ORDERDE_DETAIL (ORDERDE_DETAILNO,PICNIC_NO,P_NO,GS_NO,OD_AMOUNT,OD_PRICE,OD_DELIVER,OD_PLACE,OD_BS)values('OD'||LPAD(ORDERDE_DETAIL_SQ.nextval,'8','0'),'PG00000003','P000000001','GS00000001','4','4564575',SYSDATE,' 972花蓮縣秀林鄉富世村富世291號','U');
insert into ORDERDE_DETAIL (ORDERDE_DETAILNO,PICNIC_NO,P_NO,GR_NO,OD_AMOUNT,OD_PRICE,OD_DELIVER,OD_PLACE,OD_BS)values('OD'||LPAD(ORDERDE_DETAIL_SQ.nextval,'8','0'),'PG00000003','P000000001','GR00000002','4','4564575',SYSDATE,'972花蓮縣秀林鄉富世村富世291號','U');


 
-- 評價.
CREATE TABLE COMMEND(
COMM_MEMNO           VARCHAR2(10) NOT NULL,
COMM_BE_NO           VARCHAR2(10) NOT NULL,
COMM_CATE            NUMBER(*),
COMM_GRADE           NUMBER(*) NOT NULL,
COMM_DATE            DATE NOT NULL,
CONSTRAINT COMMEND_COMMMEMNO_FK FOREIGN KEY(COMM_MEMNO) REFERENCES GENERAL_MEMBER(MEM_NO), 
CONSTRAINT COMMEND_PK PRIMARY KEY(COMM_MEMNO,COMM_BE_NO));

CREATE SEQUENCE COMM_MEMNO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;



-- 檢舉單.
CREATE TABLE CHECKLIST(
CHLI_NO                      VARCHAR2(10) NOT NULL,
CHLI_CATE                    NUMBER(*) NOT NULL,
CHLI_BE_NUM                  VARCHAR2(10) NOT NULL,
CHLI_MEMNO                   VARCHAR2(10) NOT NULL,
CHLI_START                   DATE NOT NULL,
CHLI_END                     DATE NOT NULL,     
CHLI_DAY                     NUMBER(*) NOT NULL,
CHLI_PUN                     NUMBER(*) NOT NULL,
CHLI_REASON                  VARCHAR2(900) NOT NULL,
CHLI_DATE                    DATE NOT NULL,
CHLI_STA                     CHAR(1),
CONSTRAINT CHECKLIST_CHLINO_FK FOREIGN KEY(CHLI_NO) REFERENCES GENERAL_MEMBER(MEM_NO), 
CONSTRAINT CHECKLIST_PK PRIMARY KEY(CHLI_NO));

CREATE SEQUENCE CHLI_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;


-- 最新消息公告.
CREATE TABLE ANNOUNCEMENT(
ANN_NO                          VARCHAR2(10) NOT NULL,
ANN_TEXT                        CLOB NOT NULL,
CONSTRAINT ANNOUNCEMENT_PK PRIMARY KEY (ANN_NO));

CREATE SEQUENCE ANN_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

insert into ANNOUNCEMENT(ANN_NO, ANN_TEXT)
values('AN'||LPAD(ANN_NO_SQ.nextval,'8','0'),'最新消息: 公告內文');
insert into ANNOUNCEMENT(ANN_NO, ANN_TEXT)
values('AN'||LPAD(ANN_NO_SQ.nextval,'8','0'),'最新消息: 服務異動公告 ');
insert into ANNOUNCEMENT(ANN_NO, ANN_TEXT)
values('AN'||LPAD(ANN_NO_SQ.nextval,'8','0'),'最新消息: 系統2017/06/14(三)暫停服務');
insert into ANNOUNCEMENT(ANN_NO, ANN_TEXT)
values('AN'||LPAD(ANN_NO_SQ.nextval,'8','0'),'最新消息: 歡迎報名參加');


-- 屏蔽用關鍵字清單.
CREATE TABLE BLOCKED_KEYWORDS(
KEYWORD_NO                       VARCHAR2(10)NOT NULL,
KEYWORD                          VARCHAR2(90)NOT NULL,
REPLACEMENT                      VARCHAR2(90),
CONSTRAINT BLOCKED_KEYWORDS_PK PRIMARY KEY(KEYWORD_NO));

CREATE SEQUENCE KEYWORD_NO_SQ
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCACHE
NOCYCLE;

insert into BLOCKED_KEYWORDS(KEYWORD_NO, KEYWORD, REPLACEMENT)
values('BK'||LPAD(KEYWORD_NO_SQ.nextval,'8','0'), 'bullshit', '***');
insert into BLOCKED_KEYWORDS(KEYWORD_NO, KEYWORD, REPLACEMENT)
values('BK'||LPAD(KEYWORD_NO_SQ.nextval,'8','0'), 'fuck', '***');
insert into BLOCKED_KEYWORDS(KEYWORD_NO, KEYWORD, REPLACEMENT)
values('BK'||LPAD(KEYWORD_NO_SQ.nextval,'8','0'), 'bitch', '***');
insert into BLOCKED_KEYWORDS(KEYWORD_NO, KEYWORD, REPLACEMENT)
values('BK'||LPAD(KEYWORD_NO_SQ.nextval,'8','0'), 'shit', '***');

COMMIT;

