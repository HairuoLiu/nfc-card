// --- 3DREAM Ultimate NFC Keychain Configurator ---
// All-in-One: Dynamic Base, Freely Movable Tabs/Holes, 8 Texts, 2 SVGs, NFC Offsets

/* [1. Main Body Settings] */

// Geometric shape of the keychain
Shape_Type = "Rectangle"; // [Round, Rectangle, Hexagon, Octagon]
// Base Width (X-axis) (mm)
Base_Width = 40; // [20:0.5:100]
// Base Length / Height (Y-axis) (mm)
Base_Length = 40; // [20:0.5:100]
// Total thickness of the keychain (mm)
Total_Thickness = 6; // [2:0.1:15]
// Corner radius (only for Rectangle shape)
Corner_Radius = 3; // [0:0.5:15]
// Base color of the body 
Base_Color = "White"; // [White, Black, Red, Blue, Green, Yellow, Orange, Purple, Gray, Brown, Pink]

/* [2. NFC Cavity Control] */

// Shape of the internal cavity
NFC_Shape = "Round"; // [Round, Square]
// Diameter/Size of the NFC tag (mm)
NFC_Size = 25; // [10:0.5:50]
// Thickness of the NFC tag (mm)
NFC_Thickness = 1.2; // [0.1:0.1:5]
// Move NFC Cavity Left/Right (X)
NFC_X_Offset = 0; // [-30:0.5:30]
// Move NFC Cavity Up/Down (Y)
NFC_Y_Offset = 0; // [-30:0.5:30]
// Roof thickness over the NFC (mm)
Top_Layer_Thickness = 1.0; // [0.4:0.1:3]

/* [3. Attachment & Hole Placement] */

// Attachment style for the ring
Attachment_Type = "Internal_Hole"; // [Internal_Hole, Tab_with_Hole, Oval_Tab, None]
// Base side for the attachment
Attachment_Pos = "Top"; // [Top, Bottom, Left, Right]
// Move Attachment Left/Right from center (X Offset)
Attach_X_Offset = 0; // [-50:0.5:50]
// Move Attachment Up/Down from center (Y Offset)
Attach_Y_Offset = 0; // [-50:0.5:50]
// Protruding tab length (mm)
Tab_Length = 10; // [5:1:25]
// Tab width (mm)
Tab_Width = 15; // [5:1:30]
// Diameter of the hole (mm)
Hole_Dia = 5; // [2:0.5:15]

/* [4. Global Typography Settings] */

// Choose the font style for all texts
Global_Font = "Arial:style=Bold"; // [Arial:style=Bold, Arial:style=Regular, Courier New:style=Bold, Times New Roman:style=Bold, Impact]
// Space between letters
Text_Spacing = 1.0; // [0.5:0.1:3.0]

/* [5. Global Movement (Move Everything)] */

// Shift ALL FRONT elements Left/Right (X)
Global_Front_X = 0; // [-50:0.5:50]
// Shift ALL FRONT elements Up/Down (Y)
Global_Front_Y = 0; // [-50:0.5:50]
// Shift ALL BACK elements Left/Right (X)
Global_Back_X = 0; // [-50:0.5:50]
// Shift ALL BACK elements Up/Down (Y)
Global_Back_Y = 0; // [-50:0.5:50]

/* [6. Front SVG Graphic] */

// @type: file
// @extension: svg
// @label: Upload Front SVG File
Front_SVG = "default.svg";
// Size scale of the Front SVG
FSVG_Scale = 0.15; // [0.01:0.01:5]
// Move Front SVG Left/Right (X)
FSVG_X = 0; // [-50:0.5:50]
// Move Front SVG Up/Down (Y)
FSVG_Y = 0; // [-50:0.5:50]
// Rotate Front SVG (Degrees)
FSVG_Rot = 0; // [0:1:360]
// Engrave Depth (Cut into base, mm)
FSVG_Depth = 0.5; // [0:0.1:3]
// Emboss Height (Extrude out of base, mm)
FSVG_Emboss = 0.5; // [0:0.1:3]
// Color of the Embossed SVG
FSVG_Color = "Black"; // [White, Black, Red, Blue, Green, Yellow, Orange, Purple, Gray, Brown, Pink]

