CREATE TABLE dim_route (
    route_id INT PRIMARY KEY,
    location_origin VARCHAR(255),
    location_destination VARCHAR(255),
    planned_distance DECIMAL(10, 2)
);
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    date DATE
);
CREATE TABLE dim_vehicle (
    vehicle_id INT PRIMARY KEY,
    vehicle_type VARCHAR(255),
    capacity INT,
    gps_device_id INT,
    maintenance_status VARCHAR(255),
    vehicle_age INT
);
CREATE TABLE dim_sortinghub (
    sortinghub_id INT PRIMARY KEY,
    sortinghub_name VARCHAR(255),
    sortinghub_location VARCHAR(255),
    capacity INT,
    sortinghub_type VARCHAR(255),
    operational_hours VARCHAR(255)
);
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    product_category VARCHAR(255),
    is_sensitive VARCHAR(50),
    product_weight DECIMAL(10, 2),
    product_dimensions VARCHAR(255)
);
CREATE TABLE dim_customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    region VARCHAR(255),
    gender VARCHAR(50),
    date_of_birth DATE
);
CREATE TABLE dim_incident (
    incident_id INT PRIMARY KEY,
    incident_type VARCHAR(255),
    description TEXT
);
CREATE TABLE fact_shipment (
    shipment_id INT PRIMARY KEY,
    date_id INT,
    route_id INT,
    vehicle_id INT,
    product_id INT,
    customer_id INT,
    sortinghub_id INT,
    incident_id INT,
    planned_departure_time DATETIME,
    actual_departure_time DATETIME,
    planned_arrival_time DATETIME,
    actual_arrival_time DATETIME,
    delivery_status VARCHAR(255),
    distance_travelled DECIMAL(10, 2),
    fuel_cost DECIMAL(10, 2),
    total_cost DECIMAL(10, 2),
    delay_duration DECIMAL(10, 2),
    total_time_in_transit DECIMAL(10, 2),
    total_distance DECIMAL(10, 2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (route_id) REFERENCES dim_route(route_id),
    FOREIGN KEY (vehicle_id) REFERENCES dim_vehicle(vehicle_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
    FOREIGN KEY (sortinghub_id) REFERENCES dim_sortinghub(sortinghub_id),
    FOREIGN KEY (incident_id) REFERENCES dim_incident(incident_id)
);
