if Config.ox_target then

    local tableModel = {}
    for k,v in pairs(Config.models) do
        tableModel[#tableModel+1] = k
    end

    exports.ox_target:addModel(tableModel,{
        icon = "fa-solid fa-radio",
        label = "Open pmms",
        canInteract  = function (entity,distance)
            if distance < Config.interactRange then
                return true
            end
            return false
        end,
        onSelect = function()
            TriggerEvent("pmms:showControls")
        end
    })
end