<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Food.User.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contact_section {
            background-color: #f9f9f9;
            padding: 60px 0;
        }

        .contact_section .heading_container h2 {
            font-size: 2.5rem;
            text-align: center;
            color: #333;
            margin-bottom: 40px;
        }

        .form_container {
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .form_container input,
        .form_container button {
            margin-bottom: 20px;
        }

        .form_container input {
            width: 100%;
            padding: 12px 15px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form_container button {
            background-color: #e74c3c;
            color: #fff;
            padding: 12px 15px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form_container button:hover {
            background-color: #c0392b;
        }

        .map_container {
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #googleMap {
            width: 100%;
            height: 300px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        @media (max-width: 768px) {
            .contact_section .heading_container h2 {
                font-size: 2rem;
            }

            .map_container {
                margin-top: 20px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contact Section -->
    <section class="contact_section">
        <div class="container">
            <div class="heading_container">
                <h2 style="font-family:'Felix Titling'">Contact Us</h2>
            </div>
            <div class="row">
                <!-- Form Section -->
                <div class="col-md-6">
                    <div class="form_container">
                        <form action="#">
                            <input type="text" class="form-control" placeholder="Your Name" required />
                            <input type="text" class="form-control" placeholder="Phone Number" required />
                            <input type="email" class="form-control" placeholder="Your Email" required />
                            <input type="date" class="form-control" />
                            <button type="submit" style="background-color:red;border-radius:10px">Contact Now</button>
                        </form>
                    </div>
                </div>
                <!-- Map Section -->
                <div class="col-md-6">
                    <div class="map_container">
                        <div id="googleMap">
                            <!-- Embed your map iframe or API code here -->
                            <iframe 
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8354345090586!2d144.9537353153147!3d-37.816279442014245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0xf57752f18cdd44cf!2sFederation%20Square!5e0!3m2!1sen!2sau!4v1630984831481!5m2!1sen!2sau" 
                                width="100%" 
                                height="300" 
                                style="border:0;" 
                                allowfullscreen="" 
                                loading="lazy">
                            </iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact Section -->
</asp:Content>
