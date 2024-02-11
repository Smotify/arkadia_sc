function zmeczenie_powiedz_sc()
    if scripts.character:is_male() then
        zmeczenie_male_sc()
    else
        zmeczenie_female_sc()
    end
end

function zmeczenie_male_sc()
zmeczenie = scripts.character.state.fatigue
zm = ""
if zmeczenie == 0 then
    zm = "Jestem w pelni wypoczety"
elseif zmeczenie == 1 then
        zm = "Jestem wypoczety"
elseif zmeczenie == 2 then
        zm = "Jestem troche zmeczony"
elseif zmeczenie == 3 then
        zm = "Jestem zmeczony"
elseif zmeczenie == 4 then
        zm = "Jestem bardzo zmeczony"
elseif zmeczenie == 5 then
        zm = "Jestem nieco wyczerpany"
elseif zmeczenie == 6 then
        zm = "Jestem wyczerpany"
elseif zmeczenie == 7 then
        zm = "Jestem bardzo wyczerpany"
elseif zmeczenie == 8 then
        zm = "Jestem wycienczony"
elseif zmeczenie == 9 then
        zm = "Jestem calkowicie wycienczony"
end

scripts.utils.bind_functional("jpowiedz "..zm)
end

function zmeczenie_female_sc()
zmeczenie = scripts.character.state.fatigue
zm = ""
if zmeczenie == 0 then
    zm = "Jestem w pelni wypoczeta"
elseif zmeczenie == 1 then
        zm = "Jestem wypoczeta"
elseif zmeczenie == 2 then
        zm = "Jestem troche zmeczona"
elseif zmeczenie == 3 then
        zm = "Jestem zmeczona"
elseif zmeczenie == 4 then
        zm = "Jestem bardzo zmeczona"
elseif zmeczenie == 5 then
        zm = "Jestem nieco wyczerpana"
elseif zmeczenie == 6 then
        zm = "Jestem wyczerpana"
elseif zmeczenie == 7 then
        zm = "Jestem bardzo wyczerpana"
elseif zmeczenie == 8 then
        zm = "Jestem wycienczona"
elseif zmeczenie == 9 then
        zm = "Jestem calkowicie wycienczona"
end

scripts.utils.bind_functional("jpowiedz "..zm)
end
