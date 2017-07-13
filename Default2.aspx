<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js' type='text/javascript'></script>
    <script>

        $(document).ready(function () {

            $(document).on("click", '.whatsapp', function () {

                if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {

                    var sText = "Text to share";

                    var sUrl = "http:\\www.topsint.com\topserp";

                    var sMsg = encodeURIComponent(sText) + " - " + encodeURIComponent(sUrl);

                    var whatsapp_url = "whatsapp://send?text=" + sMsg;

                    window.location.href = whatsapp_url;

                }

                else {

                    alert("Whatsapp client not available.");

                }

            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
