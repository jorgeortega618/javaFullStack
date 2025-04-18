# Customer Management Web Application

This project is a full-stack Java web application for managing customer records. It demonstrates a typical CRUD (Create, Read, Update, Delete) workflow using Java Servlets, JSP, JDBC, PostgreSQL, and Maven. The application features a clean and modern UI styled with CSS.

## Features
- List all customers
- Add new customers
- Edit existing customers
- View customer details
- Delete customers

## Technologies Used
- Java 8+
- Java Servlets & JSP
- JDBC (PostgreSQL)
- Apache Tomcat (tested with 9.x)
- Maven
- PostgreSQL
- CSS for styling

## Project Structure
```
javaFullStack/
├── src/
│   ├── main/
│   │   ├── java/com/customerapp/
│   │   │   ├── controller/        # Servlets (controllers)
│   │   │   ├── dao/               # Data Access Objects
│   │   │   ├── model/             # Entity classes
│   │   │   └── util/              # Utility classes (DB connection)
│   │   └── webapp/
│   │       ├── WEB-INF/
│   │       │   ├── views/         # JSP views
│   │       │   └── web.xml        # Deployment descriptor
│   │       └── css/               # CSS styles
│   └── test/                      # (if any tests)
├── pom.xml                        # Maven build file
└── README.md                      # Project documentation
```

## Database Setup
1. Install PostgreSQL and create a database named `customerdb`.
2. Create the required table using the provided `database.sql` script.
3. Update the database credentials in `DatabaseConnection.java` if needed:
   - URL: `jdbc:postgresql://localhost:5432/customerdb`
   - USER: `postgres`
   - PASSWORD: `Jorge`

## Building and Running
1. **Build the WAR file:**
   ```bash
   mvn clean package
   ```
2. **Deploy to Tomcat:**
   - Copy `target/customer-management-1.0-SNAPSHOT.war` to the `webapps` directory of your Tomcat server.
   - Start Tomcat and access the app at: `http://localhost:9090/customer-management-1.0-SNAPSHOT/`

## Usage
- Use the navigation buttons to add, edit, view, or delete customers.
- All actions are performed via the web interface.

## Customization
- To change database credentials, edit `DatabaseConnection.java`.
- To modify styles, edit `src/main/webapp/css/styles.css`.
- To update views, edit the JSP files in `src/main/webapp/WEB-INF/views/`.

## License
This project is for educational purposes. You may modify and use it as needed.
