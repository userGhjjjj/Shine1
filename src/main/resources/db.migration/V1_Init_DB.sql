-- ALTER TABLE IF EXISTS car_user_likes
--     DROP CONSTRAINT IF EXISTS FK6xvk5uinyr94mfgwlwxkyvdmp;
-- ALTER TABLE IF EXISTS car_user_likes
--     DROP CONSTRAINT IF EXISTS FKimy2iwkt47uqioy88wfp1f8hx;
-- ALTER TABLE IF EXISTS cars
--     DROP CONSTRAINT IF EXISTS FKqw4c8e6nqrvy3ti1xj8w8wyc9;
-- ALTER TABLE IF EXISTS images
--     DROP CONSTRAINT IF EXISTS FKgy3wmeqw77t2ocfigkjcysf6k;
-- ALTER TABLE IF EXISTS images
--     DROP CONSTRAINT IF EXISTS FK13ljqfrfwbyvnsdhihwta8cpr;
-- ALTER TABLE IF EXISTS reset_password_token
--     DROP CONSTRAINT IF EXISTS FKlu8wgvb3mkbxir0sls596u7np;
-- ALTER TABLE IF EXISTS reviews
--     DROP CONSTRAINT IF EXISTS FKieeb3p5v84i1xja7nbj1vkkeg;
-- ALTER TABLE IF EXISTS reviews
--     DROP CONSTRAINT IF EXISTS FKcgy7qjc1r99dp117y9en6lxye;
-- ALTER TABLE IF EXISTS user_car_views
--     DROP CONSTRAINT IF EXISTS FK7yjqqks19ryodn59295jgmlj9;
-- ALTER TABLE IF EXISTS user_car_views
--     DROP CONSTRAINT IF EXISTS FKra9utavn28jg3w9wfheo1ausj;
-- ALTER TABLE IF EXISTS user_roles
--     DROP CONSTRAINT IF EXISTS FKhfh9dx7w3ubf1co1vdev94g3f;
-- ALTER TABLE IF EXISTS users_favorite_cars
--     DROP CONSTRAINT IF EXISTS FKo1puejjblnoykn5arn1dp4xke;
-- ALTER TABLE IF EXISTS users_favorite_cars
--     DROP CONSTRAINT IF EXISTS FK8df39mgoduf8sv7vr1x5n1a5l;
-- DROP TABLE IF EXISTS car_user_likes CASCADE;
-- DROP TABLE IF EXISTS cars CASCADE;
-- DROP TABLE IF EXISTS images CASCADE;
-- DROP TABLE IF EXISTS reset_password_token CASCADE;
-- DROP TABLE IF EXISTS reviews CASCADE;
-- DROP TABLE IF EXISTS user_car_views CASCADE;
-- DROP TABLE IF EXISTS user_roles CASCADE;
-- DROP TABLE IF EXISTS users CASCADE;
-- DROP TABLE IF EXISTS users_favorite_cars CASCADE;
-- DROP SEQUENCE IF EXISTS hibernate_sequence;
-- CREATE SEQUENCE hibernate_sequence START 1 INCREMENT 1;
-- CREATE TABLE car_user_likes
-- (
--     car_id  BIGINT NOT NULL,
--     user_id BIGINT NOT NULL,
--     PRIMARY KEY (car_id, user_id)
-- );
-- CREATE TABLE cars
-- (
--     id                  BIGINT GENERATED BY DEFAULT AS IDENTITY,
--     year_of_issue       INTEGER          NOT NULL,
--     accounting          VARCHAR(255),
--     availability        VARCHAR(255),
--     body                VARCHAR(255),
--     brand               VARCHAR(255),
--     cars_status         VARCHAR(255),
--     category            VARCHAR(255),
--     city                VARCHAR(255),
--     color               VARCHAR(255),
--     condition           VARCHAR(255),
--     customs             VARCHAR(255),
--     date_of_created     TIMESTAMP,
--     description         VARCHAR(255),
--     drive_unit          VARCHAR(255),
--     engine              VARCHAR(255),
--     exchange            VARCHAR(255),
--     likes               INTEGER          NOT NULL,
--     mileage             VARCHAR(255),
--     model               VARCHAR(255),
--     preview_image_id    BIGINT,
--     price               DOUBLE PRECISION NOT NULL,
--     region_city_of_sale VARCHAR(255),
--     steering_wheel      VARCHAR(255),
--     transmission        VARCHAR(255),
--     user_id             BIGINT,
--     PRIMARY KEY (id)
-- );
-- CREATE TABLE images
-- (
--     id                 BIGINT  NOT NULL,
--     bytes              OID,
--     content_type       VARCHAR(255),
--     is_preview_image   BOOLEAN NOT NULL,
--     name               VARCHAR(255),
--     original_file_name VARCHAR(255),
--     size               BIGINT,
--     url                VARCHAR(2048),
--     cars_id            BIGINT,
--     user_id            BIGINT,
--     PRIMARY KEY (id)
-- );
-- CREATE TABLE reset_password_token
-- (
--     id              BIGINT GENERATED BY DEFAULT AS IDENTITY,
--     expiration_time TIMESTAMP,
--     token           VARCHAR(300),
--     user_id         BIGINT,
--     PRIMARY KEY (id)
-- );
-- CREATE TABLE reviews
-- (
--     id           BIGINT GENERATED BY DEFAULT AS IDENTITY,
--     comments     VARCHAR(255),
--     stars_rating VARCHAR(255),
--     car_id       BIGINT,
--     user_id      BIGINT,
--     PRIMARY KEY (id)
-- );
-- CREATE TABLE user_car_views
-- (
--     id      BIGINT GENERATED BY DEFAULT AS IDENTITY,
--     car_id  BIGINT,
--     user_id BIGINT,
--     PRIMARY KEY (id)
-- );
-- CREATE TABLE user_roles
-- (
--     user_id BIGINT NOT NULL,
--     roles   VARCHAR(255)
-- );
-- CREATE TABLE users
-- (
--     id           BIGINT GENERATED BY DEFAULT AS IDENTITY,
--     age          INTEGER NOT NULL,
--     blocked      BOOLEAN NOT NULL,
--     email        VARCHAR(255),
--     first_name   VARCHAR(255) NOT NULL ,
--     last_name    VARCHAR(255),
--     password     VARCHAR(255) NOT NULL,
--     phone_number VARCHAR(255),
--     role         VARCHAR(255),
--     PRIMARY KEY (id)
-- );
-- CREATE TABLE users_favorite_cars
-- (
--     user_id          BIGINT NOT NULL,
--     favorite_cars_id BIGINT NOT NULL
-- );
-- ALTER TABLE IF EXISTS car_user_likes
--     ADD CONSTRAINT FK6xvk5uinyr94mfgwlwxkyvdmp FOREIGN KEY (user_id) REFERENCES users (id);
-- ALTER TABLE IF EXISTS car_user_likes
--     ADD CONSTRAINT FKimy2iwkt47uqioy88wfp1f8hx FOREIGN KEY (car_id) REFERENCES cars (id);
-- ALTER TABLE IF EXISTS cars
--     ADD CONSTRAINT FKqw4c8e6nqrvy3ti1xj8w8wyc9 FOREIGN KEY (user_id) REFERENCES users (id);
-- ALTER TABLE IF EXISTS images
--     ADD CONSTRAINT FKgy3wmeqw77t2ocfigkjcysf6k FOREIGN KEY (cars_id) REFERENCES cars (id);
-- ALTER TABLE IF EXISTS images
--     ADD CONSTRAINT FK13ljqfrfwbyvnsdhihwta8cpr FOREIGN KEY (user_id) REFERENCES users (id);
-- ALTER TABLE IF EXISTS reset_password_token
--     ADD CONSTRAINT FKlu8wgvb3mkbxir0sls596u7np FOREIGN KEY (user_id) REFERENCES users (id);
-- ALTER TABLE IF EXISTS reviews
--     ADD CONSTRAINT FKieeb3p5v84i1xja7nbj1vkkeg FOREIGN KEY (car_id) REFERENCES cars (id);
-- ALTER TABLE IF EXISTS reviews
--     ADD CONSTRAINT FKcgy7qjc1r99dp117y9en6lxye FOREIGN KEY (user_id) REFERENCES users (id);
-- ALTER TABLE IF EXISTS user_car_views
--     ADD CONSTRAINT FK7yjqqks19ryodn59295jgmlj9 FOREIGN KEY (car_id) REFERENCES cars (id);
-- ALTER TABLE IF EXISTS user_car_views
--     ADD CONSTRAINT FKra9utavn28jg3w9wfheo1ausj FOREIGN KEY (user_id) REFERENCES users (id);
-- ALTER TABLE IF EXISTS user_roles
--     ADD CONSTRAINT FKhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES users (id);
-- ALTER TABLE IF EXISTS users_favorite_cars
--     ADD CONSTRAINT FKo1puejjblnoykn5arn1dp4xke FOREIGN KEY (favorite_cars_id) REFERENCES cars (id);
-- ALTER TABLE IF EXISTS users_favorite_cars
--     ADD CONSTRAINT FK8df39mgoduf8sv7vr1x5n1a5l FOREIGN KEY (user_id) REFERENCES users (id);
