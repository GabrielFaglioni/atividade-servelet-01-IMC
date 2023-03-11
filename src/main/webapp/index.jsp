<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%--@elvariable id="imc" type="java"--%>

<html>
    <head>
        <title>IMC</title>
    </head>
    <body>
        <h1>Calculadora IMC</h1>
        <form name="bmiForm" action="calculadora" method="GET">
            <table>
                <tr>
                    <td><label for="peso">Seu peso (kg):</label></td>
                    <td><input type="text" name="peso" id="peso"/></td>
                </tr>
                <tr>
                    <td><label for="altura">Sua altura (m) :</label></td>
                    <td><input type="text" name="altura" id="altura"/></td>
                </tr>
                <tr>
                    <th><input type="submit" value="Enviar" name="find"/></th>
                    <th><input type="reset" value="Limpar" name="reset"/></th>
                </tr>
            </table>
            <%--    <h2>${imc}</h2>--%>
            <h2>IMC: ${imc}</h2>
        </form>
    </body>
</html>