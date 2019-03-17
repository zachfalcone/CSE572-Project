/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- trigger to check staff DOB (because check constraint can't reference SYSDATE function)
-- checks if 14 or older

CREATE OR REPLACE TRIGGER trigger_staff_dob BEFORE INSERT OR UPDATE ON STAFF FOR EACH ROW
    BEGIN
        IF (:NEW.DOB < DATE '1900-01-01' OR MONTHS_BETWEEN(SYSDATE, :NEW.DOB) < 168)
        THEN RAISE_APPLICATION_ERROR(-20001, 'Invalid date of birth.');
        END IF;
    END;
/