DELIMITER ||  

CREATE FUNCTION initcap( phrase VARCHAR(255) ) RETURNS VARCHAR(255) 
BEGIN  
  DECLARE letter CHAR(1);  
  DECLARE capitalized VARCHAR(255);  
  DECLARE i INT DEFAULT 1;  
  DECLARE found INT DEFAULT 1;  
  DECLARE exceptions CHAR(17) DEFAULT ' ()[]{},.-_!@;:?/';  

  SET capitalized = LCASE( phrase );  

    WHILE i < LENGTH( phrase ) DO  
        BEGIN  
        SET letter = SUBSTRING( capitalized, i, 1 );  

        IF LOCATE( letter, exceptions ) > 0 THEN
            BEGIN
            SET found = 1;  
            END;
        ELSEIF found = 1 THEN  
            BEGIN  
            IF letter >= 'a' AND letter <= 'z' THEN  
                BEGIN  
                SET capitalized = CONCAT(LEFT(capitalized,i-1),UCASE(letter),SUBSTRING(capitalized,i+1));  
                SET found = 0;  
                END;  
            ELSEIF letter >= '0' AND letter <= '9' THEN  
                BEGIN
                SET found = 0;  
                END;
            END IF;  
            END;  
        END IF;  

        SET i = i+1;  
        END;  
    END WHILE;  

    RETURN capitalized;  
END ||  

DELIMITER ; 