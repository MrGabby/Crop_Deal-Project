CREATE TABLE "Farmer"(
    "Farmer_id" NVARCHAR(255) NOT NULL,
    "Email_id" NVARCHAR(255) NOT NULL,
    "Password" NVARCHAR(255) NOT NULL,
    "Phone_no" NVARCHAR(255) NOT NULL,
    "Address" NVARCHAR(255) NOT NULL,
    "DBO" DATETIME NOT NULL,
    "Bank_Name" BIGINT NOT NULL,
    "Bank_account_no" NVARCHAR(255) NOT NULL,
    "IFSC" NVARCHAR(255) NOT NULL,
    "IsActive" BIGINT NOT NULL
);
ALTER TABLE
    "Farmer" ADD CONSTRAINT "farmer_farmer_id_primary" PRIMARY KEY("Farmer_id");
CREATE TABLE "Admin"(
    "Admin_id" NVARCHAR(255) NOT NULL,
    "Name" NVARCHAR(255) NOT NULL,
    "Password" NVARCHAR(255) NOT NULL,
    "Email_id" NVARCHAR(255) NOT NULL,
    "Phone_no" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Admin" ADD CONSTRAINT "admin_admin_id_primary" PRIMARY KEY("Admin_id");
CREATE TABLE "Dealer"(
    "Dealer_id" NVARCHAR(255) NOT NULL,
    "Name" NVARCHAR(255) NOT NULL,
    "Password" NVARCHAR(255) NOT NULL,
    "Email_id" NVARCHAR(255) NOT NULL,
    "Address" NVARCHAR(255) NOT NULL,
    "DBO" DATETIME NOT NULL,
    "Bank_name" NVARCHAR(255) NOT NULL,
    "Bank_account_no" NVARCHAR(255) NOT NULL,
    "IFSC" NVARCHAR(255) NOT NULL,
    "Subscription" NVARCHAR(255) NOT NULL,
    "IsActive" BIGINT NOT NULL
);
ALTER TABLE
    "Dealer" ADD CONSTRAINT "dealer_dealer_id_primary" PRIMARY KEY("Dealer_id");
CREATE TABLE "Crops"(
    "Crop_id" NVARCHAR(255) NOT NULL,
    "Farmer_id" NVARCHAR(255) NOT NULL,
    "Crop_name" NVARCHAR(255) NOT NULL,
    "Crop_family" BIGINT NOT NULL,
    "Crop_type" NVARCHAR(255) NOT NULL,
    "Quantity" NVARCHAR(255) NOT NULL,
    "Price" NVARCHAR(255) NOT NULL,
    "Location" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "Crops" ADD CONSTRAINT "crops_crop_id_primary" PRIMARY KEY("Crop_id");
CREATE TABLE "Invoice"(
    "Invoice_id" NVARCHAR(255) NOT NULL,
    "Farmer_id" NVARCHAR(255) NOT NULL,
    "Dealer_id" NVARCHAR(255) NOT NULL,
    "Crop_id" NVARCHAR(255) NOT NULL,
    "Quantity" NVARCHAR(255) NOT NULL,
    "Payment_Mode" NVARCHAR(255) NOT NULL,
    "Status" NVARCHAR(255) NOT NULL,
    "Date_Created" DATETIME NOT NULL
);
ALTER TABLE
    "Invoice" ADD CONSTRAINT "invoice_invoice_id_primary" PRIMARY KEY("Invoice_id");
ALTER TABLE
    "Invoice" ADD CONSTRAINT "invoice_crop_id_foreign" FOREIGN KEY("Crop_id") REFERENCES "Crops"("Crop_id");
ALTER TABLE
    "Crops" ADD CONSTRAINT "crops_crop_id_foreign" FOREIGN KEY("Crop_id") REFERENCES "Farmer"("Farmer_id");
ALTER TABLE
    "Invoice" ADD CONSTRAINT "invoice_farmer_id_foreign" FOREIGN KEY("Farmer_id") REFERENCES "Farmer"("Farmer_id");
ALTER TABLE
    "Invoice" ADD CONSTRAINT "invoice_dealer_id_foreign" FOREIGN KEY("Dealer_id") REFERENCES "Dealer"("Dealer_id");