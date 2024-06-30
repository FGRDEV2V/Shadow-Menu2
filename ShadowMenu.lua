-- Таблица с именами игроков, имеющих доступ к GUI
local whitelist = {
    "Player1",
    "XXXTENTACION122462",
    "crater_robloxq",  -- Добавлен новый игрок в whitelist
    -- Добавьте другие имена игроков сюда
}

-- Функция для проверки, находится ли игрок в whitelist
local function isPlayerWhitelisted(player)
    local playerName = player.Name
    for _, name in ipairs(whitelist) do
        if playerName == name then
            return true
        end
    end
    return false
end

-- Функция для открытия GUI
local function openGUI()
    -- Проверка, разрешено ли игроку доступ
    local player = game.Players.LocalPlayer
    if not isPlayerWhitelisted(player) then
        print("У вас нет доступа к этому GUI.")
        return
    end
    
    -- Создание основного экрана (ScreenGui)
    local gui = Instance.new("ScreenGui")
    gui.Parent = player:WaitForChild("PlayerGui")

    -- Создание фрейма (Frame)
    local frame = Instance.new("Frame")
    frame.Parent = gui
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.1 -- Установленное значение BackgroundTransparency
    frame.Size = UDim2.new(0, 514, 0, 288) -- Размеры {0, 514}, {0, 288}
    frame.AnchorPoint = Vector2.new(0.5, 0) -- Установка точки привязки к верхнему центру
    frame.Position = UDim2.new(0.5, 0, 0, 0) -- Размещение в верхней части экрана

    -- Контейнер для заголовка и кнопки "Close"
    local titleContainer = Instance.new("Frame")
    titleContainer.Parent = frame
    titleContainer.Size = UDim2.new(1, 0, 0, 30) -- Размеры {1, 0}, {0, 30} (ширина 100%, высота 30 пикселей)
    titleContainer.BackgroundColor3 = Color3.fromRGB(44, 44, 44) -- Цвет фона
    titleContainer.BackgroundTransparency = 0.12 -- Установленное значение BackgroundTransparency
    titleContainer.BorderSizePixel = 0 -- Убираем границу

    -- Добавление UICorner с заданным радиусом
    local titleContainerCorner = Instance.new("UICorner")
    titleContainerCorner.Parent = titleContainer
    titleContainerCorner.CornerRadius = UDim.new(0, 5)

    -- Добавление текстовой метки (TextLabel)
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Parent = titleContainer
    titleLabel.Text = "Shadow Menu" -- Замените на желаемое название
    titleLabel.TextColor3 = Color3.fromRGB(220, 220, 220) -- Более темный цвет текста
    titleLabel.BackgroundColor3 = Color3.fromRGB(44, 44, 44) -- Более темный цвет текста
    titleLabel.TextSize = 24
    titleLabel.Size = UDim2.new(1, -40, 1, 0) -- Размеры {1, -40}, {1, 0} (ширина минус ширина кнопки Close, высота 100%)
    titleLabel.Position = UDim2.new(0, 10, 0, 0) -- Отступ слева 10 пикселей
    titleLabel.BackgroundTransparency = 0 -- Установленное значение BackgroundTransparency
    titleLabel.BorderSizePixel = 0 -- Убираем границу

    -- Добавление кнопки "Close"
    local closeButton = Instance.new("TextButton")
    closeButton.Name = "CloseButton"
    closeButton.Parent = titleContainer
    closeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- Более темный цвет фона
    closeButton.Size = UDim2.new(0, 30, 1, 0) -- Размеры {0, 30}, {1, 0} (ширина 30 пикселей, высота 100%)
    closeButton.Position = UDim2.new(1, -30, 0, 0) -- Правый верхний угол с отступом
    closeButton.Text = "X"
    closeButton.Font = Enum.Font.SourceSans
    closeButton.TextSize = 20
    closeButton.TextColor3 = Color3.fromRGB(0, 0, 0)

    -- Добавление UICorner с заданным радиусом кнопки
    local closeButtonCorner = Instance.new("UICorner")
    closeButtonCorner.Parent = closeButton
    closeButtonCorner.CornerRadius = UDim.new(0, 5)

    -- Кнопка "Infinite Yield" в левом верхнем углу
    local iyButton = Instance.new("TextButton")
    iyButton.Name = "InfiniteYieldButton"
    iyButton.Parent = titleContainer
    iyButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- Более темный цвет фона
    iyButton.Size = UDim2.new(0, 200, 0, 35) -- Размеры {0, 200}, {0, 35}
    iyButton.Position = UDim2.new(0, 10, 0, 45) -- Левый верхний угол выше названия
    iyButton.Text = "Infinite Yield"
    iyButton.Font = Enum.Font.SourceSans
    iyButton.TextSize = 14
    iyButton.TextColor3 = Color3.fromRGB(0, 0, 0)

    -- Добавление UICorner с заданным радиусом кнопки Infinite Yield
    local iyButtonCorner = Instance.new("UICorner")
    iyButtonCorner.Parent = iyButton
    iyButtonCorner.CornerRadius = UDim.new(0, 5)

    -- Добавление кнопок "Reset", "Button2", "Button3"
    local resetButton = Instance.new("TextButton")
    resetButton.Name = "ResetButton"
    resetButton.Parent = titleContainer
    resetButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- Более темный цвет фона
    resetButton.Size = UDim2.new(0, 200, 0, 35) -- Размеры {0, 200}, {0, 35}
    resetButton.Position = UDim2.new(0, 10, 0, 90) -- Позиция ниже Infinite Yield
    resetButton.Text = "Reset"
    resetButton.Font = Enum.Font.SourceSans
    resetButton.TextSize = 14
    resetButton.TextColor3 = Color3.fromRGB(0, 0, 0)

    local button2 = Instance.new("TextButton")
    button2.Name = "Button2"
    button2.Parent = titleContainer
    button2.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- Более темный цвет фона
    button2.Size = UDim2.new(0, 200, 0, 35) -- Размеры {0, 200}, {0, 35}
    button2.Position = UDim2.new(0, 10, 0, 135) -- Позиция ниже Reset
    button2.Text = "Button2"
    button2.Font = Enum.Font.SourceSans
    button2.TextSize = 14
    button2.TextColor3 = Color3.fromRGB(0, 0, 0)

    local button3 = Instance.new("TextButton")
    button3.Name = "Button3"
    button3.Parent = titleContainer
    button3.BackgroundColor3 = Color3.fromRGB(70, 70, 70) -- Более темный цвет фона
    button3.Size = UDim2.new(0, 200, 0, 35) -- Размеры {0, 200}, {0, 35}
    button3.Position = UDim2.new(0, 10, 0, 180) -- Позиция ниже Button2
    button3.Text = "Button3"
    button3.Font = Enum.Font.SourceSans
    button3.TextSize = 14
    button3.TextColor3 = Color3.fromRGB(0, 0, 0)

    -- Добавление UICorner для кнопок
    local resetButtonCorner = Instance.new("UICorner")
    resetButtonCorner.Parent = resetButton
    resetButtonCorner.CornerRadius = UDim.new(0, 5)

    local button2Corner = Instance.new("UICorner")
    button2Corner.Parent = button2
    button2Corner.CornerRadius = UDim.new(0, 5)

    local button3Corner = Instance.new("UICorner")
    button3Corner.Parent = button3
    button3Corner.CornerRadius = UDim.new(0, 5)

    -- Добавление ImageLabel для отображения аватара игрока
    local avatarImage = Instance.new("ImageLabel")
    avatarImage.Parent = frame
    avatarImage.BackgroundTransparency = 1
    avatarImage.Size = UDim2.new(0, 50, 0, 50)
    avatarImage.Position = UDim2.new(0, 220, 0, 45) -- Позиция рядом с кнопками
    avatarImage.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?userId=" .. player.UserId .. "&x=100&y=100&format=png"

    -- Функции для перемещения GUI
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    frame.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            update(input)
        end
    end)

    -- Реакция на нажатие кнопки "Close"
    closeButton.MouseButton1Click:Connect(function()
        gui:Destroy()  -- Уничтожение GUI при нажатии кнопки "Close"
    end)

    -- Реакция на нажатие кнопки "Infinite Yield"
    iyButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()  -- Загрузка и выполнение Infinite Yield
    end)

    -- Реакция на нажатие кнопки "Reset"
    resetButton.MouseButton1Click:Connect(function()
        print("Clicked Reset")
        Game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end)

    button2.MouseButton1Click:Connect(function()
        print("Clicked Button2")
        -- Добавьте свой код для кнопки 2 здесь
    end)

    button3.MouseButton1Click:Connect(function()
        print("Clicked Button3")
        -- Добавьте свой код для кнопки 3 здесь
    end)
end

-- Запуск функции открытия GUI (можно запускать из игрового скрипта или команды)
openGUI()
