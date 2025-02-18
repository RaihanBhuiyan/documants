# e-Document Management System

## Overview

e-Document Management is a Laravel 8-based document management system designed for organizations and enterprises to maintain a paperless workflow. The system allows users to upload, store, manage, and share documents efficiently while providing a custom scanner to compare current and previous versions of documents. It also includes email, SMS, and push notifications for seamless user communication.

## Technologies Used

- **Laravel 8** - Backend framework
- **MySQL** - Database management
- **JavaScript & Blade** - Frontend UI
- **Custom Scanner** - For document comparison
- **Mail, SMS & Push Notifications** - User alerts and communication

## Key Features

1. **Document Management**
   - Upload, store, and organize documents (PDF, MS Word, Excel, etc.)
   - Version control to track document changes
   - Custom scanner for document comparison

2. **User & Access Management**
   - Admin panel with full access control
   - User authentication and role-based permissions
   - Grant or revoke document access similar to Google Docs

3. **Collaboration & Sharing**
   - Share documents with multiple users
   - Set access time frames for shared documents
   - Track document access and edits

4. **Notifications & Alerts**
   - Email, SMS, and push notifications for document updates
   - Automatic reminders for pending actions

5. **Branch & Department Management**
   - Organize documents by branches and departments
   - Assign specific access rights based on organizational structure

## Installation Guide

1. Clone the repository:
   ```sh
   git clone https://github.com/RaihanBhuiyan/documants.git
   ```
2. Navigate to the project directory:
   ```sh
   cd e-document-management
   ```
3. Install dependencies:
   ```sh
   composer install
   npm install
   ```
4. Set up the environment:
   ```sh
   cp .env.example .env
   php artisan key:generate
   ```
5. Create the database and import `dms.sql`:
   ```sh
   mysql -u root -p < dms.sql
   ```
6. Run database migrations:
   ```sh
   php artisan migrate --seed
   ```
7. Start the server:
   ```sh
   php artisan serve
   ```

## Default User Credentials

**Admin Access:**
- Username: `admin`
- Password: `admin`

**User Access:**
- Username: `user`
- Password: `password`

## Usage

- Upload, manage, and share documents securely.
- Compare current and previous versions of documents.
- Set document access permissions and timeframes.
- Get notified via email, SMS, or push notifications.

## Contribution

Contributions are welcome! Please follow the standard GitHub flow:

1. Fork the repository.
2. Create a new branch.
3. Commit changes and push.
4. Submit a pull request.

## License

This project is licensed under the MIT License.

