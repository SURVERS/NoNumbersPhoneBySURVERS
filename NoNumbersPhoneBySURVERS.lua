sampev = require 'samp.events'
blocked_text = {"������ ��������� ��������������� �����:", "��������� ������ ��������", "������ ������� �������", "����������� �������", "������ ������", "914 - ", "���������� ������������ �����", "(������ ��������� ����)"}
function sampev.onServerMessage(color, text)
    for i = 1, #blocked_text do
        if text:find(blocked_text[i]) then
            return false
        end
    end
end