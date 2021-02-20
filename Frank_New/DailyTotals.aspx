﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DailyTotals.aspx.vb" Inherits="FranksTours.DailyTotals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daily Totals</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <link href="_Styles/BasicStyles.css" rel="stylesheet" />
    <link href="_Styles/myStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <section class="pageWrapper lightBlueBack">
        <div class="centerDiv padding10 lightBlueBack">
            <asp:Button ID="btnReturn" CssClass="autoMargin" Font-Size="2em" runat="server" Text=" Return " OnClick="btnReturn_Click" />
        </div>

        <div class="centerDiv padding10 lightBlueBack">
            <div class="width45 autoMargin padding10 lightBlueBack regBorder">

                <div class="centerText lightBlueBack bold" style="font-size:1.5em">
                    <p>Daily Hit List</p>
                </div>

                <div class="lightBlueBack width45 autoMargin">
                    <asp:GridView CssClass="autoMargin" ID="gvTotals" runat="server" BackColor="LightBlue" Font-Bold="True" 
                        ForeColor="DarkBlue" Width="200px" AutoGenerateColumns="False">
                        <Columns>
                            <asp:boundfield datafield="HitDate" headertext="Date" ItemStyle-Width="100px"/>
                            <asp:boundfield datafield="Hits" headertext="Hits"/>
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="clear"></div>

            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>

    </section>
    </form>
</body>
</html>