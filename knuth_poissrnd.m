function k = knuth_poissrnd(lambda)

    k = zeros(size(lambda));
    L = exp(-lambda);
    for i = 1:length(lambda(:))
		m = 0;
		p = 1;
		stop = 0;
		while (~stop)
			m = m + 1;
			u = rand;
			p = p * u;
			stop = (p <= L(i));
		end
		k(i) = m - 1;
    end