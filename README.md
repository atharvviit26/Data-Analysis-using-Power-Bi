

---

# **Software Requirements Specification (SRS)**  
### **For Online College Admission Management System**

---

### **1. Introduction**

#### **1.1 Purpose**
The purpose of this document is to provide a detailed Software Requirements Specification (SRS) for the development of an **Online College Admission Management System**. The system will allow students to apply for engineering courses by filling out forms and uploading necessary documents, while the college administration will review, approve, or reject these applications.

#### **1.2 Scope**
This system will be implemented using the Django framework and will handle the entire admission process online, replacing manual methods. It will streamline the application process for students and enable admins to efficiently manage applications.

#### **1.3 Intended Audience**
- Project Manager
- Developers
- Testers
- End Users (Students, Admin)

#### **1.4 Definitions and Acronyms**
- **SRS**: Software Requirements Specification
- **Django**: A Python-based web framework
- **Admin**: The user role responsible for managing applications

#### **1.5 References**
- Django Framework Documentation
- HTML/CSS/Bootstrap Documentation

---

### **2. System Overview**

The system is designed to automate the college admission process. Students can create an account, apply for a specific course, upload documents (marksheets, certificates), and submit the application for review. Admins can review applications, approve or reject them, and provide feedback. 

---

### **3. Functional Requirements**

#### **3.1 User Roles**
- **Student**: Can create an account, fill out the application form, upload required documents, and submit the form.
- **Admin**: Can view applications, approve or reject them, and send feedback to the student.

#### **3.2 Functional Modules**

##### **3.2.1 User Registration & Login**
- **Description**: Students should be able to create an account using their email and password.
- **Pre-condition**: The student must provide valid details to register.
- **Post-condition**: The student is redirected to the application dashboard after successful login.

##### **3.2.2 Application Form Submission**
- **Description**: Students should be able to fill out the application form, providing personal and educational details.
- **Pre-condition**: Student must be logged in.
- **Post-condition**: The application is saved, and a confirmation message is shown.

##### **3.2.3 Document Upload**
- **Description**: Students can upload necessary documents (marksheets, certificates) as part of the application.
- **Pre-condition**: Valid documents should be uploaded in PDF/JPEG format.
- **Post-condition**: Documents are stored securely in the system.

##### **3.2.4 Application Review (Admin)**
- **Description**: Admins can view submitted applications and their associated documents.
- **Pre-condition**: Admin must be logged in.
- **Post-condition**: Admin can either approve or reject the application, with an optional rejection reason.

##### **3.2.5 Notification System**
- **Description**: The system should notify the student whether their application has been approved or rejected.
- **Pre-condition**: The application has been processed by the admin.
- **Post-condition**: Notification is sent to the student via email and dashboard.

##### **3.2.6 Resubmission of Application**
- **Description**: If rejected, students should have the option to modify and resubmit their application.
- **Pre-condition**: The student has received a rejection notification.
- **Post-condition**: The application is updated and resubmitted for review.

---

### **4. Non-Functional Requirements**

#### **4.1 Usability**
- The user interface must be intuitive and simple, allowing students and admins to use the system with ease.
- The system should be accessible on both desktop and mobile platforms.

#### **4.2 Security**
- Student data and uploaded documents must be stored securely.
- All sensitive data (such as passwords) must be encrypted.

#### **4.3 Performance**
- The system should handle multiple concurrent users.
- The form submission process, including file uploads, should not take more than 5 seconds.

#### **4.4 Scalability**
- The system should be able to scale as the number of students applying increases.

#### **4.5 Maintainability**
- The system should be designed in a modular fashion, allowing future features or changes to be implemented with minimal disruption.

---

### **5. System Design and Architecture**

#### **5.1 Architecture**
- The system will be developed using the Django framework (backend), HTML, CSS, and Bootstrap for the frontend.
- A relational database (such as PostgreSQL) will be used to store user and application data.
  
#### **5.2 Database Design**
- **Tables**:
  - **Student**: Stores personal details, login credentials, etc.
  - **Application**: Stores application data, including uploaded documents and status (approved/rejected).
  - **Admin**: Stores admin user details and privileges.

#### **5.3 Application Flow**
1. Student registers and logs into the system.
2. Student fills out the application form and uploads documents.
3. Admin logs in, reviews the application, and either approves or rejects it.
4. Student receives feedback and, if rejected, can resubmit.

---

### **6. Assumptions and Dependencies**
- The system assumes that users will have access to the internet and basic knowledge of filling out online forms.
- The application depends on the availability of the Django framework and associated libraries.

---

### **7. Acceptance Criteria**
- The system should be able to handle at least 100 student applications concurrently.
- All uploaded documents should be stored securely and be retrievable by the admin.
- Students should receive application status notifications within 24 hours of review.

---

### **8. Appendix**
- **Glossary**:
  - **Student**: User applying for admission.
  - **Admin**: User responsible for managing applications.
  - **Application**: The form and associated documents submitted by the student.

---


