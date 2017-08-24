UPDATE database_instance SET slave_sql_running=0 where master_port=22294;
INSERT INTO database_instance_downtime (
    hostname, port, downtime_active, begin_timestamp, end_timestamp, owner, reason
  ) values (
    'testhost', 22295, 1, now(), now(), 'test', 'integration test'
  );
UPDATE database_instance_downtime SET end_timestamp=now() + interval 1 hour;
