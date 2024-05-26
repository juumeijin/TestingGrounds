--[[local crashingDialogTable = {
    "Astarion_Recruitment_56bc2c0c-f02d-ec4c-ea0b-e7ceac19779a",
    "CAMP_AstarionHunger_SCO_Companion_359981f9-d660-96e2-3e94-218e92d5e479",
    "DEN_RaidingParty_Confrontation_9f62049b-025f-c424-debf-c4a133a02da9",
    "PLA_DyingHyena_DeathEvent_3f3088b1-2846-4f64-4a09-00f95004f617",
    "MOO_WallTentacle_Tentacle_b923613f-2680-f288-9b36-9da0cf0b06b2",
    "WYR_VampireSpawns_OM_Astarion_AOM_OOM_bdd29b6e-7dca-2aab-8558-10260f1f5f88",
    "WYR_MerchantsHouse_ThugLeader_Confrontation_35e9d512-a517-e5ba-f967-779ffe153208"
};

---@param dialog DIALOGRESOURCE
---@param instanceID integer
Ext.Osiris.RegisterListener("DialogStarted", 2, "before", function (dialog, instanceID)
    local dialogueName = dialog
    --local instanceIDue = instanceID
    --_P(dialogueName)
    --_P(instanceIDue)
    for _,v in pairs(crashingDialogTable) do
        if v == dialogueName then
            if Osi.HasActiveStatus(Osi.GetHostCharacter(),"UDR_ACTIVE") == 1 then
                --_P('UDR_DIALOG_FIX')
                Osi.ApplyStatus(Osi.GetHostCharacter(),"UDR_DIALOG_FIX",-1,1,Osi.GetHostCharacter())
            end
          break
        end
    end
end)

---@param dialog DIALOGRESOURCE
---@param instanceID integer
Ext.Osiris.RegisterListener("DialogEnded", 2, "after", function (dialog, instanceID)
    --local dialogueName = dialog
    --local instanceIDue = instanceID
    --_P(dialogueName)
    --_P(instanceIDue)
    if Osi.HasActiveStatus(Osi.GetHostCharacter(),"UDR_DIALOG_FIX") == 1 then
        --_P('UDR_ACTIVE')
        Osi.ApplyStatus(Osi.GetHostCharacter(),"UDR_ACTIVE",-1,1,Osi.GetHostCharacter())
    end
end)]]--