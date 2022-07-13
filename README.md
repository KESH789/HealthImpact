# HealthImpact
ASP.NET C# application developed in Microsoft Visual Studio for Health Impact

Health Impact C# ASP.NET Application (for Microsoft Visual Studio 2019, ASP.NET Web Application)
C# open source software

The application consists of a Login and full user registration.
Once registered/logged in successfully, the user is redirected to a Product page where they will enter the details of their new product to add to the inventory.
Once the product details are entered, the Product Name is parsed to the ProductDetails page and a Grid view is generated on that specific product details information.

4 Main User forms (ordered in sequence) are as follows:
1) Login Form (Login.aspx)
2) Registration Form (Registration.aspx)
3) Product Form (Product.aspx)
4) ProductList Form (ProductList.aspx)

Get the code:
Clone the repository: https://github.com/KESH789/HealthImpact.git

If this is your first time using Github, review http://help.github.com to learn the basics.

You can also download the zip file containing the code from  https://github.com/KESH789/HealthImpact/archive/refs/heads/master.zip
Please download the MYSQL Server 2019 Database Backup File from the following link: https://drive.google.com/file/d/1XmHMPqXHem0SqgyXC6_BlwpxoyODvB4o/view?usp=sharing

To Configure the database:
-Download database backup from above link
-Download/Open MYSQL Server 2019 and SSMS(SQL Server Management Studio)
-Connect to server Authentication.
-Right click on 'Databases' in left-hand SQL object explorer menu.
-Select "Restore Database"
-Navigate to the path of the database backup downloaded from the above Google Drive Page.
-Wait for the restore operation to complete.
-Run, open and configure database in Visual Studio web.config
-Ensure to have the correct Databse name and server Configuratioon in your web.config file :)

The instructions above will let you run the application with default settings and configurations. 
Please read the instructions on how to navigate through the applicatio, connect to MySQL and configure other subsystems.

Please email keshav.mooruth22@gmail.com for further help.
