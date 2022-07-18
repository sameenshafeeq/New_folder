<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Claculator</title>

    <style>
        #form1
        {
            border:solid;
            background-color:orange;
            padding:50px;
            margin-left:170px;
            width :195px;
            height:270px;
            
        }
        #form1 h1
        {
            color:black;
            text-align:center;
            background-color:grey;
        }
        #number1
        {

            color:lightslategray;
        }
    </style>
    <script>
        function Validate()
        {
            var num1 = document.getElementById("number1").value;
            var num2 = document.getElementById("number2").value;
            var flag = true;
            var regex = /^[a-zA-Z]+$/;
            var regexnumber = /^([1-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])/;
            try
            {
                if (num1 == " ") throw "Number cannot be empty";
                if (num1.match(regex)) throw "Input Should be a Number";
                if (num2 == " ") throw "Number cannot be empty";
                if (num2.match(regex)) throw "Input Should be a Number";
               // if ((num2.match(regexnumber)) && (num1.match(regexnumber))) throw "Validation Passed!";
            }
            catch(err)
            {
                alert(err);
                return flag=false;
            }
            if(flag== true)
            {
                alert("Passed");
                return flag = true;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <h1>Calculator:</h1>
      <asp:Label ID="labelForNum1" runat="server">Enter your first Number:</asp:Label>  
      <asp:TextBox ID="number1" runat="server" ToolTip="Enter number here"></asp:TextBox><br/>
      <asp:Label ID="labelForNum2" runat="server">Enter your Second Number:</asp:Label>  
      <asp:TextBox ID="number2" runat="server" ToolTip="Enter your second number here"></asp:TextBox><br />
        <asp:DropDownList ID="operatorsList" runat="server" >
            <asp:ListItem Enabled="true" Text="Select the operatins to be performed" Value="none"></asp:ListItem>
            <asp:ListItem Text="Addition" Value="1"></asp:ListItem>
            <asp:ListItem Text="Subtraction" Value="2"></asp:ListItem>
            <asp:ListItem Text="Multiplication" Value="3"></asp:ListItem>
            <asp:ListItem Text="Division" Value="4"></asp:ListItem>
        </asp:DropDownList><br/>
      <p>  
       <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClientClick = "javascript: return Validate()" OnClick="SubmitButton_Click"/>  
       <asp:Label  runat="server" ID="Output"> result.value; </asp:Label>  

      </p>    
    </form>
</body>
</html>
