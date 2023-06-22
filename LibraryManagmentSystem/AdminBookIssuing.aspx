﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookIssuing.aspx.cs" Inherits="LibraryManagmentSystem.AdminBookIssuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/books.png" width="100px" />
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
                                <label>Member ID</label>
                                <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Member Name</label>
                                <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>Book Name</label>
                                <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                            </div>
                            
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Start Date</label>
                                <asp:TextBox class="form-control" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>End Date</label>
                                <asp:TextBox class="form-control" ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                            
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-block btn-primary btn-lg" ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />
                            </div>
                            <div class="col-6">
                                <asp:Button class="btn btn-block btn-success btn-lg" ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
                            </div>
                            
                        </div>

                    </div>
                </div>
                    <a href="homepage.aspx"><< Back to Home</a>
                <br />
                <br />
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_table]"></asp:SqlDataSource>
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_Id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_Id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_Id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView> 
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
