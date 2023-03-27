esimate_td_xl(a, b, c, filter_result=true) = begin
    a, b, c = Complex(a), Complex(b), Complex(c)
    if (2*a^2 - 5*a*c + 2*c^2 + 4 * b^2) != 0
        rs = [
            (-6*a + 12*c - sqrt(6)*(sqrt(-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 6*(a - 2*c)^2 + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)) + sqrt(64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 12*(a - 2*c)^2 - 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 12*sqrt(6)*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)/sqrt((-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2) + 6*(a - 2*c)^2*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(2/3))/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)))))/(24*b),
            (-6*a + 12*c + sqrt(6)*(-sqrt(-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 6*(a - 2*c)^2 + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)) + sqrt(64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 12*(a - 2*c)^2 - 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 12*sqrt(6)*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)/sqrt((-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2) + 6*(a - 2*c)^2*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(2/3))/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)))))/(24*b),
            (-6*a + 12*c + sqrt(6)*(sqrt(-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 6*(a - 2*c)^2 + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)) - sqrt(64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 12*(a - 2*c)^2 - 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) - 12*sqrt(6)*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)/sqrt((-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2) + 6*(a - 2*c)^2*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(2/3))/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)))))/(24*b),
            (-6*a + 12*c + sqrt(6)*(sqrt(-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 6*(a - 2*c)^2 + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)) + sqrt(64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 12*(a - 2*c)^2 - 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) - 12*sqrt(6)*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)/sqrt((-64*3^(2/3)*b^2*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2) + 6*(a - 2*c)^2*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3) + 3^(1/3)*(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(2/3))/(-9*(a - 2*c)^6 - 9*(a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) + sqrt(3)*sqrt(262144*b^6*(2*a^2 - 5*a*c + 4*b^2 + 2*c^2)^3 + 27*((a - 2*c)^6 + (a - 2*c)^2*(3*a^4 - 24*a^3*c + 72*a^2*c^2 - 96*a*c^3 + 256*b^4 + 64*b^2*(2*a^2 - 5*a*c + 2*c^2) + 48*c^4) - 4*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^2) + 36*(a^3 - 6*a^2*c + 12*a*c^2 + 8*b^2*(2*a - c) - 8*c^3)^2)^(1/3)))))/(24*b),
        ]
    else
        rs = [
            (-a + 2*c - sqrt(2)*sqrt((a^3 - 6*a^2*c + a^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 16*a*b^2 + 12*a*c^2 - 4*a*c*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 2*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3)*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) - 8*b^2*c - 8*c^3 + 4*c^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2)) - sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/(4*b),
            (-a + 2*c + sqrt(2)*sqrt((a^3 - 6*a^2*c + a^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 16*a*b^2 + 12*a*c^2 - 4*a*c*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 2*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3)*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) - 8*b^2*c - 8*c^3 + 4*c^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2)) - sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/(4*b),
            (-a + 2*c - sqrt(2)*sqrt((-a^3 + 6*a^2*c + a^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) - 16*a*b^2 - 12*a*c^2 - 4*a*c*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 2*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3)*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 8*b^2*c + 8*c^3 + 4*c^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2)) + sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/(4*b),
            (-a + 2*c + sqrt(2)*sqrt((-a^3 + 6*a^2*c + a^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) - 16*a*b^2 - 12*a*c^2 - 4*a*c*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 2*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3)*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2) + 8*b^2*c + 8*c^3 + 4*c^2*sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2)) + sqrt(a^2 - 4*a*c - 4*3^(1/3)*b^(4/3)*(-a^2 + c^2)^(1/3) + 4*c^2))/(4*b),
        ]
    end
    if filter_result
        rs = map(r -> r.re, filter(r -> r.im == 0 && r.re > 0, rs))
        if length(rs) > 1 @warn "esimated r is ambiguous: a=$(a.re), b=$(b.re), c=$(c.re), r ∈ $(rs)" end
        return rs[begin]
    else
        return rs
    end
end