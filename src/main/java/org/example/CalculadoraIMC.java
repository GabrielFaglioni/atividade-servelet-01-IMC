package org.example;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "calculadoraIMC", urlPatterns = "/calculadora")
public class CalculadoraIMC extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, IOException {
        Double peso = Double.parseDouble(req.getParameter("peso"));
        Double altura = Double.parseDouble(req.getParameter("altura"));

        Double imc = peso / (altura * altura);
        req.setAttribute("imc", String.format("%.2f %%", imc));
        resp.setHeader("imc", String.format("%.2f", imc));
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}