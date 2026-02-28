Google Drive link to my ala2-https://drive.google.com/file/d/1m_lnrB3YAC1Ukd4Zz8-j-TQgOFhQdG9L/view?usp=sharing

Name: Mansi Doshi
Enrollment Number: 20230905090518
Batch: BTech IT(Genius)
Subject: Android Development Framework
ALA: 2

ADF ALA-2: Product REST API Integration

Overview:
This project is developed as part of the Application Development Framework (ADF) ALA-2 assignment. The main objective is to demonstrate REST API integration in a front-end application to fetch and display product data dynamically. The project uses a public Product API to retrieve a list of products and displays 20 products on the user interface with essential details like title, price, description, and image.

Features:
Fetches product data from a public REST API.
Displays 20 products dynamically on the UI.
Shows essential product details:
Product Name / Title
Product Price
Product Description
Product Image
Responsive design for better user experience.
Clean, modern, and functional layout.
Demonstrates API fetching, parsing JSON, and dynamically rendering content.

Project Structure
ADF-ALA2-ProductAPI/
│
├── index.html          # Main HTML file
├── style.css           # CSS styling for the UI
├── script.js           # JavaScript file to fetch and render API data
├── assets/
│   └── images/         # Folder for storing additional images if any
└── README.md           # Project documentation

API Used
Product API Endpoint: https://fakestoreapi.com/products (Public API)

Method: GET

Response: JSON array containing product objects

Example of a single product object:

{
  "id": 1,
  "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  "price": 109.95,
  "description": "Your perfect pack for everyday use and walks in the forest.",
  "category": "men's clothing",
  "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
}

How It Works:
The JavaScript fetch() function requests data from the API.
JSON response is parsed and stored in a variable.
The script dynamically generates HTML elements for each product.
Only first 20 products are displayed (if API returns more than 20).
Each product card shows image, title, description, and price.
Styled using CSS for clean and responsive layout.

Key Learnings:
Understanding REST API concept and HTTP requests.
Parsing JSON and dynamically rendering content on UI.
DOM manipulation using JavaScript.
Handling API data efficiently for UI display.
Front-end project structure and organization.
Basic responsive design implementation.

Future Enhancements:
Add pagination to display more products.
Add search and filter functionality for better usability.
Integrate product categories to group products.
Implement cart functionality for a mini e-commerce demo.
Improve styling using Bootstrap or Tailwind CSS.

<img width="600" height="1000" alt="image" src="https://github.com/user-attachments/assets/a6566110-09ce-4a23-88cb-9793dd04dc6a" />


<img width="600" height="1000" alt="image" src="https://github.com/user-attachments/assets/c9b619f5-d824-46d9-8162-fd66d20346a4" />


<img width="600" height="1000" alt="image" src="https://github.com/user-attachments/assets/1434232d-9767-4356-947c-d20144eb1fab" />




