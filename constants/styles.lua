local addonName, KeystoneCompanion = ...

local ASSETS_PATH = 'Interface/Addons/' .. addonName .. '/assets/';

local styles = {
  COLORS = {
    BACKGROUND = CreateColorFromHexString("FF131315");
    BORDER = CreateColorFromHexString("FFFF8000");

    TEXT_PRIMARY = CreateColorFromHexString("FFFFFFFF");
    TEXT_SECONDARY = CreateColorFromHexString("FFA1A1A1");
    TEXT_HIGHLIGHT = CreateColorFromHexString("FFFF7C0A"),
  
    GREEN_DARK = CreateColorFromHexString("FF009901");
    GREEN_LIGHT = CreateColorFromHexString("FF02FF03");

    RED_LIGHT = CreateColorFromHexString("FFFF0000");

    YELLOW_LIGHT = CreateColorFromHexString("FFF4ED03")
  },
  FONTS = {
    NORMAL = ASSETS_PATH .. 'fonts/SF-Pro.ttf',
    BOLD = ASSETS_PATH .. 'fonts/Sf-Pro-Display-Semibold.otf',
    HEADING = ASSETS_PATH .. 'fonts/RobotoSlab-Bold.ttf'
  },
  FONT_OBJECTS = {
    NORMAL = addonName .. 'Normal',
    BOLD = addonName .. 'Bold',
    HEADING = addonName .. 'Heading'
  }
}

do
  local font = CreateFont(styles.FONT_OBJECTS.NORMAL)
  font:SetFont(styles.FONTS.NORMAL, 10, "")
  font:SetJustifyH("CENTER")
  font:SetJustifyV("MIDDLE")
  font:SetTextColor(styles.COLORS.TEXT_PRIMARY:GetRGBA())
end
do
  local font = CreateFont(styles.FONT_OBJECTS.BOLD)
  font:SetFont(styles.FONTS.BOLD, 12, "")
  font:SetJustifyH("CENTER")
  font:SetJustifyV("MIDDLE")
  font:SetTextColor(styles.COLORS.TEXT_PRIMARY:GetRGBA())
end
do
  local font = CreateFont(styles.FONT_OBJECTS.HEADING)
  font:SetFont(styles.FONTS.HEADING, 18, "")
  font:SetJustifyH("CENTER")
  font:SetJustifyV("MIDDLE")
  font:SetTextColor(styles.COLORS.TEXT_HIGHLIGHT:GetRGBA())
end


KeystoneCompanion.constants = KeystoneCompanion.constants or {};
KeystoneCompanion.constants.styles = styles;
KeystoneCompanion.constants.ASSETS_PATH = ASSETS_PATH