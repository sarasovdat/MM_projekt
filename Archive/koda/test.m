% V tej datoteki je zapisana parametrizacija krivulje, po kateri se giba% otrok in njen odvod: primer lahko določimo sami% x, y: otrok% dx, dy: otrok% o, do: otrok% x_i, y_i: igraca% parametrizacija krivulje otroka (podatki)x = @(t) t.^2 - 1;y = @(t) t.^3 - t;dx = @(t) 2 * t;dy = @(t) 3 * t.^2 - 1;% parametrizacija otroka v vektorjuo = @(t) [x(t); y(t)];do = @(t) [dx(t); dy(t)];%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% izracun koordinat igrace[v, smer] = hitrost_otroka(dx, dy, 5);[t, P] = igraca(o, do);% izlocimo x in y koordinate iz matrike P, tj. koordinate igracex_i = P(:, 1);y_i = P(:, 2);% izrisemo krivuljo gibanja otrokahold onrisi_otrok(x, y);% izrisemo krivuljo gibanja igracehold onrisi_igraca(x_i, y_i);% izrisemo animacijo gibanja otroka in igracehold on animacija(x, y, x_i, y_i, t);