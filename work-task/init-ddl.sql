DROP DATABASE IF EXISTS elijah;
CREATE DATABASE `elijah` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE USER IF NOT EXISTS 'elijahuser'@'%' IDENTIFIED WITH mysql_native_password BY 'elijahuser';
GRANT select,update,insert on elijah.* to elijahuser;

use elijah;

drop table if exists t_work_task;
create table t_work_task(
    task_id int not null auto_increment  comment 'Task ID' ,
    project_name varchar(50) not null   comment 'Project Name' ,
    task_name varchar(100) not null   comment 'Task Name' ,
    wiki varchar(100)  null   comment 'Wiki' ,
    jira varchar(100)    comment 'Jira' ,
    related char(1) not null   comment 'related yourself' ,
    task_status varchar(20) not null   comment 'Status;Require Review;Developing;Testing;Deployed' ,
    memo varchar(255)    comment 'Memo' ,
    create_time datetime not null   comment 'Create Time' ,
    update_time datetime    comment 'Update Time' ,
    finish_time datetime    comment 'Finish Time' ,
    primary key (task_id)
)  auto_increment= 1000100010, comment = 'Work Task';


create index idx_task_name on t_work_task(task_name);
create index idx_update_time on t_work_task(update_time);

drop table if exists t_work_task_detail;
create table t_work_task_detail(
    task_detail_id int not null auto_increment  comment 'Task Detail ID' ,
    task_id int not null   comment 'Task ID' ,
    task_name varchar(100) not null   comment 'Task Name' ,
    developer varchar(100) not null   comment 'Developer' ,
    service_name varchar(255) not null   comment 'Service Name;e.g. Tradeii;Deposit' ,
    code_branch varchar(255) not null   comment 'Code Branch;feature-20220914-charge_back' ,
    task_status varchar(20) not null   comment 'Status;Code Design;Developing;Developed' ,
    memo varchar(255)    comment 'Memo' ,
    create_time datetime not null   comment 'Create Time' ,
    update_time datetime not null   comment 'Update Time' ,
    finish_time datetime    comment 'Finish Time' ,
    primary key (task_detail_id)
)  auto_increment= 2000100010, comment = 'Work Task Detail';


create index idx_task_name on t_work_task_detail(task_name);
create index idx_developer on t_work_task_detail(developer);
create index idx_update_time on t_work_task_detail(update_time);


drop table if exists t_task_issue;
create table t_task_issue(
    issue_id int not null auto_increment  comment 'Issue Id' ,
    task_id varchar(50) not null   comment 'Task ID' ,
    task_name varchar(100) not null   comment 'Task Name' ,
    issue_type varchar(30)    comment 'Issue Type' ,
    issue_description varchar(900)    comment 'Issue Description' ,
    issue_introspection varchar(900)    comment 'Issue Introspection' ,
    create_time datetime not null   comment 'Create Time' ,
    update_time datetime not null   comment 'Update Time' ,
    primary key (issue_id)
) auto_increment= 3000100010, comment = 'Task Issue';


create index idx_task_name on t_task_issue(task_name);
create index idx_update_time on t_task_issue(update_time);



alter table t_work_task
	add release_time datetime null comment 'Release Time' after task_status;