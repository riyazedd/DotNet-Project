<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Food.User.Menu" %>

<%@ Import Namespace="Food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- food section -->

    <section class="food_section layout_padding">
        <div class="container">
            <div class="heading_container heading_center">
                <h2 style="font-family:'Felix Titling'">Our Collcetions
                </h2>
            </div>

            <ul class="filters_menu">
                <li class="active" data-filter="*">All</li>
                
                <asp:Repeater ID="rCategory" runat="server">

                    <ItemTemplate>
                        <li data-filter=".<%# Eval("Name").ToString().ToLower() %> "><%# Eval("Name") %> </li>
                    </ItemTemplate>

                </asp:Repeater>
            </ul>

            <div class="filters-content">
    <div class="row grid">
        <asp:Repeater ID="rProducts" runat="server">
            <ItemTemplate>
                <div class="col-sm-6 col-lg-4 all <%# Eval("CategoryName").ToString().ToLower() %>">
                    <div class="card">
                        <div class="card-img">
                            <img src="<%# Utils.GetImageUrl(Eval("ImageUrl")) %>" alt="<%# Eval("Name") %>" />
                        </div>
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Name") %></h5>
                            <p class="card-description"><%# Eval("Description") %></p>
                            <div class="card-footer">
                                <h6 class="card-price">Rs <%# Eval("Price") %></h6>
                                <asp:LinkButton runat="server" ID="lblAddToCart" CssClass="btn-add-to-cart">
                                    Add to Cart
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>

           <%-- <div class="btn-box">
                <a href="">View More
                </a>
            </div>--%>
        </div>
    </section>

    <!-- end food section -->

</asp:Content>
