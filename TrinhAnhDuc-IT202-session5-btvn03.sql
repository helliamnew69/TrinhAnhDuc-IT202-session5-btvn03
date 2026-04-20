CREATE TABLE Drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(100),
    status VARCHAR(20),
    trust_score INT,
    distance_km DECIMAL(10, 2)
);

INSERT INTO Drivers (driver_id, driver_name, status, trust_score, distance_km) VALUES
(1, 'Nguyễn Văn A', 'AVAILABLE', 85, 1.2),
(2, 'Trần Thị B', 'BUSY', 90, 0.8),
(3, 'Lê Văn C', 'AVAILABLE', 75, 2.5),
(4, 'Phạm Thị D', 'AVAILABLE', 92, 1.2),
(5, 'Hoàng Văn E', 'BLOCKED', 88, 3.0),
(6, 'Đặng Thị F', 'AVAILABLE', 82, 0.5),
(7, 'Bùi Văn G', 'AVAILABLE', 78, 1.8),
(8, 'Võ Thị H', 'AVAILABLE', 95, 2.0),
(9, 'Trương Văn I', 'AVAILABLE', 87, 1.2),
(10, 'Lý Thị K', 'AVAILABLE', 91, 0.9);

SELECT
    driver_id,
    driver_name,
    trust_score,
    distance_km
FROM
    Drivers
WHERE
    status = 'AVAILABLE'
    AND trust_score >= 80
ORDER BY
    distance_km ASC,
    trust_score DESC;