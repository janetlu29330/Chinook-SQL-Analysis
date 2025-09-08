SELECT c.FirstName, c.LastName, SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE strftime('%Y', i.InvoiceDate) = '2011'
GROUP BY c.CustomerId
ORDER BY TotalSpent DESC
LIMIT 5;
