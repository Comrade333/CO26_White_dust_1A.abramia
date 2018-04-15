//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Власти НРФ, вооруженным путем, захватывают остров Буве принадлежащий Норвегии. Норвежцы опасаясь начала крупного вооруженного конфликта, сдают остров без боестолкновений, оставив захватчикам своих ученных с важными данными о разведке месторождений.
<br />Нашей задачей, как ЧВК, является эвакуация ученных и данных оставшихся на станции ""Førti""."
END

TOPIC("А. Враждебные силы:")
"Войска специального назначения НРФ - элитные силы.
<br />        Около 1 взвода."
END

TOPIC("Б. Дружественные силы:")
"ЧВК ""Анод"" - регулярные силы.
<br />        1'1 - 9 чел.
<br />        1'2 - 9 чел.
<br />        1'3 - 9 чел.
<br />        1'6 - 2 чел."
END

TOPIC("II. Задание:")
"1. Найти и вывести ученых.
<br />2. Найти компьютер с данными.
<br />3. Эвакуироваться."
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"2x - ""Мерлин"" (Транспортный вертолет)
<br />4x - ""Литл Берд"" (Невооруженный)"
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />SUP NET 51
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'3 - SR CH 3
<br />1'6 - SR CH 6
<br />"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"- Если игроки завязли на objective, высылай ми-24."
END
};

ADD_TOPICS
