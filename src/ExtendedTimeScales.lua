ExtendedTimeScales = {}

function ExtendedTimeScales.addTimeScale(...)
    table.insert(Platform.gameplay.timeScaleSettings, 1, 0)
    table.insert(Platform.gameplay.timeScaleSettings, 1000)
    table.insert(Platform.gameplay.timeScaleSettings, 2000)
    table.insert(Platform.gameplay.timeScaleSettings, 5000)
    table.insert(Platform.gameplay.timeScaleSettings, 7500)
    table.insert(Platform.gameplay.timeScaleSettings, 10000)
end

BaseMission.onFinishedLoading = Utils.appendedFunction(BaseMission.onFinishedLoading, ExtendedTimeScales.addTimeScale)
