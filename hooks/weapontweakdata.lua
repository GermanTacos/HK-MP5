Hooks:PostHook( WeaponTweakData, "init", "MP5A3modInit", function(self)

if BeardLib.Utils:FindMod("Old MP5 Animations") then
	self.slap_919.pd2_anims_only = true
	self.slap_919.timers.reload_not_empty = 2.4
	self.slap_919.timers.reload_empty = 3.6
	self.slap_919.use_stance = "slap_919_oldads"
end

if ( self.slap_919 ) then
--- Base stuff ---	
	self:SetupAttachmentPoint("slap_919", {
		name = "a_ns", 
        base_a_obj = "a_ns", 
        position = Vector3( 0, -0.8, -0.2 ), -- -16
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("slap_919", {
		name = "a_fl", 
        base_a_obj = "a_fl", 
        position = Vector3( 0.5, 1, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("slap_919", {
		name = "a_gl", 
        base_a_obj = "a_fl", 
        position = Vector3( -2.88, 27.2, -3.1 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("slap_919", {
		name = "a_o", 
        base_a_obj = "a_o", 
        position = Vector3( 0, 0, 0 ), 
        rotation = Rotation( 0, 0, 0 ) 
	})
	self:SetupAttachmentPoint("slap_919", {
		name = "a_os", 
        base_a_obj = "a_os", 
        position = Vector3( 0, 0, 0 ), 
        rotation = Rotation( 0, 0, 0 )
	})
end

end )