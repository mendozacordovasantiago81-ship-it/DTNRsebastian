-- ollie build: SUITE COMPLETA (Coronas, Pene, Semen, Tetas, Culo)
-- Delta Executor — LocalScript

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

local gui = Instance.new("ScreenGui")
gui.Name = "OllieMemeGui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- ===== PANTALLA DE LOGO =====
local splash = Instance.new("Frame")
splash.Size = UDim2.new(1, 0, 1, 0)
splash.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
splash.BorderSizePixel = 0
splash.Parent = gui

local logoText = Instance.new("TextLabel")
logoText.Size = UDim2.new(1, 0, 0, 50)
logoText.Position = UDim2.new(0, 0, 0.5, -25)
logoText.BackgroundTransparency = 1
logoText.Text = "DTNR SEBASTIÁN EL MEJOR"
logoText.TextColor3 = Color3.fromRGB(255, 215, 0) 
logoText.Font = Enum.Font.GothamBlack
logoText.TextSize = 28
logoText.TextScaled = true
logoText.Parent = splash

logoText.Size = UDim2.new(0, 0, 0, 0)
logoText.Position = UDim2.new(0.5, 0, 0.5, 0)
logoText:TweenSizeAndPosition(
	UDim2.new(1, 0, 0, 50), 
	UDim2.new(0, 0, 0.5, -25), 
	Enum.EasingDirection.Out, 
	Enum.EasingStyle.Back, 
	0.5, 
	true
)
task.wait(2.2)
splash:Destroy()

-- ===== LOGIN =====
local pass = "12345"
local login = Instance.new("Frame")
login.Size = UDim2.new(0, 250, 0, 120)
login.Position = UDim2.new(0.5, -125, 0.5, -60)
login.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
login.BorderSizePixel = 0
login.Parent = gui
Instance.new("UICorner", login).CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "🔒 ollie's build"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.Parent = login

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.8, 0, 0, 35)
box.Position = UDim2.new(0.1, 0, 0.4, 0)
box.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.PlaceholderText = "password..."
box.Text = ""
box.Font = Enum.Font.Gotham
box.TextSize = 14
box.Parent = login
Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0.8, 0, 0, 30)
btn.Position = UDim2.new(0.1, 0, 0.75, 0)
btn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
btn.Text = "ENTRAR"
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.Font = Enum.Font.GothamBold
btn.TextSize = 14
btn.Parent = login
Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

-- ===== BOTÓN FLOTANTE =====
local toggleBtn = Instance.new("TextButton")
toggleBtn.Size = UDim2.new(0, 50, 0, 50)
toggleBtn.Position = UDim2.new(0, 20, 0.5, -25)
toggleBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
toggleBtn.Text = "+"
toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleBtn.Font = Enum.Font.GothamBold
toggleBtn.TextSize = 24
toggleBtn.Visible = false
toggleBtn.Parent = gui
Instance.new("UICorner", toggleBtn).CornerRadius = UDim.new(1, 0)

local draggingToggle, dragStartToggle, startPosToggle
toggleBtn.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingToggle = true
        dragStartToggle = input.Position
        startPosToggle = toggleBtn.Position
    end
end)
toggleBtn.InputChanged:Connect(function(input)
    if draggingToggle and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStartToggle
        toggleBtn.Position = UDim2.new(startPosToggle.X.Scale, startPosToggle.X.Offset + delta.X, startPosToggle.Y.Scale, startPosToggle.Y.Offset + delta.Y)
    end
end)
toggleBtn.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingToggle = false
    end
end)

-- ===== MAIN GUI (MENÚ CON MÁS BOTONES) =====
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 220, 0, 350) -- Más alto pa' meter los botones
main.Position = UDim2.new(0.7, 0, 0.2, 0)
main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
main.BorderSizePixel = 0
main.Visible = false
main.Active = true
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 10)

local top = Instance.new("Frame")
top.Size = UDim2.new(1, 0, 0, 30)
top.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
top.Parent = main
Instance.new("UICorner", top).CornerRadius = UDim.new(0, 10)

local drag = Instance.new("TextLabel")
drag.Size = UDim2.new(1, -40, 1, 0)
drag.BackgroundTransparency = 1
drag.Text = "  ollie's panel"
drag.TextColor3 = Color3.fromRGB(255, 255, 255)
drag.Font = Enum.Font.GothamBold
drag.TextSize = 13
drag.TextXAlignment = Enum.TextXAlignment.Left
drag.Parent = top

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 30, 1, 0)
close.Position = UDim2.new(1, -30, 0, 0)
close.BackgroundTransparency = 1
close.Text = "✕"
close.TextColor3 = Color3.fromRGB(255, 80, 80)
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.Parent = top

-- Helper pa' crear botones rápido
local function makeBtn(txt, yPos, color)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0.8, 0, 0, 35)
    b.Position = UDim2.new(0.1, 0, yPos, 0)
    b.BackgroundColor3 = color
    b.Text = txt
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 14
    b.Parent = main
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 8)
    return b
end

