﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="LibraryManagmentSystem.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
      <img class="img-fluid" src="imgs/home-bg.jpg"/>
   </section>
   <section>
       <div class="container">
           <div class="row">
               <div class="col-12">
                   <center>
                       <h2>Our Features</h2>
                   </center>
               </div>
           </div>
           <div class="row">
               <div class="col-md-4">
                   <center>
                       <img src="imgs/digital-inventory.png" width="150px" />
                       <h4>Digital Book Inventory</h4>
                       <p class="text-justify">
                           Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                           fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit
                       </p>
                   </center>
               </div>
               <div class="col-md-4">
                   <center>
                       <img src="imgs/search-online.png" width="150px" />
                       <h4>Search Books</h4>
                       <p class="text-justify">
                           Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                           fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit
                       </p>
                   </center>
               </div>
               <div class="col-md-4">
                   <center>
                       <img src="imgs/defaulters-list.png" width="150px" />
                       <h4>Defaulter list</h4>
                       <p class="text-justify">
                           Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                           fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit
                       </p>
                   </center>
               </div>
           </div>
       </div>
   </section>
    <section>
        <img class="img-fluid" src="imgs/in-homepage-banner.jpg" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p><b>We have a Simple 3 Step Process</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                      <img src="imgs/sign-up.png" width="150px" />
                      <h4>Sign Up</h4>
                      <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                          fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img width="150px" src="imgs/search-online.png"/>
                      <h4>Search Books</h4>
                      <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                          fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="imgs/library.png" width="150px" />
                      <h4>Visit Us</h4>
                      <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                          fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
