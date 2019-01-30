Hooks:PostHook( WeaponFactoryTweakData, "init", "MP5ModInit", function(self)

	if BeardLib.Utils:FindMod("Old MP5 Animations") then
		self.parts.wpn_fps_smg_slap_919_m_curve_30.unit = "units/mods/weapons/wpn_fps_smg_slap_919_mag_pts/wpn_fps_smg_slap_919_m_curve_30_old"
		self.parts.wpn_fps_smg_slap_919_m_curve_15.unit = "units/mods/weapons/wpn_fps_smg_slap_919_mag_pts/wpn_fps_smg_slap_919_m_curve_15_old"
		self.parts.wpn_fps_smg_slap_919_m_waffle_30.unit = "units/mods/weapons/wpn_fps_smg_slap_919_mag_pts/wpn_fps_smg_slap_919_m_waffle_30_old"
		self.parts.wpn_fps_smg_slap_919_m_waffle_15.unit = "units/mods/weapons/wpn_fps_smg_slap_919_mag_pts/wpn_fps_smg_slap_919_m_waffle_15_old"
		
		self.parts.wpn_fps_smg_slap_10_m_straight_30.unit = "units/mods/weapons/wpn_fps_smg_slap_10_mag_pts/wpn_fps_smg_slap_10_m_straight_30_old"
		self.parts.wpn_fps_smg_slap_40_m_straight_30.unit = "units/mods/weapons/wpn_fps_smg_slap_40_mag_pts/wpn_fps_smg_slap_40_m_straight_30_old"
	
		self.parts.wpn_fps_smg_slap_919_m_curve_30.animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
		self.parts.wpn_fps_smg_slap_919_m_curve_15.animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
		self.parts.wpn_fps_smg_slap_919_m_waffle_30.animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
		self.parts.wpn_fps_smg_slap_919_m_waffle_15.animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
		
		self.slap_919.pd2_anims_only = true
		
		self.slap_919.timers.reload_not_empty = 2.4
		self.slap_919.timers.reload_empty = 3.6
		
	end
	
end )