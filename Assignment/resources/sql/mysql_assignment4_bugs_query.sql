CREATE TABLE `wallethub`.`bugs` (
  `id` BIGINT NOT NULL,
  `open_date` DATE NOT NULL,
  `close_date` DATE NOT NULL,
  `severity` INT NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('1', '2016-01-01', '2016-01-10', '1');
INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('2', '2015-12-31', '2016-01-05', '1');
INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('3', '2015-12-30', '2016-01-08', '2');
INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('4', '2016-01-02', '2016-01-09', '1');
INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('5', '2016-01-04', '2016-01-11', '3');
INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('6', '2016-01-05', '2016-01-12', '1');
INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('7', '2015-12-05', '2016-01-12', '5');
INSERT INTO `wallethub`.`bugs` (`id`, `open_date`, `close_date`, `severity`) VALUES ('8', '2015-01-05', '2016-01-14', '5');

SET @dateStart  = '2016-01-01';            
SET @dateEnd    = '2016-01-10';

SELECT open_date, count(open_date) as count FROM wallethub.bugs
WHERE open_date <= @dateStart AND close_date > @dateEnd
GROUP BY open_date;