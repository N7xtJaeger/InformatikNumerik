clear all;
n = input("Wie viele Wellenabschnitte sind vorhanden?");

durchmesser = zeros(1, n);
laenge = zeros(1, n);

for i=1:1:n
    fprintf("Abschnitt %i\n", i)
    durchmesser(i) = input("Durchmesser in cm: ");
    laenge(i) = input("Länge in cm: ");
end

dichte = input("Was für eine Dichte hat der Werkstoff der Welle?");

if isempty(dichte)
    dichte = 7.85;
    fprintf("Es wird die Standarddichte von %1.2f g/cm^3 verwendet.\n", dichte)
else
    fprintf("Es wir eine Dichte von %2.2f verwendet.\n", dichte)
end    

einzelmassen = pi/4 .* durchmesser.^2 .* dichte .*laenge .* (1/1000);

for i=1:1:n
    fprintf("Masse von Abschnitt %i: %4.3f kg\n", i, einzelmassen(i))
end

gesamtmasse = sum(einzelmassen);

fprintf("Gesamtmasse der Welle: %4.3fkg\n", gesamtmasse)