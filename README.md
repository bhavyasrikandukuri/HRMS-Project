# HRMS - Human Resource Management System

A comprehensive web-based Human Resource Management System built with Java, JSP, and MySQL. This system provides separate interfaces for administrators and employees to manage HR operations efficiently.

## Features

### Admin Features
- Employee management (add, update, delete, activate/deactivate)
- Department management
- Leave request approval/rejection
- Payroll management
- Project assignment and tracking
- Employee verification
- Reports generation

### Employee Features
- Employee registration and login
- Leave application
- View personal details
- Project status updates
- Leave request tracking

## Technology Stack

- **Backend**: Java Servlets, JSP
- **Database**: MySQL
- **Server**: Apache Tomcat
- **Frontend**: HTML, CSS, JavaScript
- **Libraries**: JSTL, MySQL Connector, iText PDF

## API Endpoints

### Admin Endpoints

#### Authentication
- `POST /adminlogin` - Admin login
- `GET /logout` - Admin logout

#### Employee Management
- `GET /emplist` - Get all employees
- `GET /deleteemp?username={username}` - Delete employee
- `POST /activateDeactivateAccount` - Activate/deactivate employee account

#### Department Management
- `POST /newDepartment` - Create new department
- `GET /deptlist` - Get all departments
- `GET /deletedept?did={departmentId}` - Delete department
- `POST /addProject` - Add project to department
- `POST /addManager` - Assign manager to department
- `POST /addUpdateEmployeedept` - Assign employee to department

#### Leave Management
- `GET /leavereq` - Get all leave requests
- `POST /reviewleaveapplication` - Approve/reject leave request
- `GET /deleteleave?leaveid={leaveId}` - Delete leave request

#### Status Management
- `GET /statuslist` - Get project status list
- `GET /deletestatus?sid={statusId}` - Delete status

### Employee Endpoints

#### Authentication
- `POST /signupe` - Employee registration
- `POST /employeelogin` - Employee login
- `GET /logoutemp` - Employee logout

#### Employee Operations
- `GET /empdetails` - Get employee details
- `POST /leave` - Apply for leave
- `GET /leaverequestlist` - Get employee's leave requests
- `POST /pcstatus` - Update project completion status

## Installation & Setup

### Prerequisites
- Java 8 or higher
- Apache Tomcat 9.0
- MySQL 8.0
- IDE (Eclipse/NetBeans)
- Git

### Clone Repository
```bash
git clone https://github.com/Luck858/HRMS-Project-java.git
cd HRMS-Project-java
```

### Database Setup
1. Create MySQL database:
   ```sql
   CREATE DATABASE hrms;
   USE hrms;
   ```
2. Update database connection in `src/java/com/HRmanagementsystem/DB_util/DB_Connect.java`:
   ```java
   String url = "jdbc:mysql://localhost:3306/hrms";
   String username = "your_username";
   String password = "your_password";
   ```

### Build Instructions

#### Using Eclipse/NetBeans IDE
1. Import project:
   - **Eclipse**: File → Import → Existing Projects into Workspace
   - **NetBeans**: File → Open Project
2. Add dependencies to `WEB-INF/lib/`:
   - mysql-connector-j-8.0.31.jar
   - jstl-api.jar, jstl-impl.jar
   - iText PDF libraries (kernel-7.1.9.jar, layout-7.1.9.jar, etc.)
3. Configure Tomcat server in IDE
4. Right-click project → Run on Server

#### Using Command Line (Ant)
```bash
# Navigate to project directory
cd chrms/chrms-main

# Build project
ant clean
ant compile
ant war

# Deploy WAR file to Tomcat
cp dist/chrms.war $TOMCAT_HOME/webapps/
```

#### Manual Deployment
1. Compile Java files:
   ```bash
   javac -cp "WEB-INF/lib/*:$TOMCAT_HOME/lib/*" -d WEB-INF/classes src/java/com/HRmanagementsystem/**/*.java
   ```
2. Copy project to Tomcat webapps:
   ```bash
   cp -r . $TOMCAT_HOME/webapps/chrms/
   ```

### Running the Application
1. Start MySQL server:
   ```bash
   # Linux/Mac
   sudo systemctl start mysql
   # Windows
   net start mysql
   ```
2. Start Tomcat server:
   ```bash
   $TOMCAT_HOME/bin/startup.sh  # Linux/Mac
   $TOMCAT_HOME/bin/startup.bat # Windows
   ```
3. Access application: `http://localhost:8080/chrms`

## Usage

### Admin Access
1. Navigate to `/loginadmin.jsp`
2. Login with admin credentials
3. Access admin dashboard at `/adminNavbar.jsp`

### Employee Access
1. Navigate to `/loginemployee.jsp` or register at `/signup.jsp`
2. Login with employee credentials
3. Access employee dashboard at `/employeenavbar.jsp`

## Request/Response Examples

### Admin Login
```http
POST /adminlogin
Content-Type: application/x-www-form-urlencoded

username=admin&password=admin123
```

### Create Department
```http
POST /newDepartment
Content-Type: application/x-www-form-urlencoded

name=IT Department
```

### Apply Leave
```http
POST /leave
Content-Type: application/x-www-form-urlencoded

leaveFrom=2025-01-15&leaveTo=2025-01-17&reason=Personal
```

### Get Employee List
```http
GET /emplist
```

## Project Structure

```
src/
├── com/HRmanagementsystem/
│   ├── dao/              # Data Access Objects
│   ├── model/            # Entity classes
│   ├── web/              # Servlets
│   ├── exception/        # Custom exceptions
│   └── DB_util/          # Database utilities
web/
├── WEB-INF/
│   ├── web.xml           # Web configuration
│   └── lib/              # JAR dependencies
└── *.jsp                 # JSP pages
```

## Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create Pull Request

## License

This project is licensed under the MIT License.
