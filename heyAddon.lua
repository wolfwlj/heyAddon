-- message("dsas")
-- local falling = IsFalling();
-- if falling == 1 then
--     DoEmote("HELLO", "none")
-- end
helloChecked = false;
noChecked = false;
giggleChecked = false;
chickenChecked = false;


hooksecurefunc( "JumpOrAscendStart", function()
    -- TargetNearestFriend( [reverse] )
    if helloChecked == true then
        CancelEmote()
        DoEmote("HELLO", unit)
    end
    if noChecked == true then
        CancelEmote()
        DoEmote("NO", unit)
    end
    if giggleChecked == true then
        CancelEmote()
        DoEmote("GIGGLE", unit)
    end
    if chickenChecked == true then
        CancelEmote()
        DoEmote("CHICKEN", unit)
    end
  end );

--CHECK BOX 1
myCheckButton1 = CreateFrame("CheckButton", "myCheckButton1_GlobalName", UIParent, "ChatConfigCheckButtonTemplate");
myCheckButton1:SetPoint("TOPLEFT", 50, -750);
myCheckButton1_GlobalNameText:SetText("Hello emote Button");

myCheckButton1:SetScript("OnClick", 
function()
    if myCheckButton1:GetChecked() then
        helloChecked = true;
    else
        helloChecked = false;
    end
end
);
--CHECK BOX 1

-- --------------------------------------------------------------------------------------------------------------------

--CHECK BOX 2
myCheckButton2 = CreateFrame("CheckButton", "myCheckButton2_GlobalName", UIParent, "ChatConfigCheckButtonTemplate");
myCheckButton2:SetPoint("TOPLEFT", 50, -730);
myCheckButton2_GlobalNameText:SetText("No! emote Button");

myCheckButton2:SetScript("OnClick", 
function()
    if myCheckButton2:GetChecked() then
        noChecked = true;
    else
        noChecked = false;
    end
end
);
--CHECK BOX 2

-- --------------------------------------------------------------------------------------------------------------------

--CHECK BOX 3
myCheckButton3 = CreateFrame("CheckButton", "myCheckButton3_GlobalName", UIParent, "ChatConfigCheckButtonTemplate");
myCheckButton3:SetPoint("TOPLEFT", 50, -710);
myCheckButton3_GlobalNameText:SetText("Giggle emote Button");

myCheckButton3:SetScript("OnClick", 
function()
    if myCheckButton3:GetChecked() then
        giggleChecked = true;
    else
        giggleChecked = false;
    end
end
);
--CHECK BOX 3

-- --------------------------------------------------------------------------------------------------------------------

--CHECK BOX 4
myCheckButton4 = CreateFrame("CheckButton", "myCheckButton4_GlobalName", UIParent, "ChatConfigCheckButtonTemplate");
myCheckButton4:SetPoint("TOPLEFT", 50, -690);
myCheckButton4_GlobalNameText:SetText("Chicken emote Button");

myCheckButton4:SetScript("OnClick", 
function()
    if myCheckButton4:GetChecked() then
        chickenChecked = true;
    else
        chickenChecked = false;
    end
end
);
--CHECK BOX 4

-- --------------------------------------------------------------------------------------------------------------------
