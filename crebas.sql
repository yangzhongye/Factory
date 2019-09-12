/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/9/9 9:48:17                             */
/*==============================================================*/


drop table if exists goods;

drop table if exists goods_img;

drop table if exists goods_in_out_detail;

drop table if exists user;

/*==============================================================*/
/* Table: goods                                                 */
/*==============================================================*/
create table goods
(
   id                   varchar(64) not null comment 'id',
   seq_no               bigint auto_increment comment '���',
   number               varchar(64) comment '���',
   name                 varchar(128) comment '����',
   quantity             decimal(18,2) comment '����',
   note                 varchar(256) comment '��ע',
   create_time          datetime comment '����ʱ��',
   create_user_id       varchar(64) comment '�����û�id',
   create_user_name     varchar(128) comment '�����û�����',
   update_time          datetime comment '�޸�ʱ��',
   update_user_id       varchar(64) comment '�޸��û�id',
   update_user_name     varchar(128) comment '�޸��û�����',
   primary key (id),
   unique key AK_Key_2 (seq_no)
);

alter table goods comment '��Ʒ��';

/*==============================================================*/
/* Table: goods_img                                             */
/*==============================================================*/
create table goods_img
(
   id                   varchar(64) not null comment 'id',
   goods_id             varchar(64) comment '��Ʒid',
   content              longblob comment 'ͼƬ����',
   original_name        varchar(256) comment 'ͼƬԭ����',
   primary key (id)
);

alter table goods_img comment '��ƷͼƬ��';

/*==============================================================*/
/* Table: goods_in_out_detail                                   */
/*==============================================================*/
create table goods_in_out_detail
(
   id                   varchar(64) not null comment 'id',
   goods_id             varchar(64) comment '��Ʒid',
   type                 char(1) comment '���� 1-�� 0-��',
   change_quantity      decimal(18,2) comment '�仯����',
   current_quantity     decimal(18,2) comment '��ǰ����',
   create_time          datetime comment '����ʱ��',
   oper_user_id         varchar(64) comment '�����û�id',
   oper_user_name       varchar(128) comment '�����û�����',
   primary key (id)
);

alter table goods_in_out_detail comment '��Ʒ��ˮ��';

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   varchar(64) not null comment 'id',
   name                 varchar(128) comment '����',
   login_name           varchar(128) comment '��¼��',
   login_pwd            varchar(64) comment '��¼����',
   create_time          datetime comment '����ʱ��',
   status               char(1) comment '״̬ 1-���� 0-����',
   update_time          datetime comment '�޸�ʱ��',
   mng_status           char(1) comment '�Ƿ���� 1-�� 0-��',
   primary key (id)
);

alter table user comment '�û���';

