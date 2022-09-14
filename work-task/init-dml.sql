 INSERT INTO elijah.t_work_task (task_id, project_name, task_name, wiki, jira, related, task_status, memo, create_time, update_time, finish_time) VALUES
 (1000100016, 'Botim-PayBy', 'ChargeBack-交易', null, null, 'Y', 'Researching', 'waiting for require document', '2022-09-14 12:27:12', '2022-09-14 12:27:15', null),
 (1000100011, 'PayBy', 'lulu', null, 'http://jira.test2pay.com/browse/PM-3253', 'Y', 'UAT Deploy', null, '2022-08-04 11:44:03', '2022-09-14 11:44:05', null),
 (1000100012, 'PayBy', '保存账单PDF新增ufs bucket', null, 'http://jira.test2pay.com/browse/WORKFLOW-5229', 'Y', 'UAT Deploy', 'cr related to lulu ', '2022-08-15 11:44:03', '2022-09-14 11:44:05', null),
 (1000100013, 'PayBy', 'EDW-KLIP二维码支付渠道对接', null, 'http://jira.test2pay.com/browse/PM-3036', 'Y', 'UAT Testing', null, '2022-09-14 11:44:03', '2022-09-14 11:44:05', null),
 (1000100014, 'Botim-PayBy', 'ChargeBack-充值', null, 'http://jira.test2pay.com/browse/PM-3393', 'Y', 'SIM Testing', null, '2022-09-01 11:44:03', '2022-09-13 11:44:05', null),
 (1000100015, 'Botim-PayBy', '银行卡支持卡组织扩充', 'http://wiki.test2pay.com/pages/viewpage.action?pageId=40840893', 'http://jira.test2pay.com/browse/PM-3036', 'Y', 'Developing', null, '2022-09-08 11:44:03', '2022-09-13 11:44:05', null),
 (1000100010, 'PayBy', 'lean一期充值', 'http://wiki.test2pay.com/pages/viewpage.action?pageId=37307142', 'http://jira.test2pay.com/browse/PM-2945', 'Y', 'Pause', null, '2022-03-30 11:56:20', '2022-07-15 11:56:20', null)
 ;


INSERT INTO elijah.t_work_task_detail (task_detail_id, task_id, task_name, developer, service_name, code_branch, task_status, memo, create_time, update_time, finish_time) VALUES
 (2000100022, 1000100015, '银行卡支持卡组织扩充', 'Yu Tang', 'authpay', '', 'Developed', 'only ddl dml scripts', '2022-09-08 11:45:47', '2022-09-13 11:45:51', '2022-09-13 11:45:51'),
 (2000100026, 1000100014, 'ChargeBack-充值', 'Cong Zhou', 'dpm', 'feature-20220914-account_check_ignore', 'Developed', null, '2022-09-01 11:45:47', '2022-09-14 13:20:11', '2022-09-14 13:20:11'),
 (2000100020, 1000100014, 'ChargeBack-充值', 'Yu Tang', 'deposit', 'feature-20220831-chargeback_refund', 'Developed', 'add refunding function this is a bug', '2022-09-01 11:45:47', '2022-09-14 12:24:24', '2022-09-13 11:45:51'),
 (2000100019, 1000100014, 'ChargeBack-充值', 'Yu Tang', 'fundout', 'feature-20220831-chargeback_refund', 'Developed', 'add validating chargeBack ', '2022-09-01 11:45:47', '2022-09-14 12:24:24', '2022-09-13 11:45:51'),
 (2000100025, 1000100014, 'ChargeBack-充值', 'ZhengKe Zhou', 'cmf', '37-feature-220913-chargeback', 'Developed', null, '2022-09-01 11:45:47', '2022-09-13 13:13:45', '2022-09-13 13:13:45'),
 (2000100024, 1000100014, 'ChargeBack-充值', 'Dewen Li', 'basis', '59-chargeback-20220906', 'Developed', null, '2022-09-01 11:45:47', '2022-09-13 13:13:45', '2022-09-13 13:13:45'),
 (2000100023, 1000100014, 'ChargeBack-充值', 'Dewen Li', 'grc-component-connect', '208-chargeback-20220902', 'Developed', null, '2022-09-01 11:45:47', '2022-09-13 13:13:45', '2022-09-14 13:20:21'),
 (2000100021, 1000100014, 'ChargeBack-充值', 'Yu Tang', 'pfs', 'feature-20220831-chargeback_refund', 'Developed', 'set payee amount to zero and than using chargeBackPayee amount', '2022-09-01 11:45:47', '2022-09-13 11:45:51', '2022-09-13 11:45:51'),
 (2000100018, 1000100013, 'EDW-KLIP二维码支付渠道对接', 'Yu Tang', 'cashierii', 'feature-20220728-klip_pay', 'Developed', null, '2022-09-14 11:45:47', '2022-09-14 12:24:24', '2022-09-14 11:45:51'),
 (2000100017, 1000100013, 'EDW-KLIP二维码支付渠道对接', 'Yu Tang', 'tradeii', 'feature-20220728-klip_pay', 'Developed', null, '2022-09-14 11:45:47', '2022-09-14 12:24:24', '2022-09-14 11:45:51'),
 (2000100016, 1000100013, 'EDW-KLIP二维码支付渠道对接', 'Yu Tang', 'authpay', 'feature-20220728-klip_pay', 'Developed', null, '2022-09-14 11:45:47', '2022-09-14 12:24:24', '2022-09-14 11:45:51'),
 (2000100015, 1000100013, 'EDW-KLIP二维码支付渠道对接', 'Hefei Zhang', 'cmf', '32-feature-channel-klip', 'Developed', null, '2022-09-14 11:45:24', '2022-09-14 12:24:24', '2022-09-14 11:45:29'),
 (2000100014, 1000100011, 'lulu', 'Yu Tang', 'query', 'feature-20220822-lulu-exchange', 'Developed', null, '2022-08-04 11:44:03', '2022-09-14 12:24:24', '2022-08-04 11:44:03'),
 (2000100013, 1000100011, 'lulu', 'Yu Tang', 'query', 'feature-20220812-invoice-file-url', 'Developed', null, '2022-08-04 11:44:03', '2022-09-14 12:24:24', '2022-08-04 11:44:03'),
 (2000100010, 1000100010, 'lean一期充值', 'Yu Tang', 'lean', '32-feature-channel-klip', 'Pause', null, '2022-03-30 11:56:20', '2022-09-14 12:24:24', '2022-09-14 11:45:29'),
 (2000100012, 1000100010, 'lean一期充值', 'Yu Tang', 'deposit', 'feature-20220523-lean', 'Pause', null, '2022-03-30 11:56:20', '2022-09-14 12:24:24', '2022-09-14 11:45:29'),
 (2000100011, 1000100010, 'lean一期充值', 'Yu Tang', 'authpay', 'feature-20220523-integration-lean', 'Pause', null, '2022-03-30 11:56:20', '2022-09-14 12:24:24', '2022-09-14 11:45:29')
 ;