<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="FinalProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
<head>
<title>FAQs</title>
<script type="text/javascript">
    function toggleview(itm) {
        var itmx = document.getElementById(itm);
        if (itmx.style.display == "none") {
            itmx.style.display = "block";
        }
        else {
            itmx.style.display = "none";
        }
    }
</script>
    <img src="../images/faq%20(1).png" style="height: 233px; width: 1162px" />
</head>
<body>
<a href="#" onclick="toggleview('q1')"><h3>1.What is term life insurance?</h3></a>
<div id='q1' style="display:none" >
Term life insurance provides protection for only a specified period of time – usually 10, 15, 20 or 30 years.<br /> 
There is no cash value associated with term life coverage, which is why premiums are often lower than for other types of insurance.<br />
Some term life policies may offer greater flexibility such as terms for return of premium and the potential to convert to whole life insurance.
</div>
<br />
<a href="#" onclick="toggleview('q2')"><h3>2.Why buy life insurance?</h3></a>
<div id='q2' style="display:none">
One of the most important reasons to purchase life insurance is to ensure your loved ones are provided for financially.<br />
Life insurance is also useful in helping your survivors pay bills and debts after your death, as well as for funeral expenses.<br />
It may be used for wealth accumulation and distribution as part of an overall financial strategy.
</div>
<br />
<a href="#" onclick="toggleview('q3')"><h3>3.Can I purchase a policy for my children?</h3></a>
<div id='q3' style="display:none">
You may purchase a rider to add a child or children to your policies with a variety of term and permanent life policies.<br />
 Please visit a branch or call 800.662.3343 to find out more.
</div>
<br />
<a href="#" onclick="toggleview('q4')"><h3>4.Will insurance help my beneficiary pay off my debt?</h3></a>
<div id='q4' style="display:none">
Once a claim is paid, use of the funds is at the discretion of the beneficiary you've designated
</div>
<br />
<a href="#" onclick="toggleview('q5')"><h3>5.How long does approval take?</h3></a>
<div id='q5' style="display:none">
Depending on the type of insurance and the steps involved, it may take as little as several days<br />
or as much as several weeks for a policy to be approved.
</div>
<br />

</body>
</html>
</asp:Content>