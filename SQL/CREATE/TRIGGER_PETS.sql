/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- trigger to check pets DOB (because check constraint can't reference SYSDATE function)

CREATE OR REPLACE TRIGGER trigger_pets_dob BEFORE INSERT OR UPDATE ON PETS FOR EACH ROW
    BEGIN
        IF (:NEW.DOB < DATE '1900-01-01' OR :NEW.DOB > SYSDATE)
        THEN RAISE_APPLICATION_ERROR(-20001, 'Invalid date of birth.');
        END IF;
    END;
/