<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:content id="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="Assets/images/b1.jpg" style="width: 100%; height: 350px" alt="ASP.NET" class="img-responsive" />
                <div class="carousel-caption" role="option">
                    <p>
                        Are you an Authorized Bank manager ?? Login here...
                        <a class="btn btn-default" href="AdminLogin.aspx">
                            Login Here
                        </a>
                        </a>
                    </p>
                </div>
            </div>
            <div class="item">
                <img src="Assets/images/b1.jpg" style="width: 100%; height: 350px" alt="Visual Studio" class="img-responsive" />
                <div class="carousel-caption" role="option">
                    <p>
                        Are you an Authorized Bank manager ?? Login here...
                        <a class="btn btn-default" href="AdminLogin.aspx">
                            Learn More
                        </a>
                    </p>
                </div>
            </div>
            <div class="item">
                <img src="Assets/images/b1.jpg" style="width: 100%; height: 350px" alt="Package Management" class="img-responsive" />
                <div class="carousel-caption" role="option">
                    <p>
                        Bring in libraries from NuGet, Bower, and npm, and automate tasks using Grunt or Gulp.
                        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkID=525029&clcid=0x409">
                            Learn More
                        </a>
                    </p>
                </div>
            </div>
            <div class="item">
                <img src="Assets/images/b1.jpg" style="width: 100%; height: 350px" alt="Microsoft Azure" class="img-responsive" />
                <div class="carousel-caption" role="option">
                    <p>
                        Learn how Microsoft's Azure cloud platform allows you to build, deploy, and scale web apps.
                        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkID=525027&clcid=0x409">
                            Learn More
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="sr-only">Next</span>
        </a>
    </div>

        <div class="container">
            <h2 style="font-weight: 900; letter-spacing: 6px; margin-left: 11%">MULTI BANKING TRANSACTION SYSTEMS</h2><hr>
            <p class="lead">Multi Banking aims at providing secure, simple and hastle free banking and business solutions, with advanced features bringing all the banks under one common platform.
            </p>
            <h4>A design surface and hundreds of controls and components let you rapidly surf securely through sophisticated, powerful UI-driven sites with data access.</h4>
            
        </div>
    <hr>
    <br>
        <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2>Getting started</h2>
                <p>
                Multi Banking aims at bringing all the banks under one common roof.
                Using a secure and simple interface, to integrate all your bank accounts.
                Aims to provide high end business solutions.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Get more...</h2>
                <p>
                Create an account now.
                Include all your bank accounts.
                Manage all the transactions through one common gateway.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
                <h2>Overview</h2>
                <p>
                Working with Data
                Security
                Client side development
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </div>
        </div>
        </div>
</asp:content>