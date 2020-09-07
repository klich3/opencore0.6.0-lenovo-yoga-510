External (_SB_.PCI0.IGPU, DeviceObj)
Device (_SB.PCI0.IGPU)
{
	Name (_ADR, 0x00020000)
	Method (_DSM, 4, NotSerialized)
	{
		If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
		Return (Package ()
		{
			"framebuffer-con1-pipe", Buffer () { 0x12, 0x00, 0x00, 0x00 },
			"framebuffer-stolenmem", Buffer () { 0x00, 0x00, 0x30, 0x01 },
			"enable-lspcon-support", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			"hda-gfx", Buffer () { "onboard-1" },
			"enable-hdmi20", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			"framebuffer-con0-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			"framebuffer-con1-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			"framebuffer-con2-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			"framebuffer-con2-pipe", Buffer () { 0x12, 0x00, 0x00, 0x00 },
			"device-id", Buffer () { 0x16, 0x19, 0x00, 0x00 },
			"framebuffer-con0-pipe", Buffer () { 0x12, 0x00, 0x00, 0x00 },
			"framebuffer-con2-has-lspcon", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			"framebuffer-con2-preferred-lspcon-mode", Buffer () { 0x01, 0x00, 0x00, 0x00 },
			"framebuffer-con2-type", Buffer () { 0x00, 0x08, 0x00, 0x00 },
			"model", Buffer () { "Intel Skylake GT2 [HD Graphics 520]" },
			"AAPL,ig-platform-id", Buffer () { 0x00, 0x00, 0x1B, 0x19 },
			"framebuffer-unifiedmem", Buffer () { 0x00, 0x00, 0x00, 0x80 },
			"AAPL,slot-name", Buffer () { "Internal@0,2,0" },
			"device_type", Buffer () { "VGA compatible controller" },
			"framebuffer-patch-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
		})
	}
}
External (_SB_.PCI0.HDEF, DeviceObj)
Device (_SB.PCI0.HDEF)
{
	Name (_ADR, 0x001f0003)
	Method (_DSM, 4, NotSerialized)
	{
		If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
		Return (Package ()
		{
			"model", Buffer () { "Sunrise Point-LP HD Audio" },
			"layout-id", Buffer () { 0x03, 0x00, 0x00, 0x00 },
			"hda-gfx", Buffer () { "onboard-1" },
			"AAPL,slot-name", Buffer () { "Internal@0,31,3" },
			"device_type", Buffer () { "Audio device" },
		})
	}
}