local spawnBtn = makeBtn("🍆 SPAWN PENE", 0.12, Color3.fromRGB(120, 70, 30))
local semenBtn = makeBtn("💦 SEMEN", 0.28, Color3.fromRGB(240, 240, 240))
semenBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
local titsBtn = makeBtn("🍈 TETAS + SEMEN", 0.44, Color3.fromRGB(255, 150, 150))
local assBtn = makeBtn("🍑 CULO", 0.60, Color3.fromRGB(180, 100, 50))
local delBtn = makeBtn("borrar todo", 0.76, Color3.fromRGB(60, 60, 60))

-- ===== DRAG =====
local dragging, dragStart, startPos
top.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = i.Position
        startPos = main.Position
    end
end)
top.InputChanged:Connect(function(i)
    if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
        local delta = i.Position - dragStart
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
top.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then dragging = false end
end)

-- ===== LOGIN LOGIC =====
local logged = false
btn.MouseButton1Click:Connect(function()
    if box.Text == pass then
        login.Visible = false
        toggleBtn.Visible = true
        logged = true
    else
        box.Text = ""
        box.PlaceholderText = "❌ incorrecta"
    end
end)

local panelOpen = false
toggleBtn.MouseButton1Click:Connect(function()
    if not logged then return end
    panelOpen = not panelOpen
    main.Visible = panelOpen
    if panelOpen then
        toggleBtn.Text = "-"
        toggleBtn.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
    else
        toggleBtn.Text = "+"
        toggleBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end
end)

-- ===== SISTEMA DE SPAWN Y SEGUIMIENTO (GLOBAL) =====
local activeObjects = {}
local runService = game:GetService("RunService")

local function createPart(shape, color, size, offset, rot)
    local p = Instance.new("Part")
    p.Shape = shape
    p.Material = Enum.Material.SmoothPlastic
    p.Color = color
    p.Size = size
    p.Anchored = true
    p.CanCollide = false
    p.Parent = workspace
    return p
end

-- ===== SPAWN PENE Y CORONAS =====
local peneObjects = {}
spawnBtn.MouseButton1Click:Connect(function()
    if not logged then return end
    -- Limpiar pene viejo
    for _, v in ipairs(peneObjects) do if v and v.Parent then v:Destroy() end end
    peneObjects = {}

    local character = player.Character
    local hip = character and (character:FindFirstChild("LowerTorso") or character:FindFirstChild("Torso"))
    if not hip then return end

    local colorBase = Color3.fromRGB(91, 64, 45)
    local colorTip = Color3.fromRGB(110, 80, 60)
    local gold = Color3.fromRGB(255, 215, 0)

    -- Pene bajado a la altura real (Y = -0.5)
    local shaft = createPart(Enum.PartType.Cylinder, colorBase, Vector3.new(3.5, 1.2, 1.2))
    local head = createPart(Enum.PartType.Ball, colorTip, Vector3.new(1.3, 1.3, 1.3))
    local ball1 = createPart(Enum.PartType.Ball, colorBase, Vector3.new(1.4, 1.4, 1.4))
    local ball2 = createPart(Enum.PartType.Ball, colorBase, Vector3.new(1.4, 1.4, 1.4))

    table.insert(peneObjects, shaft)
    table.insert(peneObjects, head)
    table.insert(peneObjects, ball1)
    table.insert(peneObjects, ball2)

    -- Coronas de rey (anillos dorados alrededor del tallo)
    local crowns = {}
    for i = 1, 3 do
        local crown = createPart(Enum.PartType.Cylinder, gold, Vector3.new(0.2, 1.4, 1.4))
        table.insert(peneObjects, crown)
        table.insert(crowns, crown)
    end

    local conn
    conn = runService.RenderStepped:Connect(function()
        if not hip or not hip.Parent or not peneObjects[1] or not peneObjects[1].Parent then
            if conn then conn:Disconnect() end
            return
        end
        
        -- Ajuste de posición pa' que salga más abajo (Y = -0.5)
        shaft.CFrame = hip.CFrame * CFrame.new(0, -0.5, -1.8) * CFrame.Angles(0, math.rad(90), 0)
        head.CFrame = hip.CFrame * CFrame.new(0, -0.5, -3.6)
        ball1.CFrame = hip.CFrame * CFrame.new(-0.7, -0.6, -0.4)
        ball2.CFrame = hip.CFrame * CFrame.new(0.7, -0.6, -0.4)

        -- Animar coronas
        for i, c in ipairs(crowns) do
            local zOffset = -0.8 - (i * 0.7)
            c.CFrame = hip.CFrame * CFrame.new(0, -0.5, zOffset) * CFrame.Angles(0, math.rad(90), 0)
        end
    end)
    table.insert(activeObjects, conn)
end)