/* [7. Back SVG Graphic] */

// @type: file
// @extension: svg
// @label: Upload Back SVG File
Back_SVG = "default.svg";
// Size scale of the Back SVG
BSVG_Scale = 0.15; // [0.01:0.01:5]
// Move Back SVG Left/Right (X)
BSVG_X = 0; // [-50:0.5:50]
// Move Back SVG Up/Down (Y)
BSVG_Y = 0; // [-50:0.5:50]
// Rotate Back SVG (Degrees)
BSVG_Rot = 0; // [0:1:360]
// Engrave Depth (Cut into base, mm)
BSVG_Depth = 0.5; // [0:0.1:3]
// Emboss Height (Extrude out of base, mm)
BSVG_Emboss = 0.5; // [0:0.1:3]
// Color of the Embossed SVG
BSVG_Color = "Black"; // [White, Black, Red, Blue, Green, Yellow, Orange, Purple, Gray, Brown, Pink]

/* [8. Front Texts] */

// --- TEXT LINE 1 ---
T1_Txt = ""; 
// Move Left/Right (X)
T1_X = 0; // [-50:0.5:50]
// Move Up/Down (Y)
T1_Y = 12; // [-50:0.5:50]
// Text Size
T1_Size = 5; // [1:0.5:20]
// Rotation
T1_Rot = 0; // [0:1:360]
// Engrave Depth (Cut into base)
T1_D = 0.5; // [0:0.1:3]
// Emboss Height (Extrude out)
T1_E = 0.5; // [0:0.1:3]
// Color
T1_Col = "Black"; // [White, Black, Red, Blue, Green, Yellow, Orange, Purple, Gray, Brown, Pink]

// --- TEXT LINE 2 ---
T2_Txt = ""; 
T2_X = 0; // [-50:0.5:50]
T2_Y = 4; // [-50:0.5:50]
T2_Size = 5; // [1:0.5:20]
T2_Rot = 0; // [0:1:360]
T2_D = 0.5; // [0:0.1:3]
T2_E = 0.5; // [0:0.1:3]
T2_Col = "Black"; 

// --- TEXT LINE 3 ---
T3_Txt = ""; 
T3_X = 0; // [-50:0.5:50]
T3_Y = -4; // [-50:0.5:50]
T3_Size = 5; // [1:0.5:20]
T3_Rot = 0; // [0:1:360]
T3_D = 0.5; // [0:0.1:3]
T3_E = 0.5; // [0:0.1:3]
T3_Col = "Black"; 

// --- TEXT LINE 4 ---
T4_Txt = ""; 
T4_X = 0; // [-50:0.5:50]
T4_Y = -12; // [-50:0.5:50]
T4_Size = 5; // [1:0.5:20]
T4_Rot = 0; // [0:1:360]
T4_D = 0.5; // [0:0.1:3]
T4_E = 0.5; // [0:0.1:3]
T4_Col = "Black"; 

/* [9. Back Texts] */

// --- TEXT LINE 5 (Back) ---
T5_Txt = ""; 
T5_X = 0; // [-50:0.5:50]
T5_Y = 12; // [-50:0.5:50]
T5_Size = 5; // [1:0.5:20]
T5_Rot = 0; // [0:1:360]
T5_D = 0.5; // [0:0.1:3]
T5_E = 0.5; // [0:0.1:3]
T5_Col = "Black"; 

// --- TEXT LINE 6 (Back) ---
T6_Txt = ""; 
T6_X = 0; // [-50:0.5:50]
T6_Y = 4; // [-50:0.5:50]
T6_Size = 5; // [1:0.5:20]
T6_Rot = 0; // [0:1:360]
T6_D = 0.5; // [0:0.1:3]
T6_E = 0.5; // [0:0.1:3]
T6_Col = "Black"; 

// --- TEXT LINE 7 (Back) ---
T7_Txt = ""; 
T7_X = 0; // [-50:0.5:50]
T7_Y = -4; // [-50:0.5:50]
T7_Size = 5; // [1:0.5:20]
T7_Rot = 0; // [0:1:360]
T7_D = 0.5; // [0:0.1:3]
T7_E = 0.5; // [0:0.1:3]
T7_Col = "Black"; 

