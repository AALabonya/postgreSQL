SQL-এর SELECT স্টেটমেন্ট দিয়ে বিভিন্ন ধরনের কাজ করা যায়। এটি মূলত ডাটাবেস থেকে ডাটা রিট্রিভ বা অনুসন্ধান করার জন্য ব্যবহৃত হয়। নিচে SELECT দিয়ে করা যায় এমন কিছু কাজের তালিকা দেওয়া হলো:

1. সাধারণ ডাটা অনুসন্ধান
ডাটাবেসের নির্দিষ্ট টেবিল থেকে সমস্ত বা নির্দিষ্ট কলাম নির্বাচন করা।

sql
Copy code
SELECT * FROM table_name;  -- সমস্ত কলাম
SELECT column1, column2 FROM table_name;  -- নির্দিষ্ট কলাম
2. শর্ত অনুযায়ী ডাটা অনুসন্ধান (WHERE)
নির্দিষ্ট শর্তের উপর ভিত্তি করে ডাটা নির্বাচন করা।

sql
Copy code
SELECT * FROM table_name WHERE condition;
3. সাজিয়ে ডাটা দেখানো (ORDER BY)
ডাটা নির্দিষ্ট কলামের মান অনুযায়ী ক্রমবিন্যাস করা।

sql
Copy code
SELECT * FROM table_name ORDER BY column1 ASC;  -- ASCending (বর্ধমান ক্রম)
SELECT * FROM table_name ORDER BY column1 DESC; -- DESCending (হ্রাসমান ক্রম)
4. সীমাবদ্ধ ডাটা দেখানো (LIMIT)
শুধুমাত্র নির্দিষ্ট সংখ্যক রেকর্ড দেখানো।

sql
Copy code
SELECT * FROM table_name LIMIT 5;  -- প্রথম ৫টি রেকর্ড
5. একক এবং গ্রুপিং ফাংশন (AGGREGATE FUNCTIONS & GROUP BY)
যেমন SUM(), COUNT(), AVG(), MAX(), MIN() এর মতো ফাংশন ব্যবহার করে গ্রুপ করা ডাটার উপর গাণিতিক বা পরিসংখ্যানগত কাজ করা।

sql
Copy code
SELECT COUNT(*), AVG(salary) FROM employees;  -- মোট কর্মচারী ও গড় বেতন
SELECT department, SUM(salary) FROM employees GROUP BY department;  -- বিভাগ অনুসারে মোট বেতন
6. যোগদান (JOIN)
একাধিক টেবিল থেকে ডাটা নিয়ে একত্রিত করা।

sql
Copy code
SELECT employees.name, departments.name
FROM employees
JOIN departments ON employees.department_id = departments.id;
7. ডিস্টিংক্ট ভ্যালু দেখানো (DISTINCT)
কোনো কলামের অভিন্ন মান (যা ডুপ্লিকেট নেই) নির্বাচন করা।

sql
Copy code
SELECT DISTINCT column_name FROM table_name;
8. উপ-অনুসন্ধান (SUBQUERIES)
কোনো একটি SELECT স্টেটমেন্টের মধ্যে আরেকটি SELECT ব্যবহার করে জটিল অনুসন্ধান চালানো।

sql
Copy code
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
9. একাধিক শর্ত মিলিয়ে অনুসন্ধান (AND/OR)
একাধিক শর্ত একত্রে ব্যবহার করা।

sql
Copy code
SELECT * FROM table_name WHERE condition1 AND condition2;
SELECT * FROM table_name WHERE condition1 OR condition2;
10. প্যাটার্ন মিলিয়ে অনুসন্ধান (LIKE)
নির্দিষ্ট প্যাটার্ন অনুসারে ডাটা ফিল্টার করা।

sql
Copy code
SELECT * FROM customers WHERE name LIKE 'J%';  -- নাম 'J' দিয়ে শুরু
SELECT * FROM customers WHERE name LIKE '%son';  -- নাম 'son' দিয়ে শেষ
এই কাজগুলো SELECT স্টেটমেন্টের সাহায্যে ডাটাবেস থেকে ডাটা অনুসন্ধান এবং বিশ্লেষণের জন্য ব্যাপকভাবে ব্যবহৃত হয়।






