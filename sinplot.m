  function[op]=sinplot(t1,t2);
     t=t1:0.1:t2:f;
      op=sin(2*pi*t*f);
        plot(op);grid on
        b=fft(op);
        plot(abs(b));
             
            