-- ===== SISTEMA DE SEMEN =====
local semenObjects = {}
local function spawnSemen()
    local character = player.Character
    local hip = character and (character:FindFirstChild("LowerTorso") or character:FindFirstChild("Torso"))
    if not hip then return end
    
    -- Limpiar semen viejo
    for _, v in ipairs(semenObjects) do if v and v.Parent then v:Destroy() end end
    semenObjects = {}

    for i = 1, 15 do
        local drop = createPart(Enum.PartType.Ball, Color3.fromRGB(255, 255, 255), Vector3.new(0.3, 0.3, 0.3))
        local randomX = (math.random() - 0.5) * 3
        local randomY = (math.random() - 0.5) * 2
        local randomZ = -(math.random() * 6 + 2)
        
        local basePos = hip.CFrame * CFrame.new(randomX, randomY, randomZ)
        
        drop.CFrame = basePos
        table.insert(semenObjects, drop)
        
        -- Animación de caída simple
        local startPos = drop.Position
        local endPos = startPos + Vector3.new(0, -5, 0)
        local t = 0
        
        local conn
        conn = runService.RenderStepped:Connect(function(dt)
            if not drop or not drop.Parent then
                if conn then conn:Disconnect() end
                return
            end
            t = t + dt
            drop.Position = startPos:Lerp(endPos, t)
            if t >= 1 then
                drop:Destroy()
                if conn then conn:Disconnect() end
            end
        end)
    end
end

semenBtn.MouseButton1Click:Connect(function()
    if not logged then return end
    spawnSemen()
end)

-- ===== SISTEMA DE TETAS CON SEMEN =====
local tetasObjects = {}
titsBtn.MouseButton1Click:Connect(function()
    if not logged then return end
    for _, v in ipairs(tetasObjects) do if v and v.Parent then v:Destroy() end end
    tetasObjects = {}

    local character = player.Character
    local torso = character and (character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso"))
    if not torso then return end

    local skinColor = Color3.fromRGB(200, 150, 120) -- Color piel promedio
    local semenColor = Color3.fromRGB(255, 255, 255)

    -- Tetas
    local t1 = createPart(Enum.PartType.Ball, skinColor, Vector3.new(1.8, 1.8, 1.8))
    local t2 = createPart(Enum.PartType.Ball, skinColor, Vector3.new(1.8, 1.8, 1.8))
    
    -- Semen en las tetas (bolitas blancas)
    local s1 = createPart(Enum.PartType.Ball, semenColor, Vector3.new(1.0, 1.0, 1.0))
    local s2 = createPart(Enum.PartType.Ball, semenColor, Vector3.new(1.0, 1.0, 1.0))

    table.insert(tetasObjects, t1)
    table.insert(tetasObjects, t2)
    table.insert(tetasObjects, s1)
    table.insert(tetasObjects, s2)

    local conn
    conn = runService.RenderStepped:Connect(function()
        if not torso or not torso.Parent or not t1 or not t1.Parent then
            if conn then conn:Disconnect() end
            return
        end
        t1.CFrame = torso.CFrame * CFrame.new(-1.2, 0.5, -1) 
        t2.CFrame = torso.CFrame * CFrame.new(1.2, 0.5, -1)
        s1.CFrame = torso.CFrame * CFrame.new(-1.2, 0.8, -1.2)
        s2.CFrame = torso.CFrame * CFrame.new(1.2, 0.8, -1.2)
    end)
    table.insert(activeObjects, conn)
end)

-- ===== SISTEMA DE CULO =====
local culoObjects = {}
assBtn.MouseButton1Click:Connect(function()
    if not logged then return end
    for _, v in ipairs(culoObjects) do if v and v.Parent then v:Destroy() end end
    culoObjects = {}

    local character = player.Character
    local hip = character and (character:FindFirstChild("LowerTorso") or character:FindFirstChild("Torso"))
    if not hip then return end

    local skinColor = Color3.fromRGB(200, 150, 120)

    local c1 = createPart(Enum.PartType.Ball, skinColor, Vector3.new(2.2, 2.2, 2.2))
    local c2 = createPart(Enum.PartType.Ball, skinColor, Vector3.new(2.2, 2.2, 2.2))

    table.insert(culoObjects, c1)
    table.insert(culoObjects, c2)

    local conn
    conn = runService.RenderStepped:Connect(function()
        if not hip or not hip.Parent or not c1 or not c1.Parent then
            if conn then conn:Disconnect() end
            return
        end
        -- Pa' atrás del personaje (Z positivo)
        c1.CFrame = hip.CFrame * CFrame.new(-0.8, -0.8, 0.8)
        c2.CFrame = hip.CFrame * CFrame.new(0.8, -0.8, 0.8)
    end)
    table.insert(activeObjects, conn)
end)

-- ===== BORRAR TODO =====
delBtn.MouseButton1Click:Connect(function()
    for _, conn in ipairs(activeObjects) do
        if conn and typeof(conn) == "RBXScriptConnection" then conn:Disconnect() end
    end
    activeObjects = {}
    
    local function clearList(list)
        for _, v in ipairs(list) do if v and v.Parent then v:Destroy() end end
        list = {}
    end
    clearList(peneObjects)
    clearList(semenObjects)
    clearList(tetasObjects)
    clearList(culoObjects)
end)

close.MouseButton1Click:Connect(function()
    panelOpen = false
    main.Visible = false
    toggleBtn.Text = "+"
    toggleBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
end)
