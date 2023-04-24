<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ShowTime</title>
    <style>
        #LocalTime {
           width: 1000px;
           font-size: 249px;
           margin:100px auto;
           color: darkred;
           text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="LocalTime">
        </div>
    </form>
    <script>
        "use strict";               
        let h = date.getHours();
        let m = date.getMinutes();
        let s = date.getSeconds()+1;
        function ShowLocalTime() {
            s = s + 1;
            if (s >= 60) {
                s = 0;
                m = m + 1;
                if (m >= 60) {
                    m = 0;
                    h = h + 1;
                    if (h >= 24) {
                        h = 0;
                    }
                }
            }
            let localTime = `${h.toString().padStart(2, "0")}:${m.toString().padStart(2, "0")}:${s.toString().padStart(2, "0")}`;            
            document.getElementById("LocalTime").innerText = localTime;
        }
        setInterval(ShowLocalTime, 1000);
    </script>
</body>
</html>
