arkadia_sc = arkadia_sc or {
    state = {}
}

function arkadia_sc:helpSC()
        scHelp = tempAlias("^/sc$", [[
            cecho("<green>test")
            ]])
end

function arkadia_sc:hpSC()
        scHp = tempAlias("^/sc hp$", [[
            send("opusc bronie")
            expandAlias("/z_przezuj serce_kapitana")
            expandAlias("/z_przezuj ususzony_ranog")
            expandAlias("/z_przyloz rojnik")
            expandAlias("/z_przyloz nagietek")
            expandAlias("/z_przezuj szczaw")
            expandAlias("/z_sproszkuj ususzony_przelot")
            expandAlias("/z_zjedz makownik")
            expandAlias("/z_rozgryz pieciornik")
            expandAlias("/z_rozgryz dziurawiec")
            expandAlias("/z_przezuj ranog")
            expandAlias("/z_zjedz lawenda")
            expandAlias("/z_przyloz barwinek")
            expandAlias("/z_przyloz babka")
            expandAlias("/z_przezuj mniszek")
            expandAlias("/z_rozgryz macznica")
            expandAlias("/z_zjedz ususzony_szafran")
            expandAlias("/z_przyloz rdest_ptasi")
            expandAlias("/z_zjedz poslonek")
            expandAlias("/z_przezuj mieta")
            expandAlias("/z_przezuj glog")
            expandAlias("/z_przezuj komosa")
            expandAlias("/z_rozgryz macznice")
            expandAlias("/z_rozgryz ususzona_macznice")
            send("dobadz wszystkie bronie")
            ]])
end

function arkadia_sc:zmSC()
        scZm = tempAlias("^/sc zm$", [[
            send("opusc bronie")
            expandAlias("/z_zjedz arnika")
            expandAlias("/z_przyloz bylica_pospolita")
            expandAlias("/z_przezuj lak")
            expandAlias("/z_zjedz melisa")
            expandAlias("/z_przezuj przesl")
            expandAlias("/z_powachaj podbial")
            expandAlias("/z_przyloz szczwol")
            expandAlias("/z_powachaj mieta")
            expandAlias("/z_przezuj nostrzyk")
            expandAlias("/z_przyloz kasztanowiec")
            expandAlias("/z_zjedz komosa")
            expandAlias("/z_polknij bobotrutka")
            expandAlias("/z_przezuj lulecznica")
            expandAlias("/z_zjedz naparstnica")
            send("dobadz broni")
            ]])
end

function arkadia_sc:sterydySC()
        scSterydy = tempAlias("^/sc sterydy$", [[
            send("opusc bronie")
            expandAlias("/z_przezuj aralia 2")
            expandAlias("/z_powachaj bielun 2")
            expandAlias("/z_powachaj krasnodrzew 2")
            expandAlias("/z_przezuj drath 2")
            expandAlias("/z_zjedz casur 2")
            expandAlias("/z_przezuj kulczyba 2")
            send("dobadz broni")
            ]])
end

function arkadia_sc:eventySC()
    scEventy = tempAlias("^/eventy_sc$", [[
cecho("<red>Koloruje roomy, rusz się w którymś kierunku na mapie, może na chwilę zlagować\n\n")
cecho("<DarkOrange>Inne eventowe NPC\n")
cecho("<ansiLightMagenta>SS Aedirn\n")
cecho("<DeepPink>Elisven\n")
-- Wszystko inne w Ishtar i Imperium
local inne = {20088, 7995, 959, 4408, 8965, 19801, 4294, 10271, 4549,4084, 4018, 9674, 1967, 1922, 1866, 1863, 24488, 2181, 23872,
    9509, 9549, 9545, 25332, 2751, 7919, 24408, 23130, 24409,
    24409, 9321, 9347, 388, 16131, 347, 3748, 1105, 185, 2974, 25288, 11425, 11408, 11423,
    10760, 3291, 20808, 23664, 20177, 18295, 8550, 7993, 22782, 22512,
    2794, 16649, 4525, 2840, 4230, 1717, 2840, 1724, 3618, 8058,
    7118, 7109, 7070, 6303, 2840, 16438, 16439, 16443, 16440,
    6242, 24525, 16368, 16367, 16366, 16365, 17036, 17037, 6154, 20362,
    17035, 6096, 6829, 6827, 6826, 6825, 6821, 6790, 11403, 7617, 4202,
    5227, 5447, 2840, 2840, 2840, 2840, 2840, 8632, 3652, 3641, 10468, 939, 4236, 10175, 24006, 5662, 5669, 5638}
for k, v in pairs(inne) do 
    setRoomEnv(v, 111111111111)
local r,g,b = unpack(color_table.DarkOrange)
    setCustomEnvColor(111111111111, r,g,b, 255,144,0)
end

-- Tarwiki 
local ss = {18774, 20322, 23012, 20069, 24729, 22977, 8229}
for k, b in pairs(ss) do
    setRoomEnv(b, 584123131)
local r,g,b = unpack(color_table.ansiLightMagenta)
    setCustomEnvColor(584123131, r,g,b, 255,0,255)
end

-- Elisven
local elisven = {2770, 3785, 20378, 20403, 20298, 20076, 20073, 20085, 2634, 20304,
                20080, 22982, 2671, 20343, 3387, 3374, 3383, 8754, 8727, 2634, 10471, 
                8726, 10472, 8646, 20305, 10466, 10106, 20383, 2638, 20334, 19294, 20098, 8650,
                10470, 2638, 9635, 9641, 9639, 3792, 9298, 8648, 10468, 2636, 20105, 20386, 20098}
for k, c in pairs(elisven) do
    setRoomEnv(c, 33333333333)
    local r,g,b = unpack(color_table.DeepPink)
    setCustomEnvColor(33333333333, r,g,b, 255,20,147)
end
        ]])
