Hooks:PostHook( WeaponFactoryTweakData, "init", "MP5ModInit", function(self)

local vanilla_mp5sight = {
	"wpn_fps_upg_o_specter",
	"wpn_fps_upg_o_aimpoint",
	"wpn_fps_upg_o_aimpoint_2",
	"wpn_fps_upg_o_docter",
	"wpn_fps_upg_o_eotech",
	"wpn_fps_upg_o_t1micro",
	"wpn_fps_upg_o_cmore",
	"wpn_fps_upg_o_acog",
	"wpn_fps_upg_o_cs",
	"wpn_fps_upg_o_eotech_xps",
	"wpn_fps_upg_o_reflex",
	"wpn_fps_upg_o_rx01",
	"wpn_fps_upg_o_rx30",
	"wpn_fps_upg_o_spot"
}
local vanilla_mp5_fl = {
	"wpn_fps_upg_fl_ass_smg_sho_peqbox",
	"wpn_fps_upg_fl_ass_smg_sho_surefire",
	"wpn_fps_upg_fl_ass_peq15",
	"wpn_fps_upg_fl_ass_laser",
	"wpn_fps_upg_fl_ass_utg"
}

--- Gun ---
for id, o_id in pairs(vanilla_mp5sight) do
	self.wpn_fps_smg_slap_919.adds[o_id] = {"wpn_fps_smg_slap_919_sm_claw"}
	self.wpn_fps_smg_slap_40.adds[o_id] = {"wpn_fps_smg_slap_919_sm_claw"}
	self.wpn_fps_smg_slap_10.adds[o_id] = {"wpn_fps_smg_slap_919_sm_claw"}
end
--- CAFCW aka better later then never also holy shit this actually works ---
if attach_tables then
	--[[
	for _, md_id in pairs(attach_tables.Barrel_Extensions) do
		if self.parts[md_id] then
			table.insert(all_akmext, md_id)
		end
	end
	for _, md_id in pairs(attach_tables.Suppressors) do
		if self.parts[md_id] then
			table.insert(all_akmext, md_id)
		end
	end
	]]
	for _, fl_id in pairs(attach_tables.Gadgets) do
		if self.parts[fl_id] then
			table.insert(vanilla_mp5_fl, fl_id)
		end
	end
	--[[
	for _, o_id in pairs(attach_tables.ACOG) do
		if self.parts[o_id] then
			table.insert(vanilla_mp5sight, o_id)
		end
	end
	for _, o_id in pairs(attach_tables.Custom) do
		if self.parts[o_id] then
			table.insert(vanilla_mp5sight, o_id)
		end
	end
	for _, o_id in pairs(attach_tables.Specter) do
		if self.parts[o_id] then
			table.insert(vanilla_mp5sight, o_id)
		end
	end
	]]
end


	if BeardLib.Utils:FindMod("Old MP5 Animations") then
		
		self.wpn_fps_smg_slap_919.animations = nil
	
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
		
	end
	
	for id, fl_id in pairs(vanilla_mp5_fl) do
		self.parts.wpn_fps_smg_slap_919_hg_ris.override[fl_id] = {a_obj="a_fl_ris"}
	end
	
	--- Vanilla sights ---
	for id, o_id in pairs(vanilla_mp5sight) do
		if self.parts[o_id].stance_mod.wpn_fps_smg_mp5 then
			self.parts[o_id].stance_mod.wpn_fps_smg_slap_919 = deep_clone(self.parts[o_id].stance_mod.wpn_fps_smg_mp5)
			self.parts[o_id].stance_mod.wpn_fps_smg_slap_40 = deep_clone(self.parts[o_id].stance_mod.wpn_fps_smg_mp5)
			self.parts[o_id].stance_mod.wpn_fps_smg_slap_10 = deep_clone(self.parts[o_id].stance_mod.wpn_fps_smg_mp5)
		else
			log("[MP5] [ERROR] WHO THE FUCK MESSED WITH SIGHT STANCES THIS TIME!? " .. o_id)
		end
	end
end )