// --- TEXT LINE 8 (Back) ---
T8_Txt = ""; 
T8_X = 0; // [-50:0.5:50]
T8_Y = -12; // [-50:0.5:50]
T8_Size = 5; // [1:0.5:20]
T8_Rot = 0; // [0:1:360]
T8_D = 0.5; // [0:0.1:3]
T8_E = 0.5; // [0:0.1:3]
T8_Col = "Black"; 

/* [Hidden] */
$fn = 100;

// --- Modules ---

module base_shape() {
    color(Base_Color)
    if (Shape_Type == "Round") {
        resize([Base_Width, Base_Length, Total_Thickness])
        cylinder(d=Base_Width, h=Total_Thickness, center=true);
    } else if (Shape_Type == "Rectangle") {
        minkowski() {
            cube([max(0.1, Base_Width - Corner_Radius*2), max(0.1, Base_Length - Corner_Radius*2), Total_Thickness/2], center=true);
            cylinder(r=Corner_Radius, h=Total_Thickness/2, center=true);
        }
    } else if (Shape_Type == "Hexagon") {
        resize([Base_Width, Base_Length, Total_Thickness])
        cylinder(d=Base_Width, h=Total_Thickness, $fn=6, center=true);
    } else if (Shape_Type == "Octagon") {
        resize([Base_Width, Base_Length, Total_Thickness])
        cylinder(d=Base_Width, h=Total_Thickness, $fn=8, center=true);
    }
}

module attachment_shape() {
    color(Base_Color)
    if (Attachment_Type == "Tab_with_Hole" || Attachment_Type == "Oval_Tab") {
        pos_mod = (Attachment_Pos == "Top" || Attachment_Pos == "Right") ? 1 : -1;
        is_vert = (Attachment_Pos == "Top" || Attachment_Pos == "Bottom");
        edge_dist = is_vert ? (Base_Length/2) : (Base_Width/2);
        offset = edge_dist + (Tab_Length/2) - 1;
        
        tx = (is_vert ? 0 : offset * pos_mod) + Attach_X_Offset;
        ty = (is_vert ? offset * pos_mod : 0) + Attach_Y_Offset;
        
        translate([tx, ty, 0])
        if (Attachment_Type == "Oval_Tab") {
            resize([is_vert ? Tab_Width : Tab_Length, is_vert ? Tab_Length : Tab_Width, Total_Thickness])
            cylinder(d=max(Tab_Width, Tab_Length), h=Total_Thickness, center=true);
        } else {
            cube([is_vert ? Tab_Width : Tab_Length, is_vert ? Tab_Length : Tab_Width, Total_Thickness], center=true);
        }
    }
}

module attachment_hole() {
    if (Attachment_Type != "None") {
        pos_mod = (Attachment_Pos == "Top" || Attachment_Pos == "Right") ? 1 : -1;
        is_vert = (Attachment_Pos == "Top" || Attachment_Pos == "Bottom");
        
        edge_dist = is_vert ? (Base_Length/2) : (Base_Width/2);
        dist = (Attachment_Type == "Internal_Hole") 
               ? (edge_dist - Hole_Dia/2 - 2) 
               : (edge_dist + Tab_Length/2 - 1); 
               
        tx = (is_vert ? 0 : dist * pos_mod) + Attach_X_Offset;
        ty = (is_vert ? dist * pos_mod : 0) + Attach_Y_Offset;
        
        translate([tx, ty, 0])
        cylinder(d=Hole_Dia, h=Total_Thickness+2, center=true);
    }
}

module nfc_cavity() {
    z_pos = (Total_Thickness / 2) - Top_Layer_Thickness - (NFC_Thickness / 2);
    translate([NFC_X_Offset, NFC_Y_Offset, z_pos])
    if (NFC_Shape == "Round") cylinder(d=NFC_Size, h=NFC_Thickness + 0.1, center=true);
    else cube([NFC_Size, NFC_Size, NFC_Thickness + 0.1], center=true);
}

