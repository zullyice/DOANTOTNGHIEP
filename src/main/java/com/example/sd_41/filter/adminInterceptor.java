package com.example.sd_41.filter;


import com.example.sd_41.model.Enum.RoleEnum;
import com.example.sd_41.model.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class adminInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(
            HttpServletRequest request,
            HttpServletResponse response,
            Object handler
    ) throws Exception {

        Object object = request.getSession().getAttribute("userLog");
        User user = (User) object;

        // Nếu người dùng chưa đăng nhập
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/UserLog/login");
            return false;
        }

        // Kiểm tra nếu người dùng là Admin
        if (user.getRole() != RoleEnum.ADMIN) {
            response.setStatus(403); // Forbidden
            response.sendRedirect(request.getContextPath() + "/UserLog/showLogTaiKhoanKhongApDung");
            return false;
        }

        return true;
    }



}
