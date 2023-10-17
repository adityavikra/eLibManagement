<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="WebApplication1.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/publisher.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col-md-5">
                                <label>Pulisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="Go" class="btn btn-primary" />
                                        </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                <label>Publisher Name</label>
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Publisher Name" ></asp:TextBox>
                                    </div>
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-block btn-primary btn-lg" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-block btn-primary btn-lg" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-block btn-primary btn-lg" />
                            </div>
                        </div>
                    

                    </div>

                </div> 

                <a href="homepage.aspx">Back to Home</a>
            </div>

            
                

            

            <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">


                            
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Publisher List</h4>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered"></asp:GridView>
                                </div>
                            </div>



                            


                        </div>

            </div>

        </div>
    </div>
        </div>

</asp:Content>