module element_cut(type, txt, file, size, x, y, rot, depth, back=false) {
    if (depth > 0 && (type == "svg" || txt != "")) {
        translate([x, y, (Total_Thickness/2) * (back?-1:1)])
        rotate([back?180:0, 0, rot])
        translate([0,0, back?0:-depth])
        linear_extrude(depth+0.1)
        if(type=="text") text(txt, size=size, font=Global_Font, spacing=Text_Spacing, halign="center", valign="center");
        else scale([size,size,1]) import(file, center=true);
    }
}

module element_emboss(type, txt, file, size, x, y, rot, emboss, col, back=false) {
    if (emboss > 0 && (type == "svg" || txt != "")) {
        color(col)
        translate([x, y, (Total_Thickness/2) * (back?-1:1)])
        rotate([back?180:0, 0, rot])
        translate([0,0, back?-emboss:0])
        linear_extrude(emboss)
        if(type=="text") text(txt, size=size, font=Global_Font, spacing=Text_Spacing, halign="center", valign="center");
        else scale([size,size,1]) import(file, center=true);
    }
}

// --- Assembly ---

union() {
    difference() {
        union() {
            base_shape();
            attachment_shape();
        }
        
        attachment_hole();
        nfc_cavity();
        
        translate([Global_Front_X, Global_Front_Y, 0]) {
            element_cut("text", T1_Txt, "", T1_Size, T1_X, T1_Y, T1_Rot, T1_D);
            element_cut("text", T2_Txt, "", T2_Size, T2_X, T2_Y, T2_Rot, T2_D);
            element_cut("text", T3_Txt, "", T3_Size, T3_X, T3_Y, T3_Rot, T3_D);
            element_cut("text", T4_Txt, "", T4_Size, T4_X, T4_Y, T4_Rot, T4_D);
            element_cut("svg", "", Front_SVG, FSVG_Scale, FSVG_X, FSVG_Y, FSVG_Rot, FSVG_Depth);
        }
        
        translate([Global_Back_X, Global_Back_Y, 0]) {
            element_cut("text", T5_Txt, "", T5_Size, T5_X, T5_Y, T5_Rot, T5_D, true);
            element_cut("text", T6_Txt, "", T6_Size, T6_X, T6_Y, T6_Rot, T6_D, true);
            element_cut("text", T7_Txt, "", T7_Size, T7_X, T7_Y, T7_Rot, T7_D, true);
            element_cut("text", T8_Txt, "", T8_Size, T8_X, T8_Y, T8_Rot, T8_D, true);
            element_cut("svg", "", Back_SVG, BSVG_Scale, BSVG_X, BSVG_Y, BSVG_Rot, BSVG_Depth, true);
        }
    }
    
    translate([Global_Front_X, Global_Front_Y, 0]) {
        element_emboss("text", T1_Txt, "", T1_Size, T1_X, T1_Y, T1_Rot, T1_E, T1_Col);
        element_emboss("text", T2_Txt, "", T2_Size, T2_X, T2_Y, T2_Rot, T2_E, T2_Col);
        element_emboss("text", T3_Txt, "", T3_Size, T3_X, T3_Y, T3_Rot, T3_E, T3_Col);
        element_emboss("text", T4_Txt, "", T4_Size, T4_X, T4_Y, T4_Rot, T4_E, T4_Col);
        element_emboss("svg", "", Front_SVG, FSVG_Scale, FSVG_X, FSVG_Y, FSVG_Rot, FSVG_Emboss, FSVG_Color);
    }
    
    translate([Global_Back_X, Global_Back_Y, 0]) {
        element_emboss("text", T5_Txt, "", T5_Size, T5_X, T5_Y, T5_Rot, T5_E, T5_Col, true);
        element_emboss("text", T6_Txt, "", T6_Size, T6_X, T6_Y, T6_Rot, T6_E, T6_Col, true);
        element_emboss("text", T7_Txt, "", T7_Size, T7_X, T7_Y, T7_Rot, T7_E, T7_Col, true);
        element_emboss("text", T8_Txt, "", T8_Size, T8_X, T8_Y, T8_Rot, T8_E, T8_Col, true);
        element_emboss("svg", "", Back_SVG, BSVG_Scale, BSVG_X, BSVG_Y, BSVG_Rot, BSVG_Emboss, BSVG_Color, true);
    }
}