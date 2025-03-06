function [einzelmassen, gesamtmasse] = massen(durchmesser, laenge, dichte)
    einzelmassen = pi/4 * durchmesser.^2 * dichte .* laenge * (1/1000);
    gesamtmasse = sum(einzelmassen);
end

