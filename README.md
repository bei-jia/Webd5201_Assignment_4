1. Ruby version
ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]

2. System dependencies
Rails: The version of Rails used for the project is Rails 7.1.1
SQLite3: As the default database for development and testing environments in Rails.
Image Processing Library and command: Active Storage & rails active_storage:install.

3. Configuration
gem install rails
rails new assignment4


4. Database creation:
Database Setup: rails generate scaffold Company company_name:string company_founder:string company_founding_time:string company_headcount:integer headquarter_address:string.
Database Migrations: Use rails db: migrate to apply database schema changes.

5. Pages and Functionalities:
    * Home Page (http://localhost:3000/):
        This page lists all the companies in a table format.
        Users can see company details including company name, founder, founder image, founding time, headcount, and headquarters address.
        Actions 'Edit', and 'Destroy' are available in the last column for each company.
        There is a 'New Company' link to create a new company record.
        A search bar allows filtering companies by name or founder.

    * New Company Page (http://localhost:3000/companies/new):
        Users can create a new company by filling out a form with fields for a company name, founder, founding time, headcount, headquarters address, and an option to upload an image for the founder.
        Form validation ensures all fields are filled, and headcount is a number.
        On form submission, if validation passes, the new company is added to the database, and the user is redirected to the home page with a success notice.

    * Edit Company Page (e.g., http://localhost:3000/companies/1/edit):
        Users can edit an existing company's details, including uploading a new image for the founder or changing existing data.
        Form validations are similar to the 'New Company' page.
        On successful update, the user is redirected to the home page with an update notice.

    * Deleting a Company:
        From the home page, users can delete a company by clicking the 'Destroy' link next to the corresponding company.
        A confirmation prompt ensures accidental deletions are prevented.

6. Data Validation:
Presence: All fields in the form (name, founder, founding time, headcount, and headquarters address) must be filled out.
Numericality: The headcount field must be a number greater than zero.
Image File: If a user chooses to upload an image for the founder, the image is validated for the correct format and file size (if such validations are set).

7.  New Feature for this assignment:
Image Upload Feature:
When creating or editing a company, users can upload an image for the founder by selecting a file from their local device.
The image is stored in the application's storage system (use the Active Storage library).

8. How to use:
    * To view companies, simply navigate to the home page.
    * To add a new company, click on the 'New Company' link and fill out the form. Make sure all fields are filled, and only numbers are entered for headcount. Choose an image file for the founder if desired.
    * To edit a company, click the 'Edit' link next to the company on the home page. Make changes as needed and click 'Update Company'.
    * To delete a company, click the 'Destroy' link next to the company you wish to remove and confirm the action.
    * To search for companies, enter a name or founder in the search bar and click 'Search'.

