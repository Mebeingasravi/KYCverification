# kyc_ocr

Empower Your KYC Experience: Fluttering into the Future with Seamless Document Scanning and OCR Magic!

## Getting Started

This project is a starting point for a Flutter application.

Revolutionize KYC effortlessly with our Flutter-powered mobile app. Scan Aadhar, PAN, Voter ID, and DL documents seamlessly using Dart language. Experience the power of OCR technology to extract accurate text information. Your ID verification simplified, right at your fingertips! Trust Flutter for a swift and secure KYC process

Used Packages

  google_mlkit_text_recognition: ^0.11.0 - This helps in getting Text out of image
  gallery_picker: ^0.4.8 - To get image from mobile storage
  camera: ^0.10.5+9 - To access camara permission use it for capturing image only
  permission_handler: ^10.4.5 - For Android permission handling
  salomon_bottom_bar: ^3.3.2 - Not Used for this project
  image_picker: ^1.0.7 - Not Used for this project
  shared_preferences: ^2.2.2 - To store history and access dynamicly even after app close

Steps

![alt text](image.png)

Click on Scan a Image (floatingbutton)
Choose an Image from local Storage

![alt text](image-1.png)

Data will be printed below like this

![alt text](image-2.png)

Also as number of time you scan images it store its data into history page.
