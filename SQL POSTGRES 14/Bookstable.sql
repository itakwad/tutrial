CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(8,2)
);

INSERT INTO books (title, category, price) VALUES
('Learn Python the Easy Way', 'Programming', 220.00),
('Mastering Java', 'Programming', 310.00),
('C++ Fundamentals', 'Programming', 270.00),
('Kotlin for Android', 'Programming', 260.00),
('JavaScript Essentials', 'Programming', 230.00),
('Advanced PHP', 'Programming', 290.00),
('Data Structures in C', 'Programming', 320.00),
('Go Language Guide', 'Programming', 250.00),

('Build Modern Websites', 'Web Development', 280.00),
('HTML & CSS Crash Course', 'Web Development', 180.00),
('React from Scratch', 'Web Development', 320.00),
('Vue.js for Beginners', 'Web Development', 300.00),
('Tailwind CSS Mastery', 'Web Development', 270.00),
('Next.js in Depth', 'Web Development', 350.00),
('Fullstack with Node.js', 'Web Development', 400.00),
('WordPress Theme Design', 'Web Development', 220.00),

('Introduction to Databases', 'Databases', 210.00),
('SQL for Everyone', 'Databases', 190.00),
('PostgreSQL Masterclass', 'Databases', 330.00),
('MySQL in Action', 'Databases', 260.00),
('Database Design Principles', 'Databases', 310.00),
('Data Warehousing Basics', 'Databases', 370.00),
('NoSQL with MongoDB', 'Databases', 290.00),
('SQLite Quickstart', 'Databases', 180.00),

('Artificial Intelligence Basics', 'Artificial Intelligence', 340.00),
('Machine Learning with Python', 'Artificial Intelligence', 400.00),
('Deep Learning Fundamentals', 'Artificial Intelligence', 480.00),
('Neural Networks Simplified', 'Artificial Intelligence', 360.00),
('AI for Beginners', 'Artificial Intelligence', 300.00),
('ChatGPT & LLMs', 'Artificial Intelligence', 420.00),
('AI Ethics and Society', 'Artificial Intelligence', 280.00),
('Computer Vision Guide', 'Artificial Intelligence', 410.00),

('Mobile App Development with Flutter', 'Mobile Development', 350.00),
('Building iOS Apps with Swift', 'Mobile Development', 370.00),
('Android Development Complete Guide', 'Mobile Development', 360.00),
('Cross-platform Apps', 'Mobile Development', 310.00),
('Mobile UI/UX Design', 'Mobile Development', 330.00),
('React Native in Practice', 'Mobile Development', 340.00),
('Publishing Apps to Play Store', 'Mobile Development', 260.00),
('Mobile Security Essentials', 'Mobile Development', 280.00),

('Effective Communication Skills', 'Personal Development', 200.00),
('Time Management Mastery', 'Personal Development', 230.00),
('Critical Thinking Toolkit', 'Personal Development', 260.00),
('Leadership for Engineers', 'Personal Development', 270.00),
('Public Speaking Secrets', 'Personal Development', 250.00),
('Negotiation and Influence', 'Personal Development', 240.00),
('Emotional Intelligence 2.0', 'Personal Development', 280.00),
('Problem Solving Mindset', 'Personal Development', 300.00),

('Networking Fundamentals', 'Networking', 220.00),
('CCNA Preparation Guide', 'Networking', 360.00),
('Network Security Essentials', 'Networking', 320.00),
('Wireless Networks Explained', 'Networking', 290.00),
('Advanced Routing & Switching', 'Networking', 400.00),
('Cloud Networking Basics', 'Networking', 310.00);

