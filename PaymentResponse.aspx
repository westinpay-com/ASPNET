<%@ Page Language="C#" %>
<%@ Import Namespace="System.Security.Cryptography" %>

<%
    // Receive the response parameters
    string status = Request.Form["status"];
    string signature = Request.Form["signature"];
    string identifier = Request.Form["identifier"];
    string data = Request.Form["data"];

    // Generate your signature
    string customKey = data["amount"] + identifier;
    string secret = "YOUR_SECRET_KEY";
    byte[] bytes = Encoding.UTF8.GetBytes(secret);
    HMACSHA256 hmac = new HMACSHA256(bytes);
    byte[] hashValue = hmac.ComputeHash(Encoding.UTF8.GetBytes(customKey));
    string mySignature = BitConverter.ToString(hashValue).Replace("-", "").ToLower();

    string myIdentifier = "YOUR_GIVEN_IDENTIFIER";

    if (status == "success" && signature == mySignature && identifier == myIdentifier)
    {
        // your operation logic
    }
%>
