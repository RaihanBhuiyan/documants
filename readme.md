# Document Managment System
A somewhat simple document management system for an organization or a medium-sized business with branches and departments based on the [Laravel] PHP web framework `version 5.5` 

### Functionality
- Documents CRUD and file uploads
- Branches CRUD
- Departments CRUD
- Users CRUD plus others features like activating or deactivating accounts, changing passwords and granting or revoking admin rights

### To get started
1.  Create the database in mysql(**Note**: Make sure you have no database named `dms` in your mysql setup because it will be dropped, alternatively you can rename the database in the file `dms.sql` to something else)

    `mysql -u root -p < dms.sql`

2. Within the project root, create folder under the `public` called `static`, then under `static` create a folder called `uploads` after which the structure should look something similar to

3.Admin Access
User Name - admin
Password - admin
4.User Access
User Name -user
Password - password
    ```
