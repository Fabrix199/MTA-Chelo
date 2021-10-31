﻿guiLanguage.russian = {
    --
    -- GENERAL STRINGS
    --
    windowHeader = "Редактор Хэндлинга v"..HVER,

    restrictedPassenger = "Вы не можете использовать редактор хэндлинга в качестве пассажира.",
    needVehicle = "Вы должны находиться в транспорте, чтобы использовать редактор хэндлинга!",
    needLogin = "Авторизуйтесь для пользования этим меню.",
    needAdmin = "Только администратор может использовать это меню.",
    accessDenied = "У вас нет должного доступа, чтобы использовать это меню.",
    invalidView = "Этого меню не существует!",
    disabledView = "Это меню было отключено.",

    sameValue = "%s это то же самое!",
    exceedLimits = "Значение %s превышает лимит. [%s]!",
    cantSameValue = "%s не то же самое, что и %s!",
    needNumber = "Пожалуйста, используйте только цифры!",
    unsupportedProperty = "%s не поддерживаемое значение.",
    successRegular = "%s был(а) изменен(а) на %s.",
    successHex = "%s %s.",
    unableToChange = "Не удаётся изменить %s на %s!",
	disabledProperty = "Редактирование %s отключено на этом сервере!",

    resetted = "Успешно сброшен стандартный хэндлинг этого авто!",
    loaded = "Успешно был загружен ваш хэндлинг!",
    imported = "Успешно был импортирован ваш хэндлинг!",
    invalidImport = "Ошибка импорта. Импортируемый хэндлинг не допустим!",
    invalidSave = "Пожалуйста, укажите корректное имя и описание для вашего хэндлинга!",

    confirmReplace = "Вы уверены, что хотите перезаписать существующее сохранение?",
    confirmLoad = "Вы уверены, что хотите загрузить эти настройки хэндлинга? Все несохраненные изменения будут утеряны!",
    confirmDelete = "Вы уверены, что хотите удалить эти настройки хэндлинга?",
    confirmReset = "Вы уверены, что хотите сбросить эти настройки хэндлинга? Все несохраненные изменения будут утеряны!",
    confirmImport = "Вы уверены, что хотите импортировать эти настройки хэндлинга? Все несохраненные изменения будут утеряны!",

    successSave = "Вы успешно сохранили ваш хэндлинг!",
    successLoad = "Вы успешно загрузили ваш хэндлинг!",
    sucessDelete = "Успешно удалил ваши настройки обработки!",

    wantTheSettings = "Вы уверены, что хотите применить эти настройки? Редактор хэндлинга будет перезагружен.",

    vehicle = "Транспорт",
    unsaved = "Несохранено!",

    clickToEdit = "Нажмите или потяните, чтобы отредактировать.",
    enterToSubmit = "Нажмите 'Enter', чтобы применить изменения.",
    clickToViewFullLog = "Нажмите, для просмотра полного лога авто.",
    copiedToClipboard = "Ваш хэндлинг был скопирован в буфер обмена!",

    special = {
    },

    --
    -- BUTTON / MENU STRINGS
    --

    --Warning level strings
    warningtitles = {
        info = "Информация",
        question = "Вопрос",
        warning = "Предупреждение!",
        error = "Ошибка!"
    },
    --Strings for the buttons at the top
    menubar = {
        handling = "Хэндлинг",
        tools = "Функции",
        extra = "Экстра",
    },

    --Strings for the buttons at the left
    viewbuttons = {
        engine = "Двига-\nтель",
        body = "Кузов",
        wheels = "Под-\nвеска",
        appearance = "Вид",
        modelflags = "Флаги\nМодели",
        handlingflags = "Флаги\nХэнд-\nлинга",
        dynamometer = "Стенд",
        undo = "<",
        redo = ">",
        save = "Сохра-\nнения"
    },

    -- Strings for the various views of the editor. Empty strings are placeholder to avoid debug as the debug is meant to show items which are missing text.
    viewinfo = {
        engine = {
            shortname = "Давигатель",
            longname = "Нстройки двигателя"
        },
        body = {
            shortname = "Кузов",
            longname = "Настройки Кузова и Подвески"
        },
        wheels = {
            shortname = "Подвеска",
            longname = "Настройка подвески"
        },
        appearance = {
            shortname = "Вид",
            longname = "Настройки вида"
        },
        modelflags = {
            shortname = "Флаги модели",
            longname = "Специальные настройки для модели транспорта"
        },
        handlingflags = {
            shortname = "Флаги хэндлинга",
            longname = "Специальные настройки для хэндлинга"
        },
        dynamometer = {
            shortname = "Динаметр",
            longname = "Старт замера динамики на стенде"
        },
        about = {
            shortname = "Помощь",
            longname = "Помощь и дополнительная информация",
            itemtext = {
                textlabel = "Добро пожаловать в официальный MTA редактор хэндлинга!\n"..
				            "Этот скрипт позволяет вам редактировать хэндлинг любого транспорта прямо в игре!\n"..
                            "Вы можете сохранять и загружать свой хэндлинг черех меню 'Хэндлинг' или же имортировать хэндлинг из других игр через меню 'Функции' в верхнем левом углу.\n"..
                            "За большей информацией о хэндлинг редакторе - такой, как список изменений - посетите сайт в окошке снизу:\n\n\n\nP.S. Редактор хэндлинга был переведен FornetGear'ом. Страница в ВКонтакте скриптера - переводчика: 'http://vk.com/id41070112'",
                websitebox = "http://github.com/hedit/hedit",
                morelabel = "Благодарим вас за пользование редактором хэндлинга!"
            }
        },
        undo = {
            shortname = "Возврат",
            longname = "Возврат",
            itemtext = {
                textlabel = "Вернитесь, если что-то пошло не так."
            }
        },
        redo = {
            shortname = "Повтор",
            longname = "Повтор",
            itemtext = {
                textlabel = "Повторите действие, если что-то пошло не так."
            }
        },
        reset = {
            shortname = "Сброс",
            longname = "Сброс хэндлинга транспорта до оригинального.",
            itemtext = {
                label = "Ваш транспорт:",
                combo = "-----",
                button = "Сброс"
            }
        },
        save = {
            shortname = "Сохранение",
            longname = "Сохранить или загрузить настройки хэндлинга.",
            itemtext = {
                nameLabel = "Название",
                descriptionLabel = "Описание",
                saveButton = "Сохранить",
                loadButton = "Загрузить",
                grid = "",
                nameEdit = "",
                descriptionEdit = ""
            }
        },
        import = {
            shortname = "Импорт/Экспорт",
            longname = "Импорт или экспорт настройек хэндлинга.",
            itemtext = {
                importButton = "Импорт",
				exportButton = "Экспорт",
                III = "III",
                VC = "VC",
                SA = "SA",
                IV = "IV",
                memo = ""
            }
        },
        get = {
            shortname = "Получить",
            longname = "Получить настройки хэндлинга от другого игрока."
        },
        share = {
            shortname = "Поделиться",
            longname = "Поделиться настройками хэндлинга для другого игрока."
        },
        upload = {
            shortname = "Выгрузить",
            longname = "Выгрузить ваши настройки хэндлинга на сервер."
        },
        download = {
            shortname = "Скачать",
            longname = "Скачать настройки хэндлинга с сервера."
        },

        resourcesave = {
            shortname = "Сохранение в скрипт",
            longname = "Сохранение ваших настройек хэндлинга в скрипт."
        },
        resourceload = {
            shortname = "Загрузка из скрипта",
            longname = "Загрузка настройек хэндлинга из скрипта."
        },
        options = {
            shortname = "Опции",
            longname = "Опции",
            itemtext = {
                label_key = "Кнопка  вызова  редактора:",
                label_cmd = "Команда вызова редактора:",
                label_template = "Шаблон панели:",
                label_language = "Язык редактора хэндлинга:",
                label_commode = "Отображение центров массы:",
                checkbox_versionreset = "Откатить мою версию редактора с %s до %s?",
                button_save = "Применить",
                combo_key = "",
                combo_template = "",
                edit_cmd = "",
                combo_commode = "",
                combo_language = "",
				checkbox_lockwhenediting = "Закрывать транспорт при редактировании?"
            }
        },
        handlinglog = {
            shortname = "Лог Хэндлинга",
            longname = "Лог недавних изменений в настройках хэндлинга.",
            itemtext = {
                logpane = ""
            }
        },
    },


    handlingPropertyInformation = {
        ["identifier"] = {
            friendlyName = "Идентификатор транспорта",
            information = "Представляет идентификатор транспорта используемый в handling.cfg",
            syntax = { "Слово", "Используйте только допустимые идентификаторы, иначе, экспорт не будет работать." }
        },
        ["mass"] = {
            friendlyName = "Масса",
            information = "Меняет вес транспорта. (килограммы)",
            syntax = { "Переменная", "Не забывайте сначала изменить ходовую массу во избежании подпрыгивания!" }
        },
        ["turnMass"] = {
            friendlyName = "Ходовая масса",
            information = "Используется для расчета эффекта движения.",
            syntax = { "Переменная", "Более высокие значения делают ваш автомобиль легче." }
        },
        ["dragCoeff"] = {
            friendlyName = "Смещение Множителя",
            information = "Меняет сопротивление движению.",
            syntax = { "Переменная", "Чем выше значение, тем меньше значение максимальной скорости." }
        },
        ["centerOfMass"] = {
            friendlyName = "Центр Массы",
            information = "Меняет точки гравитации вашего автомобиля. (метры)",
            syntax = { "Переменная", "Зависит от координат X,Y,Z центров масс." }
        },
        ["centerOfMassX"] = {
            friendlyName = "Центр Массы X",
            information = "Задает передне-занюю дистанцию центра массы. (метры)",
            syntax = { "Переменная", "Высокие значения для переда а низкие значения для зада." }
        },
        ["centerOfMassY"] = {
            friendlyName = "Центр Массы Y",
            information = "Задает лево-правую дистанцию центра массы. (метры)",
            syntax = { "Переменная", "Высокие значения для правой стороны а низкие значения для левой." }
        },
        ["centerOfMassZ"] = {
            friendlyName = "Центр Массы Z",
            information = "Задает высоту центра массы. (метры)",
            syntax = { "Переменная", "Чем выше значение, тем выше расположение точки." }
        },
        ["percentSubmerged"] = {
            friendlyName = "Процент Погружения",
            information = "Меняет глубину, на которой ваш транспорт будет держаться на поверхности воды. (процент)",
            syntax = { "Целое", "Более высокие значения позволят вашему транспорту держаться на повехности воды глубже." }
        },
        ["tractionMultiplier"] = {
            friendlyName = "Множитель Сцепления",
            information = "Меняет коэффицент сцепления между транспортом и поверхностью.",
            syntax = { "Переменная", "Более высокие значения увеличат сцепление между колесами и поверхностью." }
        },
        ["tractionLoss"] = {
            friendlyName = "Убыток Сцепления",
            information = "Меняет коэффицент сцепления между транспортом и поверхностью пока ваш транспорт ускоряется или останавливается.",
            syntax = { "Переменная", "Более высокие значения позволят вашему транспорту поворачивать быстрее." }
        },
        ["tractionBias"] = {
            friendlyName = "Смещение Сцепления",
            information = "Меняет расположения сцепления относительно транспорта.",
            syntax = { "Переменная", "Более высокие значения смещают сцепление ближе к переду транспорта." }
        },
        ["numberOfGears"] = {
            friendlyName = "Количество Передач",
            information = "Меняет максимальное количество передач для вашего транспорта.",
            syntax = { "Целое", "Не влияет на максимальную скорость или ускорение вашего транспорта." }
        },
        ["maxVelocity"] = {
            friendlyName = "Максимальная Скорость",
            information = "Меняет максимальную скорость вашего транспорта. (км/ч)",
            syntax = { "Переменная", "Это значение влияет на другие параметры транспорта." }
        },
        ["engineAcceleration"] = {
            friendlyName = "Ускорение",
            information = "Меняет ускорение вашего транспорта. (MS^2)",
            syntax = { "Переменная", "Более высокие значения увеличивают коэффицент при котором ваш транспорт будет ускоряться." }
        },
        ["engineInertia"] = {
            friendlyName = "Инерция",
            information = "Сглаживает или заостряет кривую ускорения.",
            syntax = { "Переменная", "Более высокие значения сгладят кривую ускорения." }
        },
        ["driveType"] = {
            friendlyName = "Привод Колес",
            information = "Меняет привод колес, которые будут задействованы при вождении.",
            syntax = { "Слово", "Выбрав 'Полный' приведет к легкому и простому вождению транспорта." },
            options = { ["f"]="Передний",["r"]="Задний",["4"]="Полный" }
        },
        ["engineType"] = {
            friendlyName = "Тип Двигателя",
            information = "Меняет тип двигателя вашего транспорта.",
            syntax = { "Слово", "Данный параметр не имеет практического применения и ни на что не влияет." },
            options = { ["p"]="Бензиновый",["d"]="Дизельный",["e"]="Электрический" }
        },
        ["brakeDeceleration"] = {
            friendlyName = "Замедление Тормоза",
            information = "Уменьшает скорость вашего транспорта при торможении. (MS^2)",
            syntax = { "Переменная", "Более высокие значения приведут к тому, что ваш транспорт будет тормозить быстрее." }
        },
        ["brakeBias"] = {
            friendlyName = "Смещение Тормоза",
            information = "Меняет положение тормоза относительно вашего транспорта.",
            syntax = { "Переменная", "Более высокие значения сместят тормоз к переду транспорта." }
        },
        ["ABS"] = {
            friendlyName = "ABS",
            information = "Активирует или деактивирует ABS на вашем транспорте.",
            syntax = { "Слово", "Данный параметр не имеет практического применения и ни на что не влияет." },
            options = { ["true"]="Активировать",["false"]="Деактивировать" }
        },
        ["steeringLock"] = {
            friendlyName = "Угол Поворота",
            information = "Меняет угол, на который ваш транспорт модет поворачивать рулевые колеса.",
            syntax = { "Переменная", "Более низкие значения делают ваш транспорт более неуклюжим." }
        },
        ["suspensionForceLevel"] = {
            friendlyName = "Жесткость Подвески",
            information = "Меняет жесткость подвески.",
            syntax = { "Переменная", "Более низкие значения сильно смягчают подвеску вашего транспорта." }
        },
        ["suspensionDamping"] = {
            friendlyName = "Зависание Подвески",
            information = "Меняет зависание подвески.",
            syntax = { "Переменная", "Данный параметр не имеет практического применения и ни на что не влияет." }
        },
        ["suspensionHighSpeedDamping"] = {
            friendlyName = "Жесткость Подвески",
            information = "Меняет жесткость подвески, позволяя вам двигаться на вашем транспорте быстрее.",
            syntax = { "Переменная", "Более высокие значения увеличивают жесткость подвески на высоких скоростях." }
        },
        ["suspensionUpperLimit"] = {
            friendlyName = "Сход-Развал Подвески",
            information = "Изменяет сход-зазвал вашего транспорта. (метры)",
            syntax = { "Переменная", "Отрицательные значения увеличивают развал вашего транспорта." }
        },
        ["suspensionLowerLimit"] = {
            friendlyName = "Высота Подвески",
            information = "Изменяет высоту подвески вашего транспорта.",
            syntax = { "Переменная", "Более высокие значения уменьшат клиренс вашего транспорта." }
        },
        ["suspensionFrontRearBias"] = {
            friendlyName = "Пропорциональность Подвески",
            information = "Меняет положение опорной силы подвески.",
            syntax = { "Переменная", "Более высокие значения сдвинут подвеску вперед вашего транспорта." }
        },
        ["suspensionAntiDiveMultiplier"] = {
            friendlyName = "Множитель Резкости Подвески",
            information = "Меняет коэффицент который смещает кузов транспорта за счет торможения и ускорения.",
            syntax = { "Переменная", "" }
        },
        ["seatOffsetDistance"] = {
            friendlyName = "Расстояние До Водителя",
            information = "Меняет значение, которое задает расстояние до водителького кресла транспорта. (метры)",
            syntax = { "Переменная", "К примеру, '0.5' подойдет для леворулых автомобилей, а '1.0' для праворулых." }
        },
        ["collisionDamageMultiplier"] = {
            friendlyName = "Множитель Урона",
            information = "Меняет коэффицент, который отвечает за получение транспортом урона.",
            syntax = { "Переменная", "" }
        },
        ["monetary"] = {
            friendlyName = "Денежная Стоимость",
            information = "Меняет стоимость вашего транспорта.",
            syntax = { "Целое", "Этот параметр не используется в MTA." }
        },
        ["modelFlags"] = {
            friendlyName = "Флаг модели",
            information = "Переключаемые специальные анимации транспорта.", -- HERE "where is this shown?"
            syntax = { "Шестнадцатиричное", "" },
            items = {
                {
                    ["1"] = {"IS_VAN","Аниммирует задние двойные двери. (как в фургонах)"},
                    ["2"] = {"IS_BUS","Позволяет транспорту останвливаться на автобусных остановках и забирать пассажиров. (не используется в МТА)"},
                    ["4"] = {"IS_LOW","Позволяет водителям и пассажирам транспорта сидеть ниже и отклониться дальше."},
                    ["8"] = {"IS_BIG","Меняет траекторию, по которой NPC вводят транспорт в повороты."}
                },
                {
                    ["1"] = {"REVERSE_BONNET","Позволяет багажнику транспорта и капоту открываться в противоположном направлении."},
                    ["2"] = {"HANGING_BOOT","Позволяет багажнику транспорта открываться с верхнего конца."},
                    ["4"] = {"TAILGATE_BOOT","Позволяет багажнику транспорта открываться с нижнего конца."},
                    ["8"] = {"NOSWING_BOOT","Позволяет багажнику транспорта не исполнять никаких действий."}
                },
                {
                    ["1"] = {"NO_DOORS","Анимации, вовлекающие открывание и закрывание дверей транспорта, пропускаются."},
                    ["2"] = {"TANDEM_SEATS","Позволяет двум игрокам сидеть на переднем пассажирском сидении в транспорте."},
                    ["4"] = {"SIT_IN_BOAT","Позволяет игрокам использовать анимацию посадки в лодку вместо стоячей."},
                    ["8"] = {"CONVERTIBLE","Изменяет тип посадки и другие мелкие эффекты для рыболовных лодок."}
                },
                {
                    ["1"] = {"NO_EXHAUST","Позволяет отключить все эффекты выхлопных труб транспорта."},
                    ["2"] = {"DBL_EXHAUST","Добавляет вторую выхлопную трубу транспорту симметрично другой."},
                    ["4"] = {"NO1FPS_LOOK_BEHIND","Предотвращает игрока смотреть назад в транспорте, когда он находится в режиме игры от первого лица."},
                    ["8"] = {"FORCE_DOOR_CHECK","Эффект от этого флага неизвестен и нуждается в тестировании."} -- HERE {untested}
                },
                {
                    ["1"] = {"AXLE_F_NOTILT","Позволяет передним колесам транспорта быть вертикальми относительно транспорта (как в GTA 3)."},
                    ["2"] = {"AXLE_F_SOLID","Позволяет передним колесам транспорта быть параллельными относительно друг друга."},
                    ["4"] = {"AXLE_F_MCPHERSON","Позволяет передним колесам транспорта наклоняться (как в GTA Vice City)."},
                    ["8"] = {"AXLE_F_REVERSE","Позволяет передним колесам транспорта наклоняться в противоположную сторону."}
                },
                {
                    ["1"] = {"AXLE_R_NOTILT","Позволяет задним колесам транспорта быть вертикальми относительно транспорта (как в GTA 3)."},
                    ["2"] = {"AXLE_R_SOLID","Позволяет задним колесам транспорта быть параллельными относительно друг друга."},
                    ["4"] = {"AXLE_R_MCPHERSON","Позволяет задним колесам транспорта наклоняться (как в GTA Vice City)."},
                    ["8"] = {"AXLE_R_REVERSE","Позволяет задним колесам транспорта наклоняться в противоположную сторону."}
                },
                {
                    ["1"] = {"IS_BIKE","Используйте дополнительные настройки в разделе 'Мотоциклы'."},
                    ["2"] = {"IS_HELI","Используйте дополнительные настройки в разделе 'Летательные Аппараты'."},
                    ["4"] = {"IS_PLANE","Используйте дополнительные настройки в разделе 'Летательные Аппараты'."},
                    ["8"] = {"IS_BOAT","Используйте дополнительные настройки в разделе 'Лодки'."}
                },
                {
                    ["1"] = {"BOUNCE_PANELS","Эффект от этого флага неизвестен и нуждается в тестировании."}, -- HERE {untested}
                    ["2"] = {"DOUBLE_RWHEELS","Создает второе дополнительное заднее колесо рядом с другим. (итого в сумме сзади 4 колеса)"},
                    ["4"] = {"FORCE_GROUND_CLEARANCE","Эффект от этого флага неизвестен и нуждается в тестировании."}, -- HERE {untested}
                    ["8"] = {"IS_HATCHBACK","Эффект от этого флага неизвестен и нуждается в тестировании."} -- HERE {untested}
                }
            }
        },
        ["handlingFlags"] = {
            friendlyName = "Флаг хэндлинга",
            information = "Специальные функции повышающие эффективность транспорта.",
            syntax = { "Шестнадцатиричное", "" },
            items = {
                {
                    ["1"] = {"1G_BOOST","Позволяет двигателю транспорта иметь больше мощности с момента старта (для лучшего сцепления на горах)."},
                    ["2"] = {"2G_BOOST","Позволяет двигателю транспорт иметь больше мощности на высоких скоростях."},
                    ["4"] = {"NPC_ANTI_ROLL","Отключает вращение кузова, когда транспорт управляется NPC."},
                    ["8"] = {"NPC_NEUTRAL_HANDL","Снижает вероятность вращения кузова, когда транспорт управляется NPC."}
                },
                {
                    ["1"] = {"NO_HANDBRAKE","Отключает эффект ручного тормоза для транспорта."},
                    ["2"] = {"STEER_REARWHEELS","Позволяет транспорту поворачивать задними колесами вместо передних (как на погрузчике)."},
                    ["4"] = {"HB_REARWHEEL_STEER","Позволяет транспорту, зажав пробел, поворачивать и задними колесами и передними (как на монстре)."},
                    ["8"] = {"ALT_STEER_OPT","Эффект от этого флага неизвестен и нуждается в тестировании."} -- HERE {untested}
                },
                {
                    ["1"] = {"WHEEL_F_NARROW2","Делает передние колеса транспорта очень узкими."},
                    ["2"] = {"WHEEL_F_NARROW","Делает передние колеса транспорта узкими."},
                    ["4"] = {"WHEEL_F_WIDE","Делает передние колеса транспорта широкими."},
                    ["8"] = {"WHEEL_F_WIDE2","Делает передние колеса транспорта очень широкими."}
                },
                {
                    ["1"] = {"WHEEL_R_NARROW2","Делает задние колеса транспорта очень узкими."},
                    ["2"] = {"WHEEL_R_NARROW","Делает задние колеса транспорта узкими."},
                    ["4"] = {"WHEEL_R_WIDE","Делает задние колеса транспорта широкими."},
                    ["8"] = {"WHEEL_R_WIDE2","Делает задние колеса транспорта очень широкими."}
                },
                {
                    ["1"] = {"HYDRAULIC_GEOM","Эффект от этого флага неизвестен и нуждается в тестировании."}, -- HERE {untested}
                    ["2"] = {"HYDRAULIC_INST","Позволяет транспорту создаваться с уже предустановленной гидравликой."},
                    ["4"] = {"HYDRAULIC_NONE","Отключает возможность транспорту устанавливать гидравлику."},
                    ["8"] = {"NOS_INST","Позволяет транспорту создаваться с уже предустановленным нитро."}
                },
                {
                    ["1"] = {"OFFROAD_ABILITY","Позволяет транспорту двигаться на сложных поверхностях (как грязь)."},
                    ["2"] = {"OFFROAD_ABILITY2","Позволяет транспорту двигаться на сложных поверхностях (как песок)."},
                    ["4"] = {"HALOGEN_LIGHTS","Делает передние фары транспорта галогеновыми."},
                    ["8"] = {"PROC_REARWHEEL_1ST","Эффект от этого флага неизвестен и нуждается в тестировании."} -- HERE {untested}
                },
                {
                    ["1"] = {"USE_MAXSP_LIMIT","Предотвращает транспорт двигаться быстрее, чем его максимальная скорость."},
                    ["2"] = {"LOW_RIDER","Позволяет транспорту быть тюнингованным в 'Loco Low Co'."},
                    ["4"] = {"STREET_RACER","Позволяет транспорту быть тюнингованым в 'Wheel Arch Angels'."},
                    ["8"] = {"",""}
                },
                {
                    ["1"] = {"SWINGING_CHASSIS","Позволяет двигаться кузову транспорта из стороны в сторону."},
                    ["2"] = {"",""},
                    ["4"] = {"",""},
                    ["8"] = {"",""}
                }
            }
        },
        ["headLight"] = {
            friendlyName = "Передние Фары",
            information = "Меняет тип передних фар вашего транспорта.",
            syntax = { "Целое", "" },
            options = { ["0"]="Длинные",["1"]="Маленькие",["2"]="Большие",["3"]="Вытянутые" }
        },
        ["tailLight"] = {
            friendlyName = "Задние Фары",
            information = "Меняет тип задних фар вашего транспорта.",
            syntax = { "Целое", "" },
            options = { ["0"]="Длинные",["1"]="Маленькие",["2"]="Большие",["3"]="Вытянутые" }
        },
        ["animGroup"] = {
            friendlyName = "Группа Анимаций",
            information = "Меняет группу анимаций для пассажиров транспорта, пока они находятся внутри него.",
            syntax = { "Целое", "" }
        }
    }
}
