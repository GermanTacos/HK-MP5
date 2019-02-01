Hooks:PostHook( PlayerTweakData, "init", "MP5ModStanceTweakData", function(self)

    self.stances.slap_919_oldads = deep_clone(self.stances.new_mp5)
	self.stances.slap_919_oldads.steelsight.shoulders.translation = Vector3(-10.75, -4.715, 3.11)
    self.stances.slap_919_oldads.steelsight.shoulders.rotation = Rotation( -0.05, 0, -0.628 )

end )