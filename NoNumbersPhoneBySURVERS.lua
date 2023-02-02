sampev = require 'samp.events'
blocked_text = {"Номера телефонов государственных служб:", "Проверить баланс телефона", "Служба точного времени", "Полицейский участок", "Скорая помощь", "914 - ", "Справочная центрального банка", "(узнать владельца дома)"}
function sampev.onServerMessage(color, text)
    for i = 1, #blocked_text do
        if text:find(blocked_text[i]) then
            return false
        end
    end
end