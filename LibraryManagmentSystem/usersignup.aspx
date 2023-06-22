<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="LibraryManagmentSystem.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    &nbsp;&nbsp;&nbsp;
                                    <img src="imgs/generaluser.png" width="100px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign Up</h4>
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <asp:TextBox class="form-control" ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <asp:TextBox class="form-control" ID="TextBox4" runat="server" TextMode="Email" placeholder="Email ID"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                    <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Text="Punjab" Value="Punjab" />
                                    <asp:ListItem Text="Sind" Value="Sind" />
                                    <asp:ListItem Text="Khyber Pakhtunkhwa" Value="Khyber Pakhtunkhwa" />
                                    <asp:ListItem Text="Balochistan" Value="Balochistan" />
                                </asp:DropDownList>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="City"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <asp:TextBox class="form-control" ID="TextBox6" runat="server" TextMode="Number" placeholder="Pincode"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                                <div class="col">
                                    <label>Full Address</label>
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <br />
                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User ID</label>
                                <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" TextMode="Phone"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <asp:TextBox class="form-control" ID="TextBox9" runat="server" TextMode="password" placeholder="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    
                                    <br />
                                    
                                </div>

                                <div class="form-group">
                                    <a href="usersignup.aspx">
                                        <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                    </a>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to Home</a>
                <br />
                <br />
            </div>
        </div>
    </div>

</asp:Content>
