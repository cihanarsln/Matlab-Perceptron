function [w] = perceptron(X,Y,w_init,rho)
  w = w_init;
  cond = true;
  while cond 
  cond = false;
  for i = 1 : size(X,2)     
    if sign(w'*X(:,i)) ~= Y(i)
      w = w + X(:,i) * Y(i) * rho;
      cond = true;
    end
  end
  end
end