end

function arkadia_sc:obliczaniePelnie()
    scPelnia = tempAlias("^/pelnia$", [[
function obliczCzas()    
        local aktualnyCzas = os.time()
    
        local czasDoPrzodu = aktualnyCzas + (19.2 * 3600)
    
        local nowaData = os.date("*t", czasDoPrzodu)
    
        cecho(string.format("<green>\nPełnia będzie okolo: %02d:%02d:%02d %d-%02d-%02d\n", 
                            nowaData.hour, nowaData.min, nowaData.sec,
                            nowaData.year, nowaData.month, nowaData.day))
    
        cecho("<red>Uwaga: Używaj tego skryptu w momencie pełni, czyli pojawienia się wilkołaka lub szpiegów!\n")
    end
    
    obliczCzas()
    ]])
end

function arkadia_sc:odlozMagieSC()
    scOdlozMagie = tempAlias("^/odloz_magie_sc$", [[
            send("wloz niepozorny barwny pierscien do pnia", false)
            send("wloz gruba czarna opaske z kolcami do pnia", false)
            send("wloz lekka lsniaca bransolete do pnia", false)
            send("wloz azurowy koscistobialy amulet do pnia", false)
            send("wloz ciezki krwisty amulet do pnia", false)
            send("wloz lsniacy krysztalowy wisior do pnia", false)
            send("wloz masywny amulet do pnia", false)
            send("wloz pozlacane okulary do pnia", false)
            send("wloz masywny oksydowany pas do pnia", false)
            send("wloz niepozorny barwny pierscien do pnia", false)
            send("wloz niewielki krwawnikowy pierscien do pnia", false)
            send("wloz zdobiony zloty pierscien do pnia", false)
            send("wloz niewielki zmatowialy pierscien do pnia", false)
            send("wloz dluga czarna szate do pnia", false)
            send("wloz szmaragdowozielony misterny plaszcz do pnia", false)
            send("wloz zielony luskowaty plaszcz do pnia", false)
            send("wloz ozdobny skorzany plecak do pnia", false)
            send("wloz szare wygodne buty do pnia", false)
            send("odtrocz glowe", false)
            send("odtrocz glowy", false)
            send("wez glowy z zalozonego plecaka", false)
            send("wez glowy ze swojego plecaka", false)
            send("wez glowy z zalozonej torby", false)
            send("wez glowy ze swojego torby", false)
            send("wloz glowy do pnia", false)
            
            send("w", false)
            
            send("wloz ciemnogranatowy smukly helm do skrzyni", false)
            send("wloz snieznobialy luskowy pancerz do skrzyni", false)
            send("wloz srebrnozloty paskowy pancerz do skrzyni", false)
            send("wloz bialoblekitna smocza zbroje do skrzyni", false)
            send("wloz starozytna runiczna zbroje do skrzyni", false)
            send("wloz czerwone skrzydlate nareczaki do skrzyni", false)
            send("wloz czarny zdobiony helm do skrzyni", false)
            send("wloz owadzioksztaltny brazowy helm do skrzyni", false)
            send("wloz gadzi polyskujacy pancerz do skrzyni", false)
            send("wloz luskowy czerwonawy kaftan do skrzyni", false)
            
            send("wloz blekitno-srebrna trojkatna tarcze do kosza", false)
            send("wloz lsniaca plomienista tarcze do kosza", false)
            send("wloz szkarlatna rogata tarcze do kosza", false)
            send("wloz okragly migotliwy puklerz do kosza", false)
            send("wloz misterna spizowa pawez do kosza", false)
            
            send("przesmyk", false)
            send("nw", false)
            
            
            send("se", false)
            ]])
end

function arkadia_sc:kokonySC()
    scKokony = tempAlias("^/kokony$", [[
send("rozerwij kokon ; rozerwij 2. kokon ; rozerwij 3. kokon ; wez wszystko z kokonu ; wez wszystko z 2. kokonu; wez wszystko z 3. kokonu ; rozerwij 4. kokon ; wez wszystko z 4. kokonu; rozerwij 5. kokon ; wez wszystko z 5. kokonu ; rozerwij 6. kokon ; wez wszystko z 6. kokonu ; rozerwij 7. kokon ; wez wszystko z 7. kokonu ; rozerwij 8. kokon ; wez wszystko z 8. kokonu ; rozerwij 9. kokon ; wez wszystko z 9. kokonu ; rozerwij 10. kokon ; wez wszystko z 10. kokonu ; rozerwij 11. kokon ; wez wszystko z 11. kokonu ;rozerwij 12. kokon ; wez z niego wszystko ; rozerwij 12. kokon ; wez wszystko z 12. kokonu ; rozerwij 13. kokon ; wez wszystko z 13. kokonu ; rozerwij 14. kokon ; wez z niego wszystko ; rozerwij 16. kokon ; wez z niego wszystko ; rozerwij 17. kokon ; wez z niego wszystko ; rozerwij 18. kokon ; wez z niego wszystko ; rozerwij 19. kokon ; wez z niego wszystko ; rozerwij 20. kokon ; wez z niego wszystko", false)
]])
end

function arkadia_sc:init()
    arkadia_sc:zmSC()
    arkadia_sc:helpSC()
    arkadia_sc:eventySC()
    arkadia_sc:obliczaniePelnie()
    arkadia_sc:kokonySC()
    arkadia_sc:odlozMagieSC()
    arkadia_sc:hpSC()
    arkadia_sc:sterydySC()
end

arkadia_sc:init()
