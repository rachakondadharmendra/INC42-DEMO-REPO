


# DevOps Assignment Submission

## DevOps Engineer

**Division Location:** Tech New Delhi (South)

## Objective

The objective of this assignment was to implement CI/CD pipelines for "MyApp," a web application consisting of independent components developed using Go, Next.js (TypeScript), and WordPress (PHP). The assignment focused on enforcing coding standards and ensuring quality and efficiency through dedicated CI/CD pipelines for each component.

## Scenario

"MyApp" comprises three main components:

1. **Go Application**
2. **Next.js (TypeScript) Application**
3. **WordPress (PHP) Site**

Each component was required to have its own CI/CD pipeline to maintain coding standards and facilitate automated testing, containerization, and deployment.

## Implementation Details

### Version Control

1. **GitHub Repository:**
    - A new public GitHub repository was created with directories for Go, Next.js, and WordPress components.
    - The repositories were initialized for each component.

### Continuous Integration

2. **CI Workflows:**
    - Pipelines were configured to trigger on pushes to respective branches (e.g., main, feature branches).
    - Linting and unit testing were integrated for each technology.
    - CI pipelines were configured to fail if coding standards or tests were not met.

### Containerization

3. **Dockerized Applications:**
    - Dockerfiles were created for the Go application, Next.js (TypeScript) application, and WordPress site.
    - The Docker images were pushed to a container registry (e.g., Docker Hub, AWS ECR).

### Coding Standards Enforcement

4. **Linting Tools:**
    - **WordPress (PHP):** PHPCS was implemented to enforce WordPress coding standards.
    - **Go:** GolangCI-Lint was implemented to enforce coding standards.
    - **Next.js (TypeScript):** ESLint and Prettier were implemented to enforce coding standards.
    - These tools were integrated into the CI pipelines for each component.

### Orchestration

5. **Docker Compose:**
    - The Docker Compose file was updated to include services for Go, Next.js, and WordPress.
    - The Compose file was tested to ensure it can spin up the entire application stack locally.

### Continuous Deployment

6. **Extended CI/CD Pipelines:**
    - Deployment stages were included for the Go, Next.js, and WordPress components.
    - Automatic deployment to a staging environment was set up for successful builds.

### Documentation

7. **Updated README.md:**
    - Instructions were provided on how to set up and run the extended application locally.
    - Documentation was updated based on the additional technologies.

## Jenkins CI/CD Pipeline

A Jenkins server was configured to manage the CI/CD pipelines. The server is accessible at [http://18.60.61.135:8080/](http://18.60.61.135:8080/) with the following credentials:

- **Username:** INC42_USER
- **Password:** l,q/1D-6|9#t

### Jobs Configuration

1. **GO-LANG-CI:**
    
    - Handles the CI for the Go application.
    - Repository URL: [Go Application](https://github.com/rachakondadharmendra/3-Tier-Application/tree/main/backend_golang)
2. **NEXTJS-CI:**
    
    - Handles the CI for the Next.js (TypeScript) application.
    - Repository URL: [Next.js Application](https://github.com/rachakondadharmendra/Nextjs_Project)
3. **WORDPRESS-CI:**
    
    - Handles the CI for the WordPress (PHP) site.
    - Repository URL: [WordPress Application](https://github.com/rachakondadharmendra/Wordpress-PHP-Project)
4. **JENKINS-CD:**
    
    - Responsible for deploying updated Docker images into the Docker Compose remote server.

### Live Links and Ports

- **Next.js:** [http://18.61.31.214:3000/](http://18.61.31.214:3000/)
- **Go-Lang:** [http://18.61.31.214:8082/](http://18.61.31.214:8082/)
- **Go-DB:** [http://18.61.31.214:8081/](http://18.61.31.214:8081/) (Credentials: admin, pass)
- **WordPress:** [http://18.61.31.214:8123/](http://18.61.31.214:8123/)
- **Jenkins-Server:** [http://18.61.31.214:8080/](http://18.61.31.214:8080/)

## DevSecOps Best Practices Implemented

The following DevSecOps best practices were implemented into the CI/CD pipelines:

- **Checkout:** Source code retrieval from GitHub.
- **GitLeaks:** Scanning for secrets in the codebase.
- **Dependency Installation:** Automated installation of dependencies for each component.
- **OWASP Dependency-Check:** Scanning for known vulnerabilities in dependencies.
- **Linting:** Enforcing coding standards using appropriate linting tools.
- **Unit Testing:** Running unit tests to ensure code quality.
- **Checkov Scanning:** Infrastructure as Code (IaC) security scanning.
- **Docker Build:** Building Docker images for each application.
- **Trivy Scanning:** Container image scanning for vulnerabilities.
- **Tag and Push to ECR:** Tagging Docker images and pushing them to Amazon ECR.

### Future Improvements

I intended to add further improvements such as Image Optimization, SonarQube for code quality checks and Quality Gates to ensure code adheres to predefined standards. However, due to the time constraints imposed by ongoing research and personal commitments, I was unable to integrate these features.

#### Detailed Task Overview:

| Task                         | Description                                                                                                                                                                                                                                                                                                                                                                                            | Implemented |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| Version Control              | Create a new public GitHub repository for Go, Next.js, and WordPress components. Initialize repositories for each component.                                                                                                                                                                                                                                                                           | Yes         |
| Continuous Integration       | Implement CI workflows for Go, Next.js (TypeScript), and PHP (WordPress). Configure pipelines to trigger on pushes to respective branches. Integrate linting and unit testing. Ensure CI pipelines fail if coding standards or tests are not met.                                                                                                                                                      | Yes         |
| Containerization             | Dockerize the Go application, Next.js (TypeScript) application, and WordPress site. Create Dockerfiles for each application. Push Docker images to a container registry.                                                                                                                                                                                                                               | Yes         |
| Coding Standards Enforcement | Implement PHPCS for the WordPress component. Configure PHPCS to enforce WordPress coding standards and integrate checks into the CI pipeline. Implement GolangCI-Lint for the Go application and integrate checks into the CI pipeline. Implement ESLint and Prettier for the Next.js (TypeScript) application, configure them to enforce coding standards, and integrate checks into the CI pipeline. | Yes         |
| Orchestration                | Update the Docker Compose file to include services for Go, Next.js, and WordPress. Ensure the Compose file can be used to spin up the entire extended application stack locally.                                                                                                                                                                                                                       | Yes         |
| Continuous Deployment        | Extend the CI/CD pipelines to include deployment stages for the Go, Next.js, and WordPress components. Set up automatic deployment to a staging environment for successful builds.                                                                                                                                                                                                                     | Yes         |
| Documentation                | Update the README.md file with instructions on how to set up and run the extended application locally. Document any changes made to the existing documentation based on the additional technologies.                                                                                                                                                                                                   | Yes         |
