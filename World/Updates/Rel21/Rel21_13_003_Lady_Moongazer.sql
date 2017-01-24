-- ----------------------------------------
-- Added to prevent timeout's while loading
-- ----------------------------------------
SET GLOBAL net_read_timeout=30;
SET GLOBAL net_write_timeout=60;
SET GLOBAL net_buffer_length=1000000; 
SET GLOBAL max_allowed_packet=1000000000;
SET GLOBAL connect_timeout=10000000;

-- --------------------------------------------------------------------------------
-- This is an attempt to create a full transactional MaNGOS update (v1.3)
-- --------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `update_mangos`; 

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_mangos`()
BEGIN
    DECLARE bRollback BOOL  DEFAULT FALSE ;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET `bRollback` = TRUE;

    -- Current Values (TODO - must be a better way to do this)
    SET @cCurVersion := (SELECT `version` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
    SET @cCurStructure := (SELECT structure FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
    SET @cCurContent := (SELECT content FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);

    -- Expected Values
    SET @cOldVersion = '21'; 
    SET @cOldStructure = '13'; 
    SET @cOldContent = '002';

    -- New Values
    SET @cNewVersion = '21';
    SET @cNewStructure = '13';
    SET @cNewContent = '003';
                            -- DESCRIPTION IS 30 Characters MAX    
    SET @cNewDescription = 'Lady_Moongazer';

                        -- COMMENT is 150 Characters MAX
    SET @cNewComment = 'Lady_Moongazer';

    -- Evaluate all settings
    SET @cCurResult := (SELECT description FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
    SET @cOldResult := (SELECT description FROM db_version WHERE `version`=@cOldVersion AND `structure`=@cOldStructure AND `content`=@cOldContent);
    SET @cNewResult := (SELECT description FROM db_version WHERE `version`=@cNewVersion AND `structure`=@cNewStructure AND `content`=@cNewContent);

    IF (@cCurResult = @cOldResult) THEN    -- Does the current version match the expected version
        -- APPLY UPDATE
        START TRANSACTION;

        -- UPDATE THE DB VERSION
        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
        INSERT INTO `db_version` VALUES (@cNewVersion, @cNewStructure, @cNewContent, @cNewDescription, @cNewComment);
        SET @cNewResult := (SELECT description FROM db_version WHERE `version`=@cNewVersion AND `structure`=@cNewStructure AND `content`=@cNewContent);

        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
        -- -- PLACE UPDATE SQL BELOW -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

    -- Lady Moongazer
-- movement type may not be correct
UPDATE creature SET Spawndist = 15, MovementType = 1 WHERE id = 2184;
UPDATE creature SET Spawndist = 15, MovementType = 1 WHERE id = 2184;
DELETE FROM creature_movement WHERE id = 37730;

-- drop
DELETE FROM creature_loot_template WHERE  entry = 2184;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(2184,858,1.1,0,1,1,0),
(2184,954,0.26,0,1,1,0),
(2184,955,0.52,0,1,1,0),
(2184,1179,2.5157,0,1,1,0),
(2184,1210,0.1,0,1,1,0),
(2184,1738,0.13,0,1,1,0),
(2184,1739,0.1,0,1,1,0),
(2184,1742,0.17,0,1,1,0),
(2184,1743,0.2,0,1,1,0),
(2184,1744,0.1,0,1,1,0),
(2184,1764,0.13,0,1,1,0),
(2184,1766,0.15,0,1,1,0),
(2184,1767,0.17,0,1,1,0),
(2184,1768,0.19,0,1,1,0),
(2184,1770,0.1,0,1,1,0),
(2184,1787,0.2,0,1,1,0),
(2184,1789,0.2,0,1,1,0),
(2184,1791,0.2,0,1,1,0),
(2184,1792,0.13,0,1,1,0),
(2184,1793,0.3,0,1,1,0),
(2184,1794,0.3,0,1,1,0),
(2184,1811,0.4,0,1,1,0),
(2184,1812,0.2,0,1,1,0),
(2184,1813,0.19,0,1,1,0),
(2184,1814,0.3,0,1,1,0),
(2184,1815,0.17,0,1,1,0),
(2184,1816,0.4,0,1,1,0),
(2184,1817,0.3,0,1,1,0),
(2184,2216,0.17,0,1,1,0),
(2184,2217,0.2,0,1,1,0),
(2184,2449,0.26,0,1,1,0),
(2184,2453,0.26,0,1,1,0),
(2184,2455,0.87,0,1,1,0),
(2184,2589,21,0,1,1,0),
(2184,2592,19,0,1,1,0),
(2184,2657,0.26,0,1,1,0),
(2184,2698,0.26,0,1,1,0),
(2184,2764,0.2,0,1,1,0),
(2184,2780,0.4,0,1,1,0),
(2184,2781,0.3,0,1,1,0),
(2184,3012,0.78,0,1,1,0),
(2184,3036,0.13,0,1,1,0),
(2184,3309,0.1,0,1,1,0),
(2184,3376,0.17,0,1,1,0),
(2184,4537,4.74,0,1,1,0),
(2184,4567,0.1,0,1,1,0),
(2184,4570,0.1,0,1,1,0),
(2184,4605,4,0,1,1,0),
(2184,5503,0.26,0,1,1,0),
(2184,6536,0.8,0,1,1,0),
(2184,6537,2,0,1,1,0),
(2184,6538,0.5,0,1,1,0),
(2184,6539,8,0,1,1,0),
(2184,6540,1.9,0,1,1,0),
(2184,6541,7,0,1,1,0),
(2184,6542,3,0,1,1,0),
(2184,6543,2,0,1,1,0),
(2184,6545,2,0,1,1,0),
(2184,6546,3,0,1,1,0),
(2184,6547,3,0,1,1,0),
(2184,6548,12,0,1,1,0),
(2184,6550,1.7,0,1,1,0),
(2184,6551,3,0,1,1,0),
(2184,6552,1.2,0,1,1,0),
(2184,6553,2,0,1,1,0),
(2184,6554,3,0,1,1,0),
(2184,6556,1.7,0,1,1,0),
(2184,6557,9,0,1,1,0),
(2184,6558,3,0,1,1,0),
(2184,9748,1.8,0,1,1,0),
(2184,9749,2,0,1,1,0),
(2184,9757,1.9,0,1,1,0),
(2184,9765,2,0,1,1,0),
(2184,9767,0.6,0,1,1,0),
(2184,9768,1.1,0,1,1,0),
(2184,9770,0.5,0,1,1,0),
(2184,9775,0.5,0,1,1,0),
(2184,9777,0.5,0,1,1,0),
(2184,9779,2,0,1,1,0),
(2184,9784,0.7,0,1,1,0),
(2184,9785,3,0,1,1,0),
(2184,9786,7,0,1,1,0),
(2184,9787,0.7,0,1,1,0),
(2184,9788,2,0,1,1,0),
(2184,9789,0.6,0,1,1,0),
(2184,14114,0.15,0,1,1,0),
(2184,15210,0.3,0,1,1,0),
(2184,15268,0.1,0,1,1,0),
(2184,15304,0.19,0,1,1,0),
(2184,15487,0.17,0,1,1,0),
(2184,24060,1,1,-24060,1,0),
(2184,24062,1,1,-24062,1,0),
(2184,24064,1,1,-24064,1,0),
(2184,24070,5,1,-24070,1,0),
(2184,24077,1,1,-24077,1,0),
(2184,24078,1,1,-24078,1,0);
    

        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
        -- -- PLACE UPDATE SQL ABOVE -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
        -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

        -- If we get here ok, commit the changes
        IF bRollback = TRUE THEN
            ROLLBACK;
            SHOW ERRORS;
            SELECT '* UPDATE FAILED *' AS `===== Status =====`,@cCurResult AS `===== DB is on Version: =====`;



        ELSE
            COMMIT;
            SELECT '* UPDATE COMPLETE *' AS `===== Status =====`,@cNewResult AS `===== DB is now on Version =====`;
        END IF;
    ELSE    -- Current version is not the expected version
        IF (@cCurResult = @cNewResult) THEN    -- Does the current version match the new version
            SELECT '* UPDATE SKIPPED *' AS `===== Status =====`,@cCurResult AS `===== DB is already on Version =====`;
        ELSE    -- Current version is not one related to this update
            IF(@cCurResult IS NULL) THEN    -- Something has gone wrong
                SELECT '* UPDATE FAILED *' AS `===== Status =====`,'Unable to locate DB Version Information' AS `============= Error Message =============`;
            ELSE
		IF(@cOldResult IS NULL) THEN    -- Something has gone wrong
		    SET @cCurVersion := (SELECT `version` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurStructure := (SELECT `STRUCTURE` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurContent := (SELECT `Content` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
                    SET @cCurOutput = CONCAT(@cCurVersion, '_', @cCurStructure, '_', @cCurContent, ' - ',@cCurResult);
                    SET @cOldResult = CONCAT('Rel',@cOldVersion, '_', @cOldStructure, '_', @cOldContent, ' - ','IS NOT APPLIED');
                    SELECT '* UPDATE SKIPPED *' AS `===== Status =====`,@cOldResult AS `=== Expected ===`,@cCurOutput AS `===== Found Version =====`;
		ELSE
		    SET @cCurVersion := (SELECT `version` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurStructure := (SELECT `STRUCTURE` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
		    SET @cCurContent := (SELECT `Content` FROM db_version ORDER BY `version` DESC, STRUCTURE DESC, CONTENT DESC LIMIT 0,1);
                    SET @cCurOutput = CONCAT(@cCurVersion, '_', @cCurStructure, '_', @cCurContent, ' - ',@cCurResult);
                    SELECT '* UPDATE SKIPPED *' AS `===== Status =====`,@cOldResult AS `=== Expected ===`,@cCurOutput AS `===== Found Version =====`;
                END IF;
            END IF;
        END IF;
    END IF;
END $$

DELIMITER ;

-- Execute the procedure
CALL update_mangos();

-- Drop the procedure
DROP PROCEDURE IF EXISTS `update_mangos`;

