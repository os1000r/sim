<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Impressao.aspx.cs" Inherits="SIM.MVC.Impressao" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<!DOCTYPE html>

 <%-- Add Reference to jQuery at Google CDN --%>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="true" DisplayStatusbar="False" EnableDrillDown="False" 
            HasCrystalLogo="False" HasDrilldownTabs="False" 
            HasToggleGroupTreeButton="False" HasToggleParameterPanelButton="False" 
            ToolPanelView="None" PageZoomFactor="100" OnUnload="CrystalReportViewer1_Unload" 
             />
    </div>
        <input type="button" style="font-size:18px" onclick="javascript: jsWebClientPrint.print('useDefaultPrinter=true&printerName=');" value="Print Report..." />
        <%--<%=Neodynamic.SDK.Web.WebClientPrint.CreateScript()%>--%>
    </form>
</body>
</html>
