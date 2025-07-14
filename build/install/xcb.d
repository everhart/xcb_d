module xcb_d.xcb;

extern (C):

struct xcb_connection_t;

struct xcb_generic_iterator_t
{
    void* data;
    int rem;
    int index;
}

struct xcb_generic_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
}

struct xcb_generic_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint[7] pad;
    uint full_sequence;
}

struct xcb_raw_generic_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint[7] pad;
}

struct xcb_ge_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort event_type;
    ushort pad1;
    uint[5] pad;
    uint full_sequence;
}

struct xcb_generic_error_t
{
    ubyte response_type;
    ubyte error_code;
    ushort sequence;
    uint resource_id;
    ushort minor_code;
    ubyte major_code;
    ubyte pad0;
    uint[5] pad;
    uint full_sequence;
}

struct xcb_void_cookie_t
{
    uint sequence;
}

struct xcb_char2b_t
{
    ubyte byte1;
    ubyte byte2;
}

struct xcb_char2b_iterator_t
{
    xcb_char2b_t* data;
    int rem;
    int index;
}

alias xcb_window_t = uint;

struct xcb_window_iterator_t
{
    xcb_window_t* data;
    int rem;
    int index;
}

alias xcb_pixmap_t = uint;

struct xcb_pixmap_iterator_t
{
    xcb_pixmap_t* data;
    int rem;
    int index;
}

alias xcb_cursor_t = uint;

struct xcb_cursor_iterator_t
{
    xcb_cursor_t* data;
    int rem;
    int index;
}

alias xcb_font_t = uint;

struct xcb_font_iterator_t
{
    xcb_font_t* data;
    int rem;
    int index;
}

alias xcb_gcontext_t = uint;

struct xcb_gcontext_iterator_t
{
    xcb_gcontext_t* data;
    int rem;
    int index;
}

alias xcb_colormap_t = uint;

struct xcb_colormap_iterator_t
{
    xcb_colormap_t* data;
    int rem;
    int index;
}

alias xcb_atom_t = uint;

struct xcb_atom_iterator_t
{
    xcb_atom_t* data;
    int rem;
    int index;
}

alias xcb_drawable_t = uint;

struct xcb_drawable_iterator_t
{
    xcb_drawable_t* data;
    int rem;
    int index;
}

alias xcb_fontable_t = uint;

struct xcb_fontable_iterator_t
{
    xcb_fontable_t* data;
    int rem;
    int index;
}

alias xcb_bool32_t = uint;

struct xcb_bool32_iterator_t
{
    xcb_bool32_t* data;
    int rem;
    int index;
}

alias xcb_visualid_t = uint;

struct xcb_visualid_iterator_t
{
    xcb_visualid_t* data;
    int rem;
    int index;
}

alias xcb_timestamp_t = uint;

struct xcb_timestamp_iterator_t
{
    xcb_timestamp_t* data;
    int rem;
    int index;
}

alias xcb_keysym_t = uint;

struct xcb_keysym_iterator_t
{
    xcb_keysym_t* data;
    int rem;
    int index;
}

alias xcb_keycode_t = ubyte;

struct xcb_keycode_iterator_t
{
    xcb_keycode_t* data;
    int rem;
    int index;
}

alias xcb_keycode32_t = uint;

struct xcb_keycode32_iterator_t
{
    xcb_keycode32_t* data;
    int rem;
    int index;
}

alias xcb_button_t = ubyte;

struct xcb_button_iterator_t
{
    xcb_button_t* data;
    int rem;
    int index;
}

struct xcb_point_t
{
    short x;
    short y;
}

struct xcb_point_iterator_t
{
    xcb_point_t* data;
    int rem;
    int index;
}

struct xcb_rectangle_t
{
    short x;
    short y;
    ushort width;
    ushort height;
}

struct xcb_rectangle_iterator_t
{
    xcb_rectangle_t* data;
    int rem;
    int index;
}

struct xcb_arc_t
{
    short x;
    short y;
    ushort width;
    ushort height;
    short angle1;
    short angle2;
}

struct xcb_arc_iterator_t
{
    xcb_arc_t* data;
    int rem;
    int index;
}

struct xcb_format_t
{
    ubyte depth;
    ubyte bits_per_pixel;
    ubyte scanline_pad;
    ubyte[5] pad0;
}

struct xcb_format_iterator_t
{
    xcb_format_t* data;
    int rem;
    int index;
}

enum xcb_visual_class_t
{
    XCB_VISUAL_CLASS_STATIC_GRAY = 0,
    XCB_VISUAL_CLASS_GRAY_SCALE = 1,
    XCB_VISUAL_CLASS_STATIC_COLOR = 2,
    XCB_VISUAL_CLASS_PSEUDO_COLOR = 3,
    XCB_VISUAL_CLASS_TRUE_COLOR = 4,
    XCB_VISUAL_CLASS_DIRECT_COLOR = 5
}

struct xcb_visualtype_t
{
    xcb_visualid_t visual_id;
    ubyte _class;
    ubyte bits_per_rgb_value;
    ushort colormap_entries;
    uint red_mask;
    uint green_mask;
    uint blue_mask;
    ubyte[4] pad0;
}

struct xcb_visualtype_iterator_t
{
    xcb_visualtype_t* data;
    int rem;
    int index;
}

struct xcb_depth_t
{
    ubyte depth;
    ubyte pad0;
    ushort visuals_len;
    ubyte[4] pad1;
}

struct xcb_depth_iterator_t
{
    xcb_depth_t* data;
    int rem;
    int index;
}

enum xcb_event_mask_t
{
    XCB_EVENT_MASK_NO_EVENT = 0,
    XCB_EVENT_MASK_KEY_PRESS = 1,
    XCB_EVENT_MASK_KEY_RELEASE = 2,
    XCB_EVENT_MASK_BUTTON_PRESS = 4,
    XCB_EVENT_MASK_BUTTON_RELEASE = 8,
    XCB_EVENT_MASK_ENTER_WINDOW = 16,
    XCB_EVENT_MASK_LEAVE_WINDOW = 32,
    XCB_EVENT_MASK_POINTER_MOTION = 64,
    XCB_EVENT_MASK_POINTER_MOTION_HINT = 128,
    XCB_EVENT_MASK_BUTTON_1_MOTION = 256,
    XCB_EVENT_MASK_BUTTON_2_MOTION = 512,
    XCB_EVENT_MASK_BUTTON_3_MOTION = 1024,
    XCB_EVENT_MASK_BUTTON_4_MOTION = 2048,
    XCB_EVENT_MASK_BUTTON_5_MOTION = 4096,
    XCB_EVENT_MASK_BUTTON_MOTION = 8192,
    XCB_EVENT_MASK_KEYMAP_STATE = 16384,
    XCB_EVENT_MASK_EXPOSURE = 32768,
    XCB_EVENT_MASK_VISIBILITY_CHANGE = 65536,
    XCB_EVENT_MASK_STRUCTURE_NOTIFY = 131072,
    XCB_EVENT_MASK_RESIZE_REDIRECT = 262144,
    XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY = 524288,
    XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1048576,
    XCB_EVENT_MASK_FOCUS_CHANGE = 2097152,
    XCB_EVENT_MASK_PROPERTY_CHANGE = 4194304,
    XCB_EVENT_MASK_COLOR_MAP_CHANGE = 8388608,
    XCB_EVENT_MASK_OWNER_GRAB_BUTTON = 16777216
}

enum xcb_backing_store_t
{
    XCB_BACKING_STORE_NOT_USEFUL = 0,
    XCB_BACKING_STORE_WHEN_MAPPED = 1,
    XCB_BACKING_STORE_ALWAYS = 2
}

struct xcb_screen_t
{
    xcb_window_t root;
    xcb_colormap_t default_colormap;
    uint white_pixel;
    uint black_pixel;
    uint current_input_masks;
    ushort width_in_pixels;
    ushort height_in_pixels;
    ushort width_in_millimeters;
    ushort height_in_millimeters;
    ushort min_installed_maps;
    ushort max_installed_maps;
    xcb_visualid_t root_visual;
    ubyte backing_stores;
    ubyte save_unders;
    ubyte root_depth;
    ubyte allowed_depths_len;
}

struct xcb_screen_iterator_t
{
    xcb_screen_t* data;
    int rem;
    int index;
}

struct xcb_setup_request_t
{
    ubyte byte_order;
    ubyte pad0;
    ushort protocol_major_version;
    ushort protocol_minor_version;
    ushort authorization_protocol_name_len;
    ushort authorization_protocol_data_len;
    ubyte[2] pad1;
}

struct xcb_setup_request_iterator_t
{
    xcb_setup_request_t* data;
    int rem;
    int index;
}

struct xcb_setup_failed_t
{
    ubyte status;
    ubyte reason_len;
    ushort protocol_major_version;
    ushort protocol_minor_version;
    ushort length;
}

struct xcb_setup_failed_iterator_t
{
    xcb_setup_failed_t* data;
    int rem;
    int index;
}

struct xcb_setup_authenticate_t
{
    ubyte status;
    ubyte[5] pad0;
    ushort length;
}

struct xcb_setup_authenticate_iterator_t
{
    xcb_setup_authenticate_t* data;
    int rem;
    int index;
}

enum xcb_image_order_t
{
    XCB_IMAGE_ORDER_LSB_FIRST = 0,
    XCB_IMAGE_ORDER_MSB_FIRST = 1
}

struct xcb_setup_t
{
    ubyte status;
    ubyte pad0;
    ushort protocol_major_version;
    ushort protocol_minor_version;
    ushort length;
    uint release_number;
    uint resource_id_base;
    uint resource_id_mask;
    uint motion_buffer_size;
    ushort vendor_len;
    ushort maximum_request_length;
    ubyte roots_len;
    ubyte pixmap_formats_len;
    ubyte image_byte_order;
    ubyte bitmap_format_bit_order;
    ubyte bitmap_format_scanline_unit;
    ubyte bitmap_format_scanline_pad;
    xcb_keycode_t min_keycode;
    xcb_keycode_t max_keycode;
    ubyte[4] pad1;
}

struct xcb_setup_iterator_t
{
    xcb_setup_t* data;
    int rem;
    int index;
}

enum xcb_mod_mask_t
{
    XCB_MOD_MASK_SHIFT = 1,
    XCB_MOD_MASK_LOCK = 2,
    XCB_MOD_MASK_CONTROL = 4,
    XCB_MOD_MASK_1 = 8,
    XCB_MOD_MASK_2 = 16,
    XCB_MOD_MASK_3 = 32,
    XCB_MOD_MASK_4 = 64,
    XCB_MOD_MASK_5 = 128,
    XCB_MOD_MASK_ANY = 32768
}

enum xcb_key_but_mask_t
{
    XCB_KEY_BUT_MASK_SHIFT = 1,
    XCB_KEY_BUT_MASK_LOCK = 2,
    XCB_KEY_BUT_MASK_CONTROL = 4,
    XCB_KEY_BUT_MASK_MOD_1 = 8,
    XCB_KEY_BUT_MASK_MOD_2 = 16,
    XCB_KEY_BUT_MASK_MOD_3 = 32,
    XCB_KEY_BUT_MASK_MOD_4 = 64,
    XCB_KEY_BUT_MASK_MOD_5 = 128,
    XCB_KEY_BUT_MASK_BUTTON_1 = 256,
    XCB_KEY_BUT_MASK_BUTTON_2 = 512,
    XCB_KEY_BUT_MASK_BUTTON_3 = 1024,
    XCB_KEY_BUT_MASK_BUTTON_4 = 2048,
    XCB_KEY_BUT_MASK_BUTTON_5 = 4096
}

enum xcb_window_enum_t
{
    XCB_WINDOW_NONE = 0
}

struct xcb_key_press_event_t
{
    ubyte response_type;
    xcb_keycode_t detail;
    ushort sequence;
    xcb_timestamp_t time;
    xcb_window_t root;
    xcb_window_t event;
    xcb_window_t child;
    short root_x;
    short root_y;
    short event_x;
    short event_y;
    ushort state;
    ubyte same_screen;
    ubyte pad0;
}

alias xcb_key_release_event_t = xcb_key_press_event_t;

enum xcb_button_mask_t
{
    XCB_BUTTON_MASK_1 = 256,
    XCB_BUTTON_MASK_2 = 512,
    XCB_BUTTON_MASK_3 = 1024,
    XCB_BUTTON_MASK_4 = 2048,
    XCB_BUTTON_MASK_5 = 4096,
    XCB_BUTTON_MASK_ANY = 32768
}

struct xcb_button_press_event_t
{
    ubyte response_type;
    xcb_button_t detail;
    ushort sequence;
    xcb_timestamp_t time;
    xcb_window_t root;
    xcb_window_t event;
    xcb_window_t child;
    short root_x;
    short root_y;
    short event_x;
    short event_y;
    ushort state;
    ubyte same_screen;
    ubyte pad0;
}

alias xcb_button_release_event_t = xcb_button_press_event_t;

enum xcb_motion_t
{
    XCB_MOTION_NORMAL = 0,
    XCB_MOTION_HINT = 1
}

struct xcb_motion_notify_event_t
{
    ubyte response_type;
    ubyte detail;
    ushort sequence;
    xcb_timestamp_t time;
    xcb_window_t root;
    xcb_window_t event;
    xcb_window_t child;
    short root_x;
    short root_y;
    short event_x;
    short event_y;
    ushort state;
    ubyte same_screen;
    ubyte pad0;
}

enum xcb_notify_detail_t
{
    XCB_NOTIFY_DETAIL_ANCESTOR = 0,
    XCB_NOTIFY_DETAIL_VIRTUAL = 1,
    XCB_NOTIFY_DETAIL_INFERIOR = 2,
    XCB_NOTIFY_DETAIL_NONLINEAR = 3,
    XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4,
    XCB_NOTIFY_DETAIL_POINTER = 5,
    XCB_NOTIFY_DETAIL_POINTER_ROOT = 6,
    XCB_NOTIFY_DETAIL_NONE = 7
}

enum xcb_notify_mode_t
{
    XCB_NOTIFY_MODE_NORMAL = 0,
    XCB_NOTIFY_MODE_GRAB = 1,
    XCB_NOTIFY_MODE_UNGRAB = 2,
    XCB_NOTIFY_MODE_WHILE_GRABBED = 3
}

struct xcb_enter_notify_event_t
{
    ubyte response_type;
    ubyte detail;
    ushort sequence;
    xcb_timestamp_t time;
    xcb_window_t root;
    xcb_window_t event;
    xcb_window_t child;
    short root_x;
    short root_y;
    short event_x;
    short event_y;
    ushort state;
    ubyte mode;
    ubyte same_screen_focus;
}

alias xcb_leave_notify_event_t = xcb_enter_notify_event_t;

struct xcb_focus_in_event_t
{
    ubyte response_type;
    ubyte detail;
    ushort sequence;
    xcb_window_t event;
    ubyte mode;
    ubyte[3] pad0;
}

alias xcb_focus_out_event_t = xcb_focus_in_event_t;

struct xcb_keymap_notify_event_t
{
    ubyte response_type;
    ubyte[31] keys;
}

struct xcb_expose_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t window;
    ushort x;
    ushort y;
    ushort width;
    ushort height;
    ushort count;
    ubyte[2] pad1;
}

struct xcb_graphics_exposure_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_drawable_t drawable;
    ushort x;
    ushort y;
    ushort width;
    ushort height;
    ushort minor_opcode;
    ushort count;
    ubyte major_opcode;
    ubyte[3] pad1;
}

struct xcb_no_exposure_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_drawable_t drawable;
    ushort minor_opcode;
    ubyte major_opcode;
    ubyte pad1;
}

enum xcb_visibility_t
{
    XCB_VISIBILITY_UNOBSCURED = 0,
    XCB_VISIBILITY_PARTIALLY_OBSCURED = 1,
    XCB_VISIBILITY_FULLY_OBSCURED = 2
}

struct xcb_visibility_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t window;
    ubyte state;
    ubyte[3] pad1;
}

struct xcb_create_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t parent;
    xcb_window_t window;
    short x;
    short y;
    ushort width;
    ushort height;
    ushort border_width;
    ubyte override_redirect;
    ubyte pad1;
}

struct xcb_destroy_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t event;
    xcb_window_t window;
}

struct xcb_unmap_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t event;
    xcb_window_t window;
    ubyte from_configure;
    ubyte[3] pad1;
}

struct xcb_map_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t event;
    xcb_window_t window;
    ubyte override_redirect;
    ubyte[3] pad1;
}

struct xcb_map_request_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t parent;
    xcb_window_t window;
}

struct xcb_reparent_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t event;
    xcb_window_t window;
    xcb_window_t parent;
    short x;
    short y;
    ubyte override_redirect;
    ubyte[3] pad1;
}

struct xcb_configure_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t event;
    xcb_window_t window;
    xcb_window_t above_sibling;
    short x;
    short y;
    ushort width;
    ushort height;
    ushort border_width;
    ubyte override_redirect;
    ubyte pad1;
}

struct xcb_configure_request_event_t
{
    ubyte response_type;
    ubyte stack_mode;
    ushort sequence;
    xcb_window_t parent;
    xcb_window_t window;
    xcb_window_t sibling;
    short x;
    short y;
    ushort width;
    ushort height;
    ushort border_width;
    ushort value_mask;
}

struct xcb_gravity_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t event;
    xcb_window_t window;
    short x;
    short y;
}

struct xcb_resize_request_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t window;
    ushort width;
    ushort height;
}

enum xcb_place_t
{
    XCB_PLACE_ON_TOP = 0,

    XCB_PLACE_ON_BOTTOM = 1
}

struct xcb_circulate_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t event;
    xcb_window_t window;
    ubyte[4] pad1;
    ubyte place;
    ubyte[3] pad2;
}

alias xcb_circulate_request_event_t = xcb_circulate_notify_event_t;

enum xcb_property_t
{
    XCB_PROPERTY_NEW_VALUE = 0,
    XCB_PROPERTY_DELETE = 1
}

struct xcb_property_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t window;
    xcb_atom_t atom;
    xcb_timestamp_t time;
    ubyte state;
    ubyte[3] pad1;
}

struct xcb_selection_clear_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_timestamp_t time;
    xcb_window_t owner;
    xcb_atom_t selection;
}

enum xcb_time_t
{
    XCB_TIME_CURRENT_TIME = 0
}

enum xcb_atom_enum_t
{
    XCB_ATOM_NONE = 0,
    XCB_ATOM_ANY = 0,
    XCB_ATOM_PRIMARY = 1,
    XCB_ATOM_SECONDARY = 2,
    XCB_ATOM_ARC = 3,
    XCB_ATOM_ATOM = 4,
    XCB_ATOM_BITMAP = 5,
    XCB_ATOM_CARDINAL = 6,
    XCB_ATOM_COLORMAP = 7,
    XCB_ATOM_CURSOR = 8,
    XCB_ATOM_CUT_BUFFER0 = 9,
    XCB_ATOM_CUT_BUFFER1 = 10,
    XCB_ATOM_CUT_BUFFER2 = 11,
    XCB_ATOM_CUT_BUFFER3 = 12,
    XCB_ATOM_CUT_BUFFER4 = 13,
    XCB_ATOM_CUT_BUFFER5 = 14,
    XCB_ATOM_CUT_BUFFER6 = 15,
    XCB_ATOM_CUT_BUFFER7 = 16,
    XCB_ATOM_DRAWABLE = 17,
    XCB_ATOM_FONT = 18,
    XCB_ATOM_INTEGER = 19,
    XCB_ATOM_PIXMAP = 20,
    XCB_ATOM_POINT = 21,
    XCB_ATOM_RECTANGLE = 22,
    XCB_ATOM_RESOURCE_MANAGER = 23,
    XCB_ATOM_RGB_COLOR_MAP = 24,
    XCB_ATOM_RGB_BEST_MAP = 25,
    XCB_ATOM_RGB_BLUE_MAP = 26,
    XCB_ATOM_RGB_DEFAULT_MAP = 27,
    XCB_ATOM_RGB_GRAY_MAP = 28,
    XCB_ATOM_RGB_GREEN_MAP = 29,
    XCB_ATOM_RGB_RED_MAP = 30,
    XCB_ATOM_STRING = 31,
    XCB_ATOM_VISUALID = 32,
    XCB_ATOM_WINDOW = 33,
    XCB_ATOM_WM_COMMAND = 34,
    XCB_ATOM_WM_HINTS = 35,
    XCB_ATOM_WM_CLIENT_MACHINE = 36,
    XCB_ATOM_WM_ICON_NAME = 37,
    XCB_ATOM_WM_ICON_SIZE = 38,
    XCB_ATOM_WM_NAME = 39,
    XCB_ATOM_WM_NORMAL_HINTS = 40,
    XCB_ATOM_WM_SIZE_HINTS = 41,
    XCB_ATOM_WM_ZOOM_HINTS = 42,
    XCB_ATOM_MIN_SPACE = 43,
    XCB_ATOM_NORM_SPACE = 44,
    XCB_ATOM_MAX_SPACE = 45,
    XCB_ATOM_END_SPACE = 46,
    XCB_ATOM_SUPERSCRIPT_X = 47,
    XCB_ATOM_SUPERSCRIPT_Y = 48,
    XCB_ATOM_SUBSCRIPT_X = 49,
    XCB_ATOM_SUBSCRIPT_Y = 50,
    XCB_ATOM_UNDERLINE_POSITION = 51,
    XCB_ATOM_UNDERLINE_THICKNESS = 52,
    XCB_ATOM_STRIKEOUT_ASCENT = 53,
    XCB_ATOM_STRIKEOUT_DESCENT = 54,
    XCB_ATOM_ITALIC_ANGLE = 55,
    XCB_ATOM_X_HEIGHT = 56,
    XCB_ATOM_QUAD_WIDTH = 57,
    XCB_ATOM_WEIGHT = 58,
    XCB_ATOM_POINT_SIZE = 59,
    XCB_ATOM_RESOLUTION = 60,
    XCB_ATOM_COPYRIGHT = 61,
    XCB_ATOM_NOTICE = 62,
    XCB_ATOM_FONT_NAME = 63,
    XCB_ATOM_FAMILY_NAME = 64,
    XCB_ATOM_FULL_NAME = 65,
    XCB_ATOM_CAP_HEIGHT = 66,
    XCB_ATOM_WM_CLASS = 67,
    XCB_ATOM_WM_TRANSIENT_FOR = 68
}

struct xcb_selection_request_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_timestamp_t time;
    xcb_window_t owner;
    xcb_window_t requestor;
    xcb_atom_t selection;
    xcb_atom_t target;
    xcb_atom_t property;
}

struct xcb_selection_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_timestamp_t time;
    xcb_window_t requestor;
    xcb_atom_t selection;
    xcb_atom_t target;
    xcb_atom_t property;
}

enum xcb_colormap_state_t
{
    XCB_COLORMAP_STATE_UNINSTALLED = 0,

    XCB_COLORMAP_STATE_INSTALLED = 1
}

enum xcb_colormap_enum_t
{
    XCB_COLORMAP_NONE = 0
}

struct xcb_colormap_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    xcb_window_t window;
    xcb_colormap_t colormap;
    ubyte _new;
    ubyte state;
    ubyte[2] pad1;
}

union xcb_client_message_data_t
{
    ubyte[20] data8;
    ushort[10] data16;
    uint[5] data32;
}

struct xcb_client_message_data_iterator_t
{
    xcb_client_message_data_t* data;
    int rem;
    int index;
}

struct xcb_client_message_event_t
{
    ubyte response_type;
    ubyte format;
    ushort sequence;
    xcb_window_t window;
    xcb_atom_t type;
    xcb_client_message_data_t data;
}

enum xcb_mapping_t
{
    XCB_MAPPING_MODIFIER = 0,
    XCB_MAPPING_KEYBOARD = 1,
    XCB_MAPPING_POINTER = 2
}

struct xcb_mapping_notify_event_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    ubyte request;
    xcb_keycode_t first_keycode;
    ubyte count;
    ubyte pad1;
}

struct xcb_ge_generic_event_t
{
    ubyte response_type;
    ubyte extension;
    ushort sequence;
    uint length;
    ushort event_type;
    ubyte[22] pad0;
    uint full_sequence;
}

struct xcb_request_error_t
{
    ubyte response_type;
    ubyte error_code;
    ushort sequence;
    uint bad_value;
    ushort minor_opcode;
    ubyte major_opcode;
    ubyte pad0;
}

struct xcb_value_error_t
{
    ubyte response_type;
    ubyte error_code;
    ushort sequence;
    uint bad_value;
    ushort minor_opcode;
    ubyte major_opcode;
    ubyte pad0;
}

alias xcb_window_error_t = xcb_value_error_t;

alias xcb_pixmap_error_t = xcb_value_error_t;

alias xcb_atom_error_t = xcb_value_error_t;

alias xcb_cursor_error_t = xcb_value_error_t;

alias xcb_font_error_t = xcb_value_error_t;

alias xcb_match_error_t = xcb_request_error_t;

alias xcb_drawable_error_t = xcb_value_error_t;

alias xcb_access_error_t = xcb_request_error_t;

alias xcb_alloc_error_t = xcb_request_error_t;

alias xcb_colormap_error_t = xcb_value_error_t;

alias xcb_g_context_error_t = xcb_value_error_t;

alias xcb_id_choice_error_t = xcb_value_error_t;

alias xcb_name_error_t = xcb_request_error_t;

alias xcb_length_error_t = xcb_request_error_t;

alias xcb_implementation_error_t = xcb_request_error_t;

enum xcb_window_class_t
{
    XCB_WINDOW_CLASS_COPY_FROM_PARENT = 0,
    XCB_WINDOW_CLASS_INPUT_OUTPUT = 1,
    XCB_WINDOW_CLASS_INPUT_ONLY = 2
}

enum xcb_cw_t
{
    XCB_CW_BACK_PIXMAP = 1,

    XCB_CW_BACK_PIXEL = 2,

    XCB_CW_BORDER_PIXMAP = 4,

    XCB_CW_BORDER_PIXEL = 8,

    XCB_CW_BIT_GRAVITY = 16,

    XCB_CW_WIN_GRAVITY = 32,

    XCB_CW_BACKING_STORE = 64,

    XCB_CW_BACKING_PLANES = 128,

    XCB_CW_BACKING_PIXEL = 256,

    XCB_CW_OVERRIDE_REDIRECT = 512,

    XCB_CW_SAVE_UNDER = 1024,

    XCB_CW_EVENT_MASK = 2048,

    XCB_CW_DONT_PROPAGATE = 4096,

    XCB_CW_COLORMAP = 8192,

    XCB_CW_CURSOR = 16384
}

enum xcb_back_pixmap_t
{
    XCB_BACK_PIXMAP_NONE = 0,
    XCB_BACK_PIXMAP_PARENT_RELATIVE = 1
}

enum xcb_gravity_t
{
    XCB_GRAVITY_BIT_FORGET = 0,
    XCB_GRAVITY_WIN_UNMAP = 0,
    XCB_GRAVITY_NORTH_WEST = 1,
    XCB_GRAVITY_NORTH = 2,
    XCB_GRAVITY_NORTH_EAST = 3,
    XCB_GRAVITY_WEST = 4,
    XCB_GRAVITY_CENTER = 5,
    XCB_GRAVITY_EAST = 6,
    XCB_GRAVITY_SOUTH_WEST = 7,
    XCB_GRAVITY_SOUTH = 8,
    XCB_GRAVITY_SOUTH_EAST = 9,
    XCB_GRAVITY_STATIC = 10
}

struct xcb_create_window_value_list_t
{
    xcb_pixmap_t background_pixmap;
    uint background_pixel;
    xcb_pixmap_t border_pixmap;
    uint border_pixel;
    uint bit_gravity;
    uint win_gravity;
    uint backing_store;
    uint backing_planes;
    uint backing_pixel;
    xcb_bool32_t override_redirect;
    xcb_bool32_t save_under;
    uint event_mask;
    uint do_not_propogate_mask;
    xcb_colormap_t colormap;
    xcb_cursor_t cursor;
}

struct xcb_create_window_request_t
{
    ubyte major_opcode;
    ubyte depth;
    ushort length;
    xcb_window_t wid;
    xcb_window_t parent;
    short x;
    short y;
    ushort width;
    ushort height;
    ushort border_width;
    ushort _class;
    xcb_visualid_t visual;
    uint value_mask;
}

struct xcb_change_window_attributes_value_list_t
{
    xcb_pixmap_t background_pixmap;
    uint background_pixel;
    xcb_pixmap_t border_pixmap;
    uint border_pixel;
    uint bit_gravity;
    uint win_gravity;
    uint backing_store;
    uint backing_planes;
    uint backing_pixel;
    xcb_bool32_t override_redirect;
    xcb_bool32_t save_under;
    uint event_mask;
    uint do_not_propogate_mask;
    xcb_colormap_t colormap;
    xcb_cursor_t cursor;
}

struct xcb_change_window_attributes_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
    uint value_mask;
}

enum xcb_map_state_t
{
    XCB_MAP_STATE_UNMAPPED = 0,
    XCB_MAP_STATE_UNVIEWABLE = 1,
    XCB_MAP_STATE_VIEWABLE = 2
}

struct xcb_get_window_attributes_cookie_t
{
    uint sequence;
}

struct xcb_get_window_attributes_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_get_window_attributes_reply_t
{
    ubyte response_type;
    ubyte backing_store;
    ushort sequence;
    uint length;
    xcb_visualid_t visual;
    ushort _class;
    ubyte bit_gravity;
    ubyte win_gravity;
    uint backing_planes;
    uint backing_pixel;
    ubyte save_under;
    ubyte map_is_installed;
    ubyte map_state;
    ubyte override_redirect;
    xcb_colormap_t colormap;
    uint all_event_masks;
    uint your_event_mask;
    ushort do_not_propagate_mask;
    ubyte[2] pad0;
}

struct xcb_destroy_window_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_destroy_subwindows_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

enum xcb_set_mode_t
{
    XCB_SET_MODE_INSERT = 0,
    XCB_SET_MODE_DELETE = 1
}

struct xcb_change_save_set_request_t
{
    ubyte major_opcode;
    ubyte mode;
    ushort length;
    xcb_window_t window;
}

struct xcb_reparent_window_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
    xcb_window_t parent;
    short x;
    short y;
}

struct xcb_map_window_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_map_subwindows_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_unmap_window_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_unmap_subwindows_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

enum xcb_config_window_t
{
    XCB_CONFIG_WINDOW_X = 1,
    XCB_CONFIG_WINDOW_Y = 2,
    XCB_CONFIG_WINDOW_WIDTH = 4,
    XCB_CONFIG_WINDOW_HEIGHT = 8,
    XCB_CONFIG_WINDOW_BORDER_WIDTH = 16,
    XCB_CONFIG_WINDOW_SIBLING = 32,
    XCB_CONFIG_WINDOW_STACK_MODE = 64
}

enum xcb_stack_mode_t
{
    XCB_STACK_MODE_ABOVE = 0,
    XCB_STACK_MODE_BELOW = 1,
    XCB_STACK_MODE_TOP_IF = 2,
    XCB_STACK_MODE_BOTTOM_IF = 3,
    XCB_STACK_MODE_OPPOSITE = 4
}

struct xcb_configure_window_value_list_t
{
    int x;
    int y;
    uint width;
    uint height;
    uint border_width;
    xcb_window_t sibling;
    uint stack_mode;
}

struct xcb_configure_window_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
    ushort value_mask;
    ubyte[2] pad1;
}

enum xcb_circulate_t
{
    XCB_CIRCULATE_RAISE_LOWEST = 0,
    XCB_CIRCULATE_LOWER_HIGHEST = 1
}

struct xcb_circulate_window_request_t
{
    ubyte major_opcode;
    ubyte direction;
    ushort length;
    xcb_window_t window;
}

struct xcb_get_geometry_cookie_t
{
    uint sequence;
}

struct xcb_get_geometry_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
}

struct xcb_get_geometry_reply_t
{
    ubyte response_type;
    ubyte depth;
    ushort sequence;
    uint length;
    xcb_window_t root;
    short x;
    short y;
    ushort width;
    ushort height;
    ushort border_width;
    ubyte[2] pad0;
}

struct xcb_query_tree_cookie_t
{
    uint sequence;
}

struct xcb_query_tree_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_query_tree_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    xcb_window_t root;
    xcb_window_t parent;
    ushort children_len;
    ubyte[14] pad1;
}

struct xcb_intern_atom_cookie_t
{
    uint sequence;
}

struct xcb_intern_atom_request_t
{
    ubyte major_opcode;
    ubyte only_if_exists;
    ushort length;
    ushort name_len;
    ubyte[2] pad0;
}

struct xcb_intern_atom_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    xcb_atom_t atom;
}

struct xcb_get_atom_name_cookie_t
{
    uint sequence;
}

struct xcb_get_atom_name_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_atom_t atom;
}

struct xcb_get_atom_name_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort name_len;
    ubyte[22] pad1;
}

enum xcb_prop_mode_t
{
    XCB_PROP_MODE_REPLACE = 0,

    XCB_PROP_MODE_PREPEND = 1,

    XCB_PROP_MODE_APPEND = 2
}

struct xcb_change_property_request_t
{
    ubyte major_opcode;
    ubyte mode;
    ushort length;
    xcb_window_t window;
    xcb_atom_t property;
    xcb_atom_t type;
    ubyte format;
    ubyte[3] pad0;
    uint data_len;
}

struct xcb_delete_property_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
    xcb_atom_t property;
}

enum xcb_get_property_type_t
{
    XCB_GET_PROPERTY_TYPE_ANY = 0
}

struct xcb_get_property_cookie_t
{
    uint sequence;
}

struct xcb_get_property_request_t
{
    ubyte major_opcode;
    ubyte _delete;
    ushort length;
    xcb_window_t window;
    xcb_atom_t property;
    xcb_atom_t type;
    uint long_offset;
    uint long_length;
}

struct xcb_get_property_reply_t
{
    ubyte response_type;
    ubyte format;
    ushort sequence;
    uint length;
    xcb_atom_t type;
    uint bytes_after;
    uint value_len;
    ubyte[12] pad0;
}

struct xcb_list_properties_cookie_t
{
    uint sequence;
}

struct xcb_list_properties_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_list_properties_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort atoms_len;
    ubyte[22] pad1;
}

struct xcb_set_selection_owner_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t owner;
    xcb_atom_t selection;
    xcb_timestamp_t time;
}

struct xcb_get_selection_owner_cookie_t
{
    uint sequence;
}

struct xcb_get_selection_owner_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_atom_t selection;
}

struct xcb_get_selection_owner_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    xcb_window_t owner;
}

struct xcb_convert_selection_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t requestor;
    xcb_atom_t selection;
    xcb_atom_t target;
    xcb_atom_t property;
    xcb_timestamp_t time;
}

enum xcb_send_event_dest_t
{
    XCB_SEND_EVENT_DEST_POINTER_WINDOW = 0,
    XCB_SEND_EVENT_DEST_ITEM_FOCUS = 1
}

struct xcb_send_event_request_t
{
    ubyte major_opcode;
    ubyte propagate;
    ushort length;
    xcb_window_t destination;
    uint event_mask;
    char[32] event;
}

enum xcb_grab_mode_t
{
    XCB_GRAB_MODE_SYNC = 0,

    XCB_GRAB_MODE_ASYNC = 1
}

enum xcb_grab_status_t
{
    XCB_GRAB_STATUS_SUCCESS = 0,
    XCB_GRAB_STATUS_ALREADY_GRABBED = 1,
    XCB_GRAB_STATUS_INVALID_TIME = 2,
    XCB_GRAB_STATUS_NOT_VIEWABLE = 3,
    XCB_GRAB_STATUS_FROZEN = 4
}

enum xcb_cursor_enum_t
{
    XCB_CURSOR_NONE = 0
}

struct xcb_grab_pointer_cookie_t
{
    uint sequence;
}

struct xcb_grab_pointer_request_t
{
    ubyte major_opcode;
    ubyte owner_events;
    ushort length;
    xcb_window_t grab_window;
    ushort event_mask;
    ubyte pointer_mode;
    ubyte keyboard_mode;
    xcb_window_t confine_to;
    xcb_cursor_t cursor;
    xcb_timestamp_t time;
}

struct xcb_grab_pointer_reply_t
{
    ubyte response_type;
    ubyte status;
    ushort sequence;
    uint length;
}

struct xcb_ungrab_pointer_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_timestamp_t time;
}

enum xcb_button_index_t
{
    XCB_BUTTON_INDEX_ANY = 0,

    XCB_BUTTON_INDEX_1 = 1,

    XCB_BUTTON_INDEX_2 = 2,

    XCB_BUTTON_INDEX_3 = 3,

    XCB_BUTTON_INDEX_4 = 4,

    XCB_BUTTON_INDEX_5 = 5
}

struct xcb_grab_button_request_t
{
    ubyte major_opcode;
    ubyte owner_events;
    ushort length;
    xcb_window_t grab_window;
    ushort event_mask;
    ubyte pointer_mode;
    ubyte keyboard_mode;
    xcb_window_t confine_to;
    xcb_cursor_t cursor;
    ubyte button;
    ubyte pad0;
    ushort modifiers;
}

struct xcb_ungrab_button_request_t
{
    ubyte major_opcode;
    ubyte button;
    ushort length;
    xcb_window_t grab_window;
    ushort modifiers;
    ubyte[2] pad0;
}

struct xcb_change_active_pointer_grab_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_cursor_t cursor;
    xcb_timestamp_t time;
    ushort event_mask;
    ubyte[2] pad1;
}

struct xcb_grab_keyboard_cookie_t
{
    uint sequence;
}

struct xcb_grab_keyboard_request_t
{
    ubyte major_opcode;
    ubyte owner_events;
    ushort length;
    xcb_window_t grab_window;
    xcb_timestamp_t time;
    ubyte pointer_mode;
    ubyte keyboard_mode;
    ubyte[2] pad0;
}

struct xcb_grab_keyboard_reply_t
{
    ubyte response_type;
    ubyte status;
    ushort sequence;
    uint length;
}

struct xcb_ungrab_keyboard_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_timestamp_t time;
}

enum xcb_grab_t
{
    XCB_GRAB_ANY = 0
}

struct xcb_grab_key_request_t
{
    ubyte major_opcode;
    ubyte owner_events;
    ushort length;
    xcb_window_t grab_window;
    ushort modifiers;
    xcb_keycode_t key;
    ubyte pointer_mode;
    ubyte keyboard_mode;
    ubyte[3] pad0;
}

struct xcb_ungrab_key_request_t
{
    ubyte major_opcode;
    xcb_keycode_t key;
    ushort length;
    xcb_window_t grab_window;
    ushort modifiers;
    ubyte[2] pad0;
}

enum xcb_allow_t
{
    XCB_ALLOW_ASYNC_POINTER = 0,

    XCB_ALLOW_SYNC_POINTER = 1,

    XCB_ALLOW_REPLAY_POINTER = 2,

    XCB_ALLOW_ASYNC_KEYBOARD = 3,

    XCB_ALLOW_SYNC_KEYBOARD = 4,

    XCB_ALLOW_REPLAY_KEYBOARD = 5,

    XCB_ALLOW_ASYNC_BOTH = 6,

    XCB_ALLOW_SYNC_BOTH = 7
}

struct xcb_allow_events_request_t
{
    ubyte major_opcode;
    ubyte mode;
    ushort length;
    xcb_timestamp_t time;
}

struct xcb_grab_server_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_ungrab_server_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_query_pointer_cookie_t
{
    uint sequence;
}

struct xcb_query_pointer_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_query_pointer_reply_t
{
    ubyte response_type;
    ubyte same_screen;
    ushort sequence;
    uint length;
    xcb_window_t root;
    xcb_window_t child;
    short root_x;
    short root_y;
    short win_x;
    short win_y;
    ushort mask;
    ubyte[2] pad0;
}

struct xcb_timecoord_t
{
    xcb_timestamp_t time;
    short x;
    short y;
}

struct xcb_timecoord_iterator_t
{
    xcb_timecoord_t* data;
    int rem;
    int index;
}

struct xcb_get_motion_events_cookie_t
{
    uint sequence;
}

struct xcb_get_motion_events_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
    xcb_timestamp_t start;
    xcb_timestamp_t stop;
}

struct xcb_get_motion_events_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    uint events_len;
    ubyte[20] pad1;
}

struct xcb_translate_coordinates_cookie_t
{
    uint sequence;
}

struct xcb_translate_coordinates_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t src_window;
    xcb_window_t dst_window;
    short src_x;
    short src_y;
}

struct xcb_translate_coordinates_reply_t
{
    ubyte response_type;
    ubyte same_screen;
    ushort sequence;
    uint length;
    xcb_window_t child;
    short dst_x;
    short dst_y;
}

struct xcb_warp_pointer_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t src_window;
    xcb_window_t dst_window;
    short src_x;
    short src_y;
    ushort src_width;
    ushort src_height;
    short dst_x;
    short dst_y;
}

enum xcb_input_focus_t
{
    XCB_INPUT_FOCUS_NONE = 0,

    XCB_INPUT_FOCUS_POINTER_ROOT = 1,

    XCB_INPUT_FOCUS_PARENT = 2,

    XCB_INPUT_FOCUS_FOLLOW_KEYBOARD = 3
}

struct xcb_set_input_focus_request_t
{
    ubyte major_opcode;
    ubyte revert_to;
    ushort length;
    xcb_window_t focus;
    xcb_timestamp_t time;
}

struct xcb_get_input_focus_cookie_t
{
    uint sequence;
}

struct xcb_get_input_focus_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_get_input_focus_reply_t
{
    ubyte response_type;
    ubyte revert_to;
    ushort sequence;
    uint length;
    xcb_window_t focus;
}

struct xcb_query_keymap_cookie_t
{
    uint sequence;
}

struct xcb_query_keymap_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_query_keymap_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ubyte[32] keys;
}

struct xcb_open_font_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_font_t fid;
    ushort name_len;
    ubyte[2] pad1;
}

struct xcb_close_font_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_font_t font;
}

enum xcb_font_draw_t
{
    XCB_FONT_DRAW_LEFT_TO_RIGHT = 0,
    XCB_FONT_DRAW_RIGHT_TO_LEFT = 1
}

struct xcb_fontprop_t
{
    xcb_atom_t name;
    uint value;
}

struct xcb_fontprop_iterator_t
{
    xcb_fontprop_t* data;
    int rem;
    int index;
}

struct xcb_charinfo_t
{
    short left_side_bearing;
    short right_side_bearing;
    short character_width;
    short ascent;
    short descent;
    ushort attributes;
}

struct xcb_charinfo_iterator_t
{
    xcb_charinfo_t* data;
    int rem;
    int index;
}

struct xcb_query_font_cookie_t
{
    uint sequence;
}

struct xcb_query_font_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_fontable_t font;
}

struct xcb_query_font_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    xcb_charinfo_t min_bounds;
    ubyte[4] pad1;
    xcb_charinfo_t max_bounds;
    ubyte[4] pad2;
    ushort min_char_or_byte2;
    ushort max_char_or_byte2;
    ushort default_char;
    ushort properties_len;
    ubyte draw_direction;
    ubyte min_byte1;
    ubyte max_byte1;
    ubyte all_chars_exist;
    short font_ascent;
    short font_descent;
    uint char_infos_len;
}

struct xcb_query_text_extents_cookie_t
{
    uint sequence;
}

struct xcb_query_text_extents_request_t
{
    ubyte major_opcode;
    ubyte odd_length;
    ushort length;
    xcb_fontable_t font;
}

struct xcb_query_text_extents_reply_t
{
    ubyte response_type;
    ubyte draw_direction;
    ushort sequence;
    uint length;
    short font_ascent;
    short font_descent;
    short overall_ascent;
    short overall_descent;
    int overall_width;
    int overall_left;
    int overall_right;
}

struct xcb_str_t
{
    ubyte name_len;
}

struct xcb_str_iterator_t
{
    xcb_str_t* data;
    int rem;
    int index;
}

struct xcb_list_fonts_cookie_t
{
    uint sequence;
}

struct xcb_list_fonts_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    ushort max_names;
    ushort pattern_len;
}

struct xcb_list_fonts_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort names_len;
    ubyte[22] pad1;
}

struct xcb_list_fonts_with_info_cookie_t
{
    uint sequence;
}

struct xcb_list_fonts_with_info_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    ushort max_names;
    ushort pattern_len;
}

struct xcb_list_fonts_with_info_reply_t
{
    ubyte response_type;
    ubyte name_len;
    ushort sequence;
    uint length;
    xcb_charinfo_t min_bounds;
    ubyte[4] pad0;
    xcb_charinfo_t max_bounds;
    ubyte[4] pad1;
    ushort min_char_or_byte2;
    ushort max_char_or_byte2;
    ushort default_char;
    ushort properties_len;
    ubyte draw_direction;
    ubyte min_byte1;
    ubyte max_byte1;
    ubyte all_chars_exist;
    short font_ascent;
    short font_descent;
    uint replies_hint;
}

struct xcb_set_font_path_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    ushort font_qty;
    ubyte[2] pad1;
}

struct xcb_get_font_path_cookie_t
{
    uint sequence;
}

struct xcb_get_font_path_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_get_font_path_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort path_len;
    ubyte[22] pad1;
}

struct xcb_create_pixmap_request_t
{
    ubyte major_opcode;
    ubyte depth;
    ushort length;
    xcb_pixmap_t pid;
    xcb_drawable_t drawable;
    ushort width;
    ushort height;
}

struct xcb_free_pixmap_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_pixmap_t pixmap;
}

enum xcb_gc_t
{
    XCB_GC_FUNCTION = 1,

    XCB_GC_PLANE_MASK = 2,

    XCB_GC_FOREGROUND = 4,

    XCB_GC_BACKGROUND = 8,

    XCB_GC_LINE_WIDTH = 16,

    XCB_GC_LINE_STYLE = 32,

    XCB_GC_CAP_STYLE = 64,

    XCB_GC_JOIN_STYLE = 128,

    XCB_GC_FILL_STYLE = 256,

    XCB_GC_FILL_RULE = 512,

    XCB_GC_TILE = 1024,

    XCB_GC_STIPPLE = 2048,

    XCB_GC_TILE_STIPPLE_ORIGIN_X = 4096,

    XCB_GC_TILE_STIPPLE_ORIGIN_Y = 8192,

    XCB_GC_FONT = 16384,

    XCB_GC_SUBWINDOW_MODE = 32768,

    XCB_GC_GRAPHICS_EXPOSURES = 65536,

    XCB_GC_CLIP_ORIGIN_X = 131072,

    XCB_GC_CLIP_ORIGIN_Y = 262144,

    XCB_GC_CLIP_MASK = 524288,

    XCB_GC_DASH_OFFSET = 1048576,

    XCB_GC_DASH_LIST = 2097152,

    XCB_GC_ARC_MODE = 4194304
}

enum xcb_gx_t
{
    XCB_GX_CLEAR = 0,
    XCB_GX_AND = 1,
    XCB_GX_AND_REVERSE = 2,
    XCB_GX_COPY = 3,
    XCB_GX_AND_INVERTED = 4,
    XCB_GX_NOOP = 5,
    XCB_GX_XOR = 6,
    XCB_GX_OR = 7,
    XCB_GX_NOR = 8,
    XCB_GX_EQUIV = 9,
    XCB_GX_INVERT = 10,
    XCB_GX_OR_REVERSE = 11,
    XCB_GX_COPY_INVERTED = 12,
    XCB_GX_OR_INVERTED = 13,
    XCB_GX_NAND = 14,
    XCB_GX_SET = 15
}

enum xcb_line_style_t
{
    XCB_LINE_STYLE_SOLID = 0,
    XCB_LINE_STYLE_ON_OFF_DASH = 1,
    XCB_LINE_STYLE_DOUBLE_DASH = 2
}

enum xcb_cap_style_t
{
    XCB_CAP_STYLE_NOT_LAST = 0,
    XCB_CAP_STYLE_BUTT = 1,
    XCB_CAP_STYLE_ROUND = 2,
    XCB_CAP_STYLE_PROJECTING = 3
}

enum xcb_join_style_t
{
    XCB_JOIN_STYLE_MITER = 0,
    XCB_JOIN_STYLE_ROUND = 1,
    XCB_JOIN_STYLE_BEVEL = 2
}

enum xcb_fill_style_t
{
    XCB_FILL_STYLE_SOLID = 0,
    XCB_FILL_STYLE_TILED = 1,
    XCB_FILL_STYLE_STIPPLED = 2,
    XCB_FILL_STYLE_OPAQUE_STIPPLED = 3
}

enum xcb_fill_rule_t
{
    XCB_FILL_RULE_EVEN_ODD = 0,
    XCB_FILL_RULE_WINDING = 1
}

enum xcb_subwindow_mode_t
{
    XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN = 0,
    XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS = 1
}

enum xcb_arc_mode_t
{
    XCB_ARC_MODE_CHORD = 0,
    XCB_ARC_MODE_PIE_SLICE = 1
}

struct xcb_create_gc_value_list_t
{
    uint function_;
    uint plane_mask;
    uint foreground;
    uint background;
    uint line_width;
    uint line_style;
    uint cap_style;
    uint join_style;
    uint fill_style;
    uint fill_rule;
    xcb_pixmap_t tile;
    xcb_pixmap_t stipple;
    int tile_stipple_x_origin;
    int tile_stipple_y_origin;
    xcb_font_t font;
    uint subwindow_mode;
    xcb_bool32_t graphics_exposures;
    int clip_x_origin;
    int clip_y_origin;
    xcb_pixmap_t clip_mask;
    uint dash_offset;
    uint dashes;
    uint arc_mode;
}

struct xcb_create_gc_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_gcontext_t cid;
    xcb_drawable_t drawable;
    uint value_mask;
}

struct xcb_change_gc_value_list_t
{
    uint function_;
    uint plane_mask;
    uint foreground;
    uint background;
    uint line_width;
    uint line_style;
    uint cap_style;
    uint join_style;
    uint fill_style;
    uint fill_rule;
    xcb_pixmap_t tile;
    xcb_pixmap_t stipple;
    int tile_stipple_x_origin;
    int tile_stipple_y_origin;
    xcb_font_t font;
    uint subwindow_mode;
    xcb_bool32_t graphics_exposures;
    int clip_x_origin;
    int clip_y_origin;
    xcb_pixmap_t clip_mask;
    uint dash_offset;
    uint dashes;
    uint arc_mode;
}

struct xcb_change_gc_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_gcontext_t gc;
    uint value_mask;
}

struct xcb_copy_gc_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_gcontext_t src_gc;
    xcb_gcontext_t dst_gc;
    uint value_mask;
}

struct xcb_set_dashes_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_gcontext_t gc;
    ushort dash_offset;
    ushort dashes_len;
}

enum xcb_clip_ordering_t
{
    XCB_CLIP_ORDERING_UNSORTED = 0,
    XCB_CLIP_ORDERING_Y_SORTED = 1,
    XCB_CLIP_ORDERING_YX_SORTED = 2,
    XCB_CLIP_ORDERING_YX_BANDED = 3
}

struct xcb_set_clip_rectangles_request_t
{
    ubyte major_opcode;
    ubyte ordering;
    ushort length;
    xcb_gcontext_t gc;
    short clip_x_origin;
    short clip_y_origin;
}

struct xcb_free_gc_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_gcontext_t gc;
}

struct xcb_clear_area_request_t
{
    ubyte major_opcode;
    ubyte exposures;
    ushort length;
    xcb_window_t window;
    short x;
    short y;
    ushort width;
    ushort height;
}

struct xcb_copy_area_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t src_drawable;
    xcb_drawable_t dst_drawable;
    xcb_gcontext_t gc;
    short src_x;
    short src_y;
    short dst_x;
    short dst_y;
    ushort width;
    ushort height;
}

struct xcb_copy_plane_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t src_drawable;
    xcb_drawable_t dst_drawable;
    xcb_gcontext_t gc;
    short src_x;
    short src_y;
    short dst_x;
    short dst_y;
    ushort width;
    ushort height;
    uint bit_plane;
}

enum xcb_coord_mode_t
{
    XCB_COORD_MODE_ORIGIN = 0,

    XCB_COORD_MODE_PREVIOUS = 1
}

struct xcb_poly_point_request_t
{
    ubyte major_opcode;
    ubyte coordinate_mode;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
}

struct xcb_poly_line_request_t
{
    ubyte major_opcode;
    ubyte coordinate_mode;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
}

struct xcb_segment_t
{
    short x1;
    short y1;
    short x2;
    short y2;
}

struct xcb_segment_iterator_t
{
    xcb_segment_t* data;
    int rem;
    int index;
}

struct xcb_poly_segment_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
}

struct xcb_poly_rectangle_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
}

struct xcb_poly_arc_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
}

enum xcb_poly_shape_t
{
    XCB_POLY_SHAPE_COMPLEX = 0,
    XCB_POLY_SHAPE_NONCONVEX = 1,
    XCB_POLY_SHAPE_CONVEX = 2
}

struct xcb_fill_poly_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
    ubyte shape;
    ubyte coordinate_mode;
    ubyte[2] pad1;
}

struct xcb_poly_fill_rectangle_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
}

struct xcb_poly_fill_arc_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
}

enum xcb_image_format_t
{
    XCB_IMAGE_FORMAT_XY_BITMAP = 0,
    XCB_IMAGE_FORMAT_XY_PIXMAP = 1,
    XCB_IMAGE_FORMAT_Z_PIXMAP = 2
}

struct xcb_put_image_request_t
{
    ubyte major_opcode;
    ubyte format;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
    ushort width;
    ushort height;
    short dst_x;
    short dst_y;
    ubyte left_pad;
    ubyte depth;
    ubyte[2] pad0;
}

struct xcb_get_image_cookie_t
{
    uint sequence;
}

struct xcb_get_image_request_t
{
    ubyte major_opcode;
    ubyte format;
    ushort length;
    xcb_drawable_t drawable;
    short x;
    short y;
    ushort width;
    ushort height;
    uint plane_mask;
}

struct xcb_get_image_reply_t
{
    ubyte response_type;
    ubyte depth;
    ushort sequence;
    uint length;
    xcb_visualid_t visual;
    ubyte[20] pad0;
}

struct xcb_poly_text_8_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
    short x;
    short y;
}

struct xcb_poly_text_16_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
    short x;
    short y;
}

struct xcb_image_text_8_request_t
{
    ubyte major_opcode;
    ubyte string_len;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
    short x;
    short y;
}

struct xcb_image_text_16_request_t
{
    ubyte major_opcode;
    ubyte string_len;
    ushort length;
    xcb_drawable_t drawable;
    xcb_gcontext_t gc;
    short x;
    short y;
}

enum xcb_colormap_alloc_t
{
    XCB_COLORMAP_ALLOC_NONE = 0,
    XCB_COLORMAP_ALLOC_ALL = 1
}

struct xcb_create_colormap_request_t
{
    ubyte major_opcode;
    ubyte alloc;
    ushort length;
    xcb_colormap_t mid;
    xcb_window_t window;
    xcb_visualid_t visual;
}

struct xcb_free_colormap_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
}

struct xcb_copy_colormap_and_free_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t mid;
    xcb_colormap_t src_cmap;
}

struct xcb_install_colormap_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
}

struct xcb_uninstall_colormap_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
}

struct xcb_list_installed_colormaps_cookie_t
{
    uint sequence;
}

struct xcb_list_installed_colormaps_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
}

struct xcb_list_installed_colormaps_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort cmaps_len;
    ubyte[22] pad1;
}

struct xcb_alloc_color_cookie_t
{
    uint sequence;
}

struct xcb_alloc_color_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
    ushort red;
    ushort green;
    ushort blue;
    ubyte[2] pad1;
}

struct xcb_alloc_color_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort red;
    ushort green;
    ushort blue;
    ubyte[2] pad1;
    uint pixel;
}

struct xcb_alloc_named_color_cookie_t
{
    uint sequence;
}

struct xcb_alloc_named_color_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
    ushort name_len;
    ubyte[2] pad1;
}

struct xcb_alloc_named_color_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    uint pixel;
    ushort exact_red;
    ushort exact_green;
    ushort exact_blue;
    ushort visual_red;
    ushort visual_green;
    ushort visual_blue;
}

struct xcb_alloc_color_cells_cookie_t
{
    uint sequence;
}

struct xcb_alloc_color_cells_request_t
{
    ubyte major_opcode;
    ubyte contiguous;
    ushort length;
    xcb_colormap_t cmap;
    ushort colors;
    ushort planes;
}

struct xcb_alloc_color_cells_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort pixels_len;
    ushort masks_len;
    ubyte[20] pad1;
}

struct xcb_alloc_color_planes_cookie_t
{
    uint sequence;
}

struct xcb_alloc_color_planes_request_t
{
    ubyte major_opcode;
    ubyte contiguous;
    ushort length;
    xcb_colormap_t cmap;
    ushort colors;
    ushort reds;
    ushort greens;
    ushort blues;
}

struct xcb_alloc_color_planes_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort pixels_len;
    ubyte[2] pad1;
    uint red_mask;
    uint green_mask;
    uint blue_mask;
    ubyte[8] pad2;
}

struct xcb_free_colors_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
    uint plane_mask;
}

enum xcb_color_flag_t
{
    XCB_COLOR_FLAG_RED = 1,
    XCB_COLOR_FLAG_GREEN = 2,
    XCB_COLOR_FLAG_BLUE = 4
}

struct xcb_coloritem_t
{
    uint pixel;
    ushort red;
    ushort green;
    ushort blue;
    ubyte flags;
    ubyte pad0;
}

struct xcb_coloritem_iterator_t
{
    xcb_coloritem_t* data;
    int rem;
    int index;
}

struct xcb_store_colors_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
}

struct xcb_store_named_color_request_t
{
    ubyte major_opcode;
    ubyte flags;
    ushort length;
    xcb_colormap_t cmap;
    uint pixel;
    ushort name_len;
    ubyte[2] pad0;
}

struct xcb_rgb_t
{
    ushort red;
    ushort green;
    ushort blue;
    ubyte[2] pad0;
}

struct xcb_rgb_iterator_t
{
    xcb_rgb_t* data;
    int rem;
    int index;
}

struct xcb_query_colors_cookie_t
{
    uint sequence;
}

struct xcb_query_colors_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
}

struct xcb_query_colors_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort colors_len;
    ubyte[22] pad1;
}

struct xcb_lookup_color_cookie_t
{
    uint sequence;
}

struct xcb_lookup_color_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_colormap_t cmap;
    ushort name_len;
    ubyte[2] pad1;
}

struct xcb_lookup_color_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort exact_red;
    ushort exact_green;
    ushort exact_blue;
    ushort visual_red;
    ushort visual_green;
    ushort visual_blue;
}

enum xcb_pixmap_enum_t
{
    XCB_PIXMAP_NONE = 0
}

struct xcb_create_cursor_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_cursor_t cid;
    xcb_pixmap_t source;
    xcb_pixmap_t mask;
    ushort fore_red;
    ushort fore_green;
    ushort fore_blue;
    ushort back_red;
    ushort back_green;
    ushort back_blue;
    ushort x;
    ushort y;
}

enum xcb_font_enum_t
{
    XCB_FONT_NONE = 0
}

struct xcb_create_glyph_cursor_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_cursor_t cid;
    xcb_font_t source_font;
    xcb_font_t mask_font;
    ushort source_char;
    ushort mask_char;
    ushort fore_red;
    ushort fore_green;
    ushort fore_blue;
    ushort back_red;
    ushort back_green;
    ushort back_blue;
}

struct xcb_free_cursor_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_cursor_t cursor;
}

struct xcb_recolor_cursor_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_cursor_t cursor;
    ushort fore_red;
    ushort fore_green;
    ushort fore_blue;
    ushort back_red;
    ushort back_green;
    ushort back_blue;
}

enum xcb_query_shape_of_t
{
    XCB_QUERY_SHAPE_OF_LARGEST_CURSOR = 0,
    XCB_QUERY_SHAPE_OF_FASTEST_TILE = 1,
    XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE = 2
}

struct xcb_query_best_size_cookie_t
{
    uint sequence;
}

struct xcb_query_best_size_request_t
{
    ubyte major_opcode;
    ubyte _class;
    ushort length;
    xcb_drawable_t drawable;
    ushort width;
    ushort height;
}

struct xcb_query_best_size_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort width;
    ushort height;
}

struct xcb_query_extension_cookie_t
{
    uint sequence;
}

struct xcb_query_extension_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    ushort name_len;
    ubyte[2] pad1;
}

struct xcb_query_extension_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ubyte present;
    ubyte major_opcode;
    ubyte first_event;
    ubyte first_error;
}

struct xcb_list_extensions_cookie_t
{
    uint sequence;
}

struct xcb_list_extensions_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_list_extensions_reply_t
{
    ubyte response_type;
    ubyte names_len;
    ushort sequence;
    uint length;
    ubyte[24] pad0;
}

struct xcb_change_keyboard_mapping_request_t
{
    ubyte major_opcode;
    ubyte keycode_count;
    ushort length;
    xcb_keycode_t first_keycode;
    ubyte keysyms_per_keycode;
    ubyte[2] pad0;
}

struct xcb_get_keyboard_mapping_cookie_t
{
    uint sequence;
}

struct xcb_get_keyboard_mapping_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_keycode_t first_keycode;
    ubyte count;
}

struct xcb_get_keyboard_mapping_reply_t
{
    ubyte response_type;
    ubyte keysyms_per_keycode;
    ushort sequence;
    uint length;
    ubyte[24] pad0;
}

enum xcb_kb_t
{
    XCB_KB_KEY_CLICK_PERCENT = 1,
    XCB_KB_BELL_PERCENT = 2,
    XCB_KB_BELL_PITCH = 4,
    XCB_KB_BELL_DURATION = 8,
    XCB_KB_LED = 16,
    XCB_KB_LED_MODE = 32,
    XCB_KB_KEY = 64,
    XCB_KB_AUTO_REPEAT_MODE = 128
}

enum xcb_led_mode_t
{
    XCB_LED_MODE_OFF = 0,
    XCB_LED_MODE_ON = 1
}

enum xcb_auto_repeat_mode_t
{
    XCB_AUTO_REPEAT_MODE_OFF = 0,
    XCB_AUTO_REPEAT_MODE_ON = 1,
    XCB_AUTO_REPEAT_MODE_DEFAULT = 2
}

struct xcb_change_keyboard_control_value_list_t
{
    int key_click_percent;
    int bell_percent;
    int bell_pitch;
    int bell_duration;
    uint led;
    uint led_mode;
    xcb_keycode32_t key;
    uint auto_repeat_mode;
}

struct xcb_change_keyboard_control_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    uint value_mask;
}

struct xcb_get_keyboard_control_cookie_t
{
    uint sequence;
}

struct xcb_get_keyboard_control_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_get_keyboard_control_reply_t
{
    ubyte response_type;
    ubyte global_auto_repeat;
    ushort sequence;
    uint length;
    uint led_mask;
    ubyte key_click_percent;
    ubyte bell_percent;
    ushort bell_pitch;
    ushort bell_duration;
    ubyte[2] pad0;
    ubyte[32] auto_repeats;
}

struct xcb_bell_request_t
{
    ubyte major_opcode;
    byte percent;
    ushort length;
}

struct xcb_change_pointer_control_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    short acceleration_numerator;
    short acceleration_denominator;
    short threshold;
    ubyte do_acceleration;
    ubyte do_threshold;
}

struct xcb_get_pointer_control_cookie_t
{
    uint sequence;
}

struct xcb_get_pointer_control_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_get_pointer_control_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort acceleration_numerator;
    ushort acceleration_denominator;
    ushort threshold;
    ubyte[18] pad1;
}

enum xcb_blanking_t
{
    XCB_BLANKING_NOT_PREFERRED = 0,
    XCB_BLANKING_PREFERRED = 1,
    XCB_BLANKING_DEFAULT = 2
}

enum xcb_exposures_t
{
    XCB_EXPOSURES_NOT_ALLOWED = 0,
    XCB_EXPOSURES_ALLOWED = 1,
    XCB_EXPOSURES_DEFAULT = 2
}

struct xcb_set_screen_saver_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    short timeout;
    short interval;
    ubyte prefer_blanking;
    ubyte allow_exposures;
}

struct xcb_get_screen_saver_cookie_t
{
    uint sequence;
}

struct xcb_get_screen_saver_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_get_screen_saver_reply_t
{
    ubyte response_type;
    ubyte pad0;
    ushort sequence;
    uint length;
    ushort timeout;
    ushort interval;
    ubyte prefer_blanking;
    ubyte allow_exposures;
    ubyte[18] pad1;
}

enum xcb_host_mode_t
{
    XCB_HOST_MODE_INSERT = 0,
    XCB_HOST_MODE_DELETE = 1
}

enum xcb_family_t
{
    XCB_FAMILY_INTERNET = 0,
    XCB_FAMILY_DECNET = 1,
    XCB_FAMILY_CHAOS = 2,
    XCB_FAMILY_SERVER_INTERPRETED = 5,
    XCB_FAMILY_INTERNET_6 = 6
}

struct xcb_change_hosts_request_t
{
    ubyte major_opcode;
    ubyte mode;
    ushort length;
    ubyte family;
    ubyte pad0;
    ushort address_len;
}

struct xcb_host_t
{
    ubyte family;
    ubyte pad0;
    ushort address_len;
}

struct xcb_host_iterator_t
{
    xcb_host_t* data;
    int rem;
    int index;
}

struct xcb_list_hosts_cookie_t
{
    uint sequence;
}

struct xcb_list_hosts_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_list_hosts_reply_t
{
    ubyte response_type;
    ubyte mode;
    ushort sequence;
    uint length;
    ushort hosts_len;
    ubyte[22] pad0;
}

enum xcb_access_control_t
{
    XCB_ACCESS_CONTROL_DISABLE = 0,
    XCB_ACCESS_CONTROL_ENABLE = 1
}

struct xcb_set_access_control_request_t
{
    ubyte major_opcode;
    ubyte mode;
    ushort length;
}

enum xcb_close_down_t
{
    XCB_CLOSE_DOWN_DESTROY_ALL = 0,
    XCB_CLOSE_DOWN_RETAIN_PERMANENT = 1,
    XCB_CLOSE_DOWN_RETAIN_TEMPORARY = 2
}

struct xcb_set_close_down_mode_request_t
{
    ubyte major_opcode;
    ubyte mode;
    ushort length;
}

enum xcb_kill_t
{
    XCB_KILL_ALL_TEMPORARY = 0
}

struct xcb_kill_client_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    uint resource;
}

struct xcb_rotate_properties_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
    xcb_window_t window;
    ushort atoms_len;
    short delta;
}

enum xcb_screen_saver_t
{
    XCB_SCREEN_SAVER_RESET = 0,
    XCB_SCREEN_SAVER_ACTIVE = 1
}

struct xcb_force_screen_saver_request_t
{
    ubyte major_opcode;
    ubyte mode;
    ushort length;
}

enum xcb_mapping_status_t
{
    XCB_MAPPING_STATUS_SUCCESS = 0,
    XCB_MAPPING_STATUS_BUSY = 1,
    XCB_MAPPING_STATUS_FAILURE = 2
}

struct xcb_set_pointer_mapping_cookie_t
{
    uint sequence;
}

struct xcb_set_pointer_mapping_request_t
{
    ubyte major_opcode;
    ubyte map_len;
    ushort length;
}

struct xcb_set_pointer_mapping_reply_t
{
    ubyte response_type;
    ubyte status;
    ushort sequence;
    uint length;
}

struct xcb_get_pointer_mapping_cookie_t
{
    uint sequence;
}

struct xcb_get_pointer_mapping_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_get_pointer_mapping_reply_t
{
    ubyte response_type;
    ubyte map_len;
    ushort sequence;
    uint length;
    ubyte[24] pad0;
}

enum xcb_map_index_t
{
    XCB_MAP_INDEX_SHIFT = 0,
    XCB_MAP_INDEX_LOCK = 1,
    XCB_MAP_INDEX_CONTROL = 2,
    XCB_MAP_INDEX_1 = 3,
    XCB_MAP_INDEX_2 = 4,
    XCB_MAP_INDEX_3 = 5,
    XCB_MAP_INDEX_4 = 6,
    XCB_MAP_INDEX_5 = 7
}

struct xcb_set_modifier_mapping_cookie_t
{
    uint sequence;
}

struct xcb_set_modifier_mapping_request_t
{
    ubyte major_opcode;
    ubyte keycodes_per_modifier;
    ushort length;
}

struct xcb_set_modifier_mapping_reply_t
{
    ubyte response_type;
    ubyte status;
    ushort sequence;
    uint length;
}

struct xcb_get_modifier_mapping_cookie_t
{
    uint sequence;
}

struct xcb_get_modifier_mapping_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

struct xcb_get_modifier_mapping_reply_t
{
    ubyte response_type;
    ubyte keycodes_per_modifier;
    ushort sequence;
    uint length;
    ubyte[24] pad0;
}

struct xcb_no_operation_request_t
{
    ubyte major_opcode;
    ubyte pad0;
    ushort length;
}

void xcb_char2b_next (xcb_char2b_iterator_t* i);

xcb_generic_iterator_t xcb_char2b_end (xcb_char2b_iterator_t i);

void xcb_window_next (xcb_window_iterator_t* i);

xcb_generic_iterator_t xcb_window_end (xcb_window_iterator_t i);

void xcb_pixmap_next (xcb_pixmap_iterator_t* i);

xcb_generic_iterator_t xcb_pixmap_end (xcb_pixmap_iterator_t i);

void xcb_cursor_next (xcb_cursor_iterator_t* i);

xcb_generic_iterator_t xcb_cursor_end (xcb_cursor_iterator_t i);

void xcb_font_next (xcb_font_iterator_t* i);

xcb_generic_iterator_t xcb_font_end (xcb_font_iterator_t i);

void xcb_gcontext_next (xcb_gcontext_iterator_t* i);

xcb_generic_iterator_t xcb_gcontext_end (xcb_gcontext_iterator_t i);

void xcb_colormap_next (xcb_colormap_iterator_t* i);

xcb_generic_iterator_t xcb_colormap_end (xcb_colormap_iterator_t i);

void xcb_atom_next (xcb_atom_iterator_t* i);

xcb_generic_iterator_t xcb_atom_end (xcb_atom_iterator_t i);

void xcb_drawable_next (xcb_drawable_iterator_t* i);

xcb_generic_iterator_t xcb_drawable_end (xcb_drawable_iterator_t i);

void xcb_fontable_next (xcb_fontable_iterator_t* i);

xcb_generic_iterator_t xcb_fontable_end (xcb_fontable_iterator_t i);

void xcb_bool32_next (xcb_bool32_iterator_t* i);

xcb_generic_iterator_t xcb_bool32_end (xcb_bool32_iterator_t i);

void xcb_visualid_next (xcb_visualid_iterator_t* i);

xcb_generic_iterator_t xcb_visualid_end (xcb_visualid_iterator_t i);

void xcb_timestamp_next (xcb_timestamp_iterator_t* i);

xcb_generic_iterator_t xcb_timestamp_end (xcb_timestamp_iterator_t i);

void xcb_keysym_next (xcb_keysym_iterator_t* i);

xcb_generic_iterator_t xcb_keysym_end (xcb_keysym_iterator_t i);

void xcb_keycode_next (xcb_keycode_iterator_t* i);

xcb_generic_iterator_t xcb_keycode_end (xcb_keycode_iterator_t i);

void xcb_keycode32_next (xcb_keycode32_iterator_t* i);

xcb_generic_iterator_t xcb_keycode32_end (xcb_keycode32_iterator_t i);

void xcb_button_next (xcb_button_iterator_t* i);

xcb_generic_iterator_t xcb_button_end (xcb_button_iterator_t i);

void xcb_point_next (xcb_point_iterator_t* i);

xcb_generic_iterator_t xcb_point_end (xcb_point_iterator_t i);

void xcb_rectangle_next (xcb_rectangle_iterator_t* i);

xcb_generic_iterator_t xcb_rectangle_end (xcb_rectangle_iterator_t i);

void xcb_arc_next (xcb_arc_iterator_t* i);

xcb_generic_iterator_t xcb_arc_end (xcb_arc_iterator_t i);

void xcb_format_next (xcb_format_iterator_t* i);

xcb_generic_iterator_t xcb_format_end (xcb_format_iterator_t i);

void xcb_visualtype_next (xcb_visualtype_iterator_t* i);

xcb_generic_iterator_t xcb_visualtype_end (xcb_visualtype_iterator_t i);

int xcb_depth_sizeof (const(void)* _buffer);

xcb_visualtype_t* xcb_depth_visuals (const(xcb_depth_t)* R);

int xcb_depth_visuals_length (const(xcb_depth_t)* R);

xcb_visualtype_iterator_t xcb_depth_visuals_iterator (const(xcb_depth_t)* R);

void xcb_depth_next (xcb_depth_iterator_t* i);

xcb_generic_iterator_t xcb_depth_end (xcb_depth_iterator_t i);

int xcb_screen_sizeof (const(void)* _buffer);

int xcb_screen_allowed_depths_length (const(xcb_screen_t)* R);

xcb_depth_iterator_t xcb_screen_allowed_depths_iterator (
    const(xcb_screen_t)* R);

void xcb_screen_next (xcb_screen_iterator_t* i);

xcb_generic_iterator_t xcb_screen_end (xcb_screen_iterator_t i);

int xcb_setup_request_sizeof (const(void)* _buffer);

char* xcb_setup_request_authorization_protocol_name (
    const(xcb_setup_request_t)* R);

int xcb_setup_request_authorization_protocol_name_length (
    const(xcb_setup_request_t)* R);

xcb_generic_iterator_t xcb_setup_request_authorization_protocol_name_end (
    const(xcb_setup_request_t)* R);

char* xcb_setup_request_authorization_protocol_data (
    const(xcb_setup_request_t)* R);

int xcb_setup_request_authorization_protocol_data_length (
    const(xcb_setup_request_t)* R);

xcb_generic_iterator_t xcb_setup_request_authorization_protocol_data_end (
    const(xcb_setup_request_t)* R);

void xcb_setup_request_next (xcb_setup_request_iterator_t* i);

xcb_generic_iterator_t xcb_setup_request_end (xcb_setup_request_iterator_t i);

int xcb_setup_failed_sizeof (const(void)* _buffer);

char* xcb_setup_failed_reason (const(xcb_setup_failed_t)* R);

int xcb_setup_failed_reason_length (const(xcb_setup_failed_t)* R);

xcb_generic_iterator_t xcb_setup_failed_reason_end (
    const(xcb_setup_failed_t)* R);

void xcb_setup_failed_next (xcb_setup_failed_iterator_t* i);

xcb_generic_iterator_t xcb_setup_failed_end (xcb_setup_failed_iterator_t i);

int xcb_setup_authenticate_sizeof (const(void)* _buffer);

char* xcb_setup_authenticate_reason (const(xcb_setup_authenticate_t)* R);

int xcb_setup_authenticate_reason_length (const(xcb_setup_authenticate_t)* R);

xcb_generic_iterator_t xcb_setup_authenticate_reason_end (
    const(xcb_setup_authenticate_t)* R);

void xcb_setup_authenticate_next (xcb_setup_authenticate_iterator_t* i);

xcb_generic_iterator_t xcb_setup_authenticate_end (
    xcb_setup_authenticate_iterator_t i);

int xcb_setup_sizeof (const(void)* _buffer);

char* xcb_setup_vendor (const(xcb_setup_t)* R);

int xcb_setup_vendor_length (const(xcb_setup_t)* R);

xcb_generic_iterator_t xcb_setup_vendor_end (const(xcb_setup_t)* R);

xcb_format_t* xcb_setup_pixmap_formats (const(xcb_setup_t)* R);

int xcb_setup_pixmap_formats_length (const(xcb_setup_t)* R);

xcb_format_iterator_t xcb_setup_pixmap_formats_iterator (const(xcb_setup_t)* R);

int xcb_setup_roots_length (const(xcb_setup_t)* R);

xcb_screen_iterator_t xcb_setup_roots_iterator (const(xcb_setup_t)* R);

void xcb_setup_next (xcb_setup_iterator_t* i);

xcb_generic_iterator_t xcb_setup_end (xcb_setup_iterator_t i);

void xcb_client_message_data_next (xcb_client_message_data_iterator_t* i);

xcb_generic_iterator_t xcb_client_message_data_end (
    xcb_client_message_data_iterator_t i);

int xcb_create_window_value_list_serialize (
    void** _buffer,
    uint value_mask,
    const(xcb_create_window_value_list_t)* _aux);

int xcb_create_window_value_list_unpack (
    const(void)* _buffer,
    uint value_mask,
    xcb_create_window_value_list_t* _aux);

int xcb_create_window_value_list_sizeof (const(void)* _buffer, uint value_mask);

int xcb_create_window_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_create_window_checked (
    xcb_connection_t* c,
    ubyte depth,
    xcb_window_t wid,
    xcb_window_t parent,
    short x,
    short y,
    ushort width,
    ushort height,
    ushort border_width,
    ushort _class,
    xcb_visualid_t visual,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_create_window (
    xcb_connection_t* c,
    ubyte depth,
    xcb_window_t wid,
    xcb_window_t parent,
    short x,
    short y,
    ushort width,
    ushort height,
    ushort border_width,
    ushort _class,
    xcb_visualid_t visual,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_create_window_aux_checked (
    xcb_connection_t* c,
    ubyte depth,
    xcb_window_t wid,
    xcb_window_t parent,
    short x,
    short y,
    ushort width,
    ushort height,
    ushort border_width,
    ushort _class,
    xcb_visualid_t visual,
    uint value_mask,
    const(xcb_create_window_value_list_t)* value_list);

xcb_void_cookie_t xcb_create_window_aux (
    xcb_connection_t* c,
    ubyte depth,
    xcb_window_t wid,
    xcb_window_t parent,
    short x,
    short y,
    ushort width,
    ushort height,
    ushort border_width,
    ushort _class,
    xcb_visualid_t visual,
    uint value_mask,
    const(xcb_create_window_value_list_t)* value_list);

void* xcb_create_window_value_list (const(xcb_create_window_request_t)* R);

int xcb_change_window_attributes_value_list_serialize (
    void** _buffer,
    uint value_mask,
    const(xcb_change_window_attributes_value_list_t)* _aux);

int xcb_change_window_attributes_value_list_unpack (
    const(void)* _buffer,
    uint value_mask,
    xcb_change_window_attributes_value_list_t* _aux);

int xcb_change_window_attributes_value_list_sizeof (
    const(void)* _buffer,
    uint value_mask);

int xcb_change_window_attributes_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_change_window_attributes_checked (
    xcb_connection_t* c,
    xcb_window_t window,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_change_window_attributes (
    xcb_connection_t* c,
    xcb_window_t window,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_change_window_attributes_aux_checked (
    xcb_connection_t* c,
    xcb_window_t window,
    uint value_mask,
    const(xcb_change_window_attributes_value_list_t)* value_list);

xcb_void_cookie_t xcb_change_window_attributes_aux (
    xcb_connection_t* c,
    xcb_window_t window,
    uint value_mask,
    const(xcb_change_window_attributes_value_list_t)* value_list);

void* xcb_change_window_attributes_value_list (
    const(xcb_change_window_attributes_request_t)* R);

xcb_get_window_attributes_cookie_t xcb_get_window_attributes (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_get_window_attributes_cookie_t xcb_get_window_attributes_unchecked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_get_window_attributes_reply_t* xcb_get_window_attributes_reply (
    xcb_connection_t* c,
    xcb_get_window_attributes_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_destroy_window_checked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_void_cookie_t xcb_destroy_window (xcb_connection_t* c, xcb_window_t window);

xcb_void_cookie_t xcb_destroy_subwindows_checked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_void_cookie_t xcb_destroy_subwindows (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_void_cookie_t xcb_change_save_set_checked (
    xcb_connection_t* c,
    ubyte mode,
    xcb_window_t window);

xcb_void_cookie_t xcb_change_save_set (
    xcb_connection_t* c,
    ubyte mode,
    xcb_window_t window);

xcb_void_cookie_t xcb_reparent_window_checked (
    xcb_connection_t* c,
    xcb_window_t window,
    xcb_window_t parent,
    short x,
    short y);

xcb_void_cookie_t xcb_reparent_window (
    xcb_connection_t* c,
    xcb_window_t window,
    xcb_window_t parent,
    short x,
    short y);

xcb_void_cookie_t xcb_map_window_checked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_void_cookie_t xcb_map_window (xcb_connection_t* c, xcb_window_t window);

xcb_void_cookie_t xcb_map_subwindows_checked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_void_cookie_t xcb_map_subwindows (xcb_connection_t* c, xcb_window_t window);

xcb_void_cookie_t xcb_unmap_window_checked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_void_cookie_t xcb_unmap_window (xcb_connection_t* c, xcb_window_t window);

xcb_void_cookie_t xcb_unmap_subwindows_checked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_void_cookie_t xcb_unmap_subwindows (
    xcb_connection_t* c,
    xcb_window_t window);

int xcb_configure_window_value_list_serialize (
    void** _buffer,
    ushort value_mask,
    const(xcb_configure_window_value_list_t)* _aux);

int xcb_configure_window_value_list_unpack (
    const(void)* _buffer,
    ushort value_mask,
    xcb_configure_window_value_list_t* _aux);

int xcb_configure_window_value_list_sizeof (
    const(void)* _buffer,
    ushort value_mask);

int xcb_configure_window_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_configure_window_checked (
    xcb_connection_t* c,
    xcb_window_t window,
    ushort value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_configure_window (
    xcb_connection_t* c,
    xcb_window_t window,
    ushort value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_configure_window_aux_checked (
    xcb_connection_t* c,
    xcb_window_t window,
    ushort value_mask,
    const(xcb_configure_window_value_list_t)* value_list);

xcb_void_cookie_t xcb_configure_window_aux (
    xcb_connection_t* c,
    xcb_window_t window,
    ushort value_mask,
    const(xcb_configure_window_value_list_t)* value_list);

void* xcb_configure_window_value_list (
    const(xcb_configure_window_request_t)* R);

xcb_void_cookie_t xcb_circulate_window_checked (
    xcb_connection_t* c,
    ubyte direction,
    xcb_window_t window);

xcb_void_cookie_t xcb_circulate_window (
    xcb_connection_t* c,
    ubyte direction,
    xcb_window_t window);

xcb_get_geometry_cookie_t xcb_get_geometry (
    xcb_connection_t* c,
    xcb_drawable_t drawable);

xcb_get_geometry_cookie_t xcb_get_geometry_unchecked (
    xcb_connection_t* c,
    xcb_drawable_t drawable);

xcb_get_geometry_reply_t* xcb_get_geometry_reply (
    xcb_connection_t* c,
    xcb_get_geometry_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_query_tree_sizeof (const(void)* _buffer);

xcb_query_tree_cookie_t xcb_query_tree (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_query_tree_cookie_t xcb_query_tree_unchecked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_window_t* xcb_query_tree_children (const(xcb_query_tree_reply_t)* R);

int xcb_query_tree_children_length (const(xcb_query_tree_reply_t)* R);

xcb_generic_iterator_t xcb_query_tree_children_end (
    const(xcb_query_tree_reply_t)* R);

xcb_query_tree_reply_t* xcb_query_tree_reply (
    xcb_connection_t* c,
    xcb_query_tree_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_intern_atom_sizeof (const(void)* _buffer);

xcb_intern_atom_cookie_t xcb_intern_atom (
    xcb_connection_t* c,
    ubyte only_if_exists,
    ushort name_len,
    const(char)* name);

xcb_intern_atom_cookie_t xcb_intern_atom_unchecked (
    xcb_connection_t* c,
    ubyte only_if_exists,
    ushort name_len,
    const(char)* name);

xcb_intern_atom_reply_t* xcb_intern_atom_reply (
    xcb_connection_t* c,
    xcb_intern_atom_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_get_atom_name_sizeof (const(void)* _buffer);

xcb_get_atom_name_cookie_t xcb_get_atom_name (
    xcb_connection_t* c,
    xcb_atom_t atom);

xcb_get_atom_name_cookie_t xcb_get_atom_name_unchecked (
    xcb_connection_t* c,
    xcb_atom_t atom);

char* xcb_get_atom_name_name (const(xcb_get_atom_name_reply_t)* R);

int xcb_get_atom_name_name_length (const(xcb_get_atom_name_reply_t)* R);

xcb_generic_iterator_t xcb_get_atom_name_name_end (
    const(xcb_get_atom_name_reply_t)* R);

xcb_get_atom_name_reply_t* xcb_get_atom_name_reply (
    xcb_connection_t* c,
    xcb_get_atom_name_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_change_property_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_change_property_checked (
    xcb_connection_t* c,
    ubyte mode,
    xcb_window_t window,
    xcb_atom_t property,
    xcb_atom_t type,
    ubyte format,
    uint data_len,
    const(void)* data);

xcb_void_cookie_t xcb_change_property (
    xcb_connection_t* c,
    ubyte mode,
    xcb_window_t window,
    xcb_atom_t property,
    xcb_atom_t type,
    ubyte format,
    uint data_len,
    const(void)* data);

void* xcb_change_property_data (const(xcb_change_property_request_t)* R);

int xcb_change_property_data_length (const(xcb_change_property_request_t)* R);

xcb_generic_iterator_t xcb_change_property_data_end (
    const(xcb_change_property_request_t)* R);

xcb_void_cookie_t xcb_delete_property_checked (
    xcb_connection_t* c,
    xcb_window_t window,
    xcb_atom_t property);

xcb_void_cookie_t xcb_delete_property (
    xcb_connection_t* c,
    xcb_window_t window,
    xcb_atom_t property);

int xcb_get_property_sizeof (const(void)* _buffer);

xcb_get_property_cookie_t xcb_get_property (
    xcb_connection_t* c,
    ubyte _delete,
    xcb_window_t window,
    xcb_atom_t property,
    xcb_atom_t type,
    uint long_offset,
    uint long_length);

xcb_get_property_cookie_t xcb_get_property_unchecked (
    xcb_connection_t* c,
    ubyte _delete,
    xcb_window_t window,
    xcb_atom_t property,
    xcb_atom_t type,
    uint long_offset,
    uint long_length);

void* xcb_get_property_value (const(xcb_get_property_reply_t)* R);

int xcb_get_property_value_length (const(xcb_get_property_reply_t)* R);

xcb_generic_iterator_t xcb_get_property_value_end (
    const(xcb_get_property_reply_t)* R);

xcb_get_property_reply_t* xcb_get_property_reply (
    xcb_connection_t* c,
    xcb_get_property_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_list_properties_sizeof (const(void)* _buffer);

xcb_list_properties_cookie_t xcb_list_properties (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_list_properties_cookie_t xcb_list_properties_unchecked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_atom_t* xcb_list_properties_atoms (const(xcb_list_properties_reply_t)* R);

int xcb_list_properties_atoms_length (const(xcb_list_properties_reply_t)* R);

xcb_generic_iterator_t xcb_list_properties_atoms_end (
    const(xcb_list_properties_reply_t)* R);

xcb_list_properties_reply_t* xcb_list_properties_reply (
    xcb_connection_t* c,
    xcb_list_properties_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_set_selection_owner_checked (
    xcb_connection_t* c,
    xcb_window_t owner,
    xcb_atom_t selection,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_set_selection_owner (
    xcb_connection_t* c,
    xcb_window_t owner,
    xcb_atom_t selection,
    xcb_timestamp_t time);

xcb_get_selection_owner_cookie_t xcb_get_selection_owner (
    xcb_connection_t* c,
    xcb_atom_t selection);

xcb_get_selection_owner_cookie_t xcb_get_selection_owner_unchecked (
    xcb_connection_t* c,
    xcb_atom_t selection);

xcb_get_selection_owner_reply_t* xcb_get_selection_owner_reply (
    xcb_connection_t* c,
    xcb_get_selection_owner_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_convert_selection_checked (
    xcb_connection_t* c,
    xcb_window_t requestor,
    xcb_atom_t selection,
    xcb_atom_t target,
    xcb_atom_t property,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_convert_selection (
    xcb_connection_t* c,
    xcb_window_t requestor,
    xcb_atom_t selection,
    xcb_atom_t target,
    xcb_atom_t property,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_send_event_checked (
    xcb_connection_t* c,
    ubyte propagate,
    xcb_window_t destination,
    uint event_mask,
    const(char)* event);

xcb_void_cookie_t xcb_send_event (
    xcb_connection_t* c,
    ubyte propagate,
    xcb_window_t destination,
    uint event_mask,
    const(char)* event);

xcb_grab_pointer_cookie_t xcb_grab_pointer (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    ushort event_mask,
    ubyte pointer_mode,
    ubyte keyboard_mode,
    xcb_window_t confine_to,
    xcb_cursor_t cursor,
    xcb_timestamp_t time);

xcb_grab_pointer_cookie_t xcb_grab_pointer_unchecked (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    ushort event_mask,
    ubyte pointer_mode,
    ubyte keyboard_mode,
    xcb_window_t confine_to,
    xcb_cursor_t cursor,
    xcb_timestamp_t time);

xcb_grab_pointer_reply_t* xcb_grab_pointer_reply (
    xcb_connection_t* c,
    xcb_grab_pointer_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_ungrab_pointer_checked (
    xcb_connection_t* c,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_ungrab_pointer (
    xcb_connection_t* c,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_grab_button_checked (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    ushort event_mask,
    ubyte pointer_mode,
    ubyte keyboard_mode,
    xcb_window_t confine_to,
    xcb_cursor_t cursor,
    ubyte button,
    ushort modifiers);

xcb_void_cookie_t xcb_grab_button (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    ushort event_mask,
    ubyte pointer_mode,
    ubyte keyboard_mode,
    xcb_window_t confine_to,
    xcb_cursor_t cursor,
    ubyte button,
    ushort modifiers);

xcb_void_cookie_t xcb_ungrab_button_checked (
    xcb_connection_t* c,
    ubyte button,
    xcb_window_t grab_window,
    ushort modifiers);

xcb_void_cookie_t xcb_ungrab_button (
    xcb_connection_t* c,
    ubyte button,
    xcb_window_t grab_window,
    ushort modifiers);

xcb_void_cookie_t xcb_change_active_pointer_grab_checked (
    xcb_connection_t* c,
    xcb_cursor_t cursor,
    xcb_timestamp_t time,
    ushort event_mask);

xcb_void_cookie_t xcb_change_active_pointer_grab (
    xcb_connection_t* c,
    xcb_cursor_t cursor,
    xcb_timestamp_t time,
    ushort event_mask);

xcb_grab_keyboard_cookie_t xcb_grab_keyboard (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    xcb_timestamp_t time,
    ubyte pointer_mode,
    ubyte keyboard_mode);

xcb_grab_keyboard_cookie_t xcb_grab_keyboard_unchecked (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    xcb_timestamp_t time,
    ubyte pointer_mode,
    ubyte keyboard_mode);

xcb_grab_keyboard_reply_t* xcb_grab_keyboard_reply (
    xcb_connection_t* c,
    xcb_grab_keyboard_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_ungrab_keyboard_checked (
    xcb_connection_t* c,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_ungrab_keyboard (
    xcb_connection_t* c,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_grab_key_checked (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    ushort modifiers,
    xcb_keycode_t key,
    ubyte pointer_mode,
    ubyte keyboard_mode);

xcb_void_cookie_t xcb_grab_key (
    xcb_connection_t* c,
    ubyte owner_events,
    xcb_window_t grab_window,
    ushort modifiers,
    xcb_keycode_t key,
    ubyte pointer_mode,
    ubyte keyboard_mode);

xcb_void_cookie_t xcb_ungrab_key_checked (
    xcb_connection_t* c,
    xcb_keycode_t key,
    xcb_window_t grab_window,
    ushort modifiers);

xcb_void_cookie_t xcb_ungrab_key (
    xcb_connection_t* c,
    xcb_keycode_t key,
    xcb_window_t grab_window,
    ushort modifiers);

xcb_void_cookie_t xcb_allow_events_checked (
    xcb_connection_t* c,
    ubyte mode,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_allow_events (
    xcb_connection_t* c,
    ubyte mode,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_grab_server_checked (xcb_connection_t* c);

xcb_void_cookie_t xcb_grab_server (xcb_connection_t* c);

xcb_void_cookie_t xcb_ungrab_server_checked (xcb_connection_t* c);

xcb_void_cookie_t xcb_ungrab_server (xcb_connection_t* c);

xcb_query_pointer_cookie_t xcb_query_pointer (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_query_pointer_cookie_t xcb_query_pointer_unchecked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_query_pointer_reply_t* xcb_query_pointer_reply (
    xcb_connection_t* c,
    xcb_query_pointer_cookie_t cookie,
    xcb_generic_error_t** e);

void xcb_timecoord_next (xcb_timecoord_iterator_t* i);

xcb_generic_iterator_t xcb_timecoord_end (xcb_timecoord_iterator_t i);

int xcb_get_motion_events_sizeof (const(void)* _buffer);

xcb_get_motion_events_cookie_t xcb_get_motion_events (
    xcb_connection_t* c,
    xcb_window_t window,
    xcb_timestamp_t start,
    xcb_timestamp_t stop);

xcb_get_motion_events_cookie_t xcb_get_motion_events_unchecked (
    xcb_connection_t* c,
    xcb_window_t window,
    xcb_timestamp_t start,
    xcb_timestamp_t stop);

xcb_timecoord_t* xcb_get_motion_events_events (
    const(xcb_get_motion_events_reply_t)* R);

int xcb_get_motion_events_events_length (
    const(xcb_get_motion_events_reply_t)* R);

xcb_timecoord_iterator_t xcb_get_motion_events_events_iterator (
    const(xcb_get_motion_events_reply_t)* R);

xcb_get_motion_events_reply_t* xcb_get_motion_events_reply (
    xcb_connection_t* c,
    xcb_get_motion_events_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_translate_coordinates_cookie_t xcb_translate_coordinates (
    xcb_connection_t* c,
    xcb_window_t src_window,
    xcb_window_t dst_window,
    short src_x,
    short src_y);

xcb_translate_coordinates_cookie_t xcb_translate_coordinates_unchecked (
    xcb_connection_t* c,
    xcb_window_t src_window,
    xcb_window_t dst_window,
    short src_x,
    short src_y);

xcb_translate_coordinates_reply_t* xcb_translate_coordinates_reply (
    xcb_connection_t* c,
    xcb_translate_coordinates_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_warp_pointer_checked (
    xcb_connection_t* c,
    xcb_window_t src_window,
    xcb_window_t dst_window,
    short src_x,
    short src_y,
    ushort src_width,
    ushort src_height,
    short dst_x,
    short dst_y);

xcb_void_cookie_t xcb_warp_pointer (
    xcb_connection_t* c,
    xcb_window_t src_window,
    xcb_window_t dst_window,
    short src_x,
    short src_y,
    ushort src_width,
    ushort src_height,
    short dst_x,
    short dst_y);

xcb_void_cookie_t xcb_set_input_focus_checked (
    xcb_connection_t* c,
    ubyte revert_to,
    xcb_window_t focus,
    xcb_timestamp_t time);

xcb_void_cookie_t xcb_set_input_focus (
    xcb_connection_t* c,
    ubyte revert_to,
    xcb_window_t focus,
    xcb_timestamp_t time);

xcb_get_input_focus_cookie_t xcb_get_input_focus (xcb_connection_t* c);

xcb_get_input_focus_cookie_t xcb_get_input_focus_unchecked (
    xcb_connection_t* c);

xcb_get_input_focus_reply_t* xcb_get_input_focus_reply (
    xcb_connection_t* c,
    xcb_get_input_focus_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_query_keymap_cookie_t xcb_query_keymap (xcb_connection_t* c);

xcb_query_keymap_cookie_t xcb_query_keymap_unchecked (xcb_connection_t* c);

xcb_query_keymap_reply_t* xcb_query_keymap_reply (
    xcb_connection_t* c,
    xcb_query_keymap_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_open_font_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_open_font_checked (
    xcb_connection_t* c,
    xcb_font_t fid,
    ushort name_len,
    const(char)* name);

xcb_void_cookie_t xcb_open_font (
    xcb_connection_t* c,
    xcb_font_t fid,
    ushort name_len,
    const(char)* name);

char* xcb_open_font_name (const(xcb_open_font_request_t)* R);

int xcb_open_font_name_length (const(xcb_open_font_request_t)* R);

xcb_generic_iterator_t xcb_open_font_name_end (
    const(xcb_open_font_request_t)* R);

xcb_void_cookie_t xcb_close_font_checked (xcb_connection_t* c, xcb_font_t font);

xcb_void_cookie_t xcb_close_font (xcb_connection_t* c, xcb_font_t font);

void xcb_fontprop_next (xcb_fontprop_iterator_t* i);

xcb_generic_iterator_t xcb_fontprop_end (xcb_fontprop_iterator_t i);

void xcb_charinfo_next (xcb_charinfo_iterator_t* i);

xcb_generic_iterator_t xcb_charinfo_end (xcb_charinfo_iterator_t i);

int xcb_query_font_sizeof (const(void)* _buffer);

xcb_query_font_cookie_t xcb_query_font (
    xcb_connection_t* c,
    xcb_fontable_t font);

xcb_query_font_cookie_t xcb_query_font_unchecked (
    xcb_connection_t* c,
    xcb_fontable_t font);

xcb_fontprop_t* xcb_query_font_properties (const(xcb_query_font_reply_t)* R);

int xcb_query_font_properties_length (const(xcb_query_font_reply_t)* R);

xcb_fontprop_iterator_t xcb_query_font_properties_iterator (
    const(xcb_query_font_reply_t)* R);

xcb_charinfo_t* xcb_query_font_char_infos (const(xcb_query_font_reply_t)* R);

int xcb_query_font_char_infos_length (const(xcb_query_font_reply_t)* R);

xcb_charinfo_iterator_t xcb_query_font_char_infos_iterator (
    const(xcb_query_font_reply_t)* R);

xcb_query_font_reply_t* xcb_query_font_reply (
    xcb_connection_t* c,
    xcb_query_font_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_query_text_extents_sizeof (const(void)* _buffer, uint string_len);

xcb_query_text_extents_cookie_t xcb_query_text_extents (
    xcb_connection_t* c,
    xcb_fontable_t font,
    uint string_len,
    const(xcb_char2b_t)* string);

xcb_query_text_extents_cookie_t xcb_query_text_extents_unchecked (
    xcb_connection_t* c,
    xcb_fontable_t font,
    uint string_len,
    const(xcb_char2b_t)* string);

xcb_query_text_extents_reply_t* xcb_query_text_extents_reply (
    xcb_connection_t* c,
    xcb_query_text_extents_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_str_sizeof (const(void)* _buffer);

char* xcb_str_name (const(xcb_str_t)* R);

int xcb_str_name_length (const(xcb_str_t)* R);

xcb_generic_iterator_t xcb_str_name_end (const(xcb_str_t)* R);

void xcb_str_next (xcb_str_iterator_t* i);

xcb_generic_iterator_t xcb_str_end (xcb_str_iterator_t i);

int xcb_list_fonts_sizeof (const(void)* _buffer);

xcb_list_fonts_cookie_t xcb_list_fonts (
    xcb_connection_t* c,
    ushort max_names,
    ushort pattern_len,
    const(char)* pattern);

xcb_list_fonts_cookie_t xcb_list_fonts_unchecked (
    xcb_connection_t* c,
    ushort max_names,
    ushort pattern_len,
    const(char)* pattern);

int xcb_list_fonts_names_length (const(xcb_list_fonts_reply_t)* R);

xcb_str_iterator_t xcb_list_fonts_names_iterator (
    const(xcb_list_fonts_reply_t)* R);

xcb_list_fonts_reply_t* xcb_list_fonts_reply (
    xcb_connection_t* c,
    xcb_list_fonts_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_list_fonts_with_info_sizeof (const(void)* _buffer);

xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info (
    xcb_connection_t* c,
    ushort max_names,
    ushort pattern_len,
    const(char)* pattern);

xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info_unchecked (
    xcb_connection_t* c,
    ushort max_names,
    ushort pattern_len,
    const(char)* pattern);

xcb_fontprop_t* xcb_list_fonts_with_info_properties (
    const(xcb_list_fonts_with_info_reply_t)* R);

int xcb_list_fonts_with_info_properties_length (
    const(xcb_list_fonts_with_info_reply_t)* R);

xcb_fontprop_iterator_t xcb_list_fonts_with_info_properties_iterator (
    const(xcb_list_fonts_with_info_reply_t)* R);

char* xcb_list_fonts_with_info_name (
    const(xcb_list_fonts_with_info_reply_t)* R);

int xcb_list_fonts_with_info_name_length (
    const(xcb_list_fonts_with_info_reply_t)* R);

xcb_generic_iterator_t xcb_list_fonts_with_info_name_end (
    const(xcb_list_fonts_with_info_reply_t)* R);

xcb_list_fonts_with_info_reply_t* xcb_list_fonts_with_info_reply (
    xcb_connection_t* c,
    xcb_list_fonts_with_info_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_set_font_path_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_set_font_path_checked (
    xcb_connection_t* c,
    ushort font_qty,
    const(xcb_str_t)* font);

xcb_void_cookie_t xcb_set_font_path (
    xcb_connection_t* c,
    ushort font_qty,
    const(xcb_str_t)* font);

int xcb_set_font_path_font_length (const(xcb_set_font_path_request_t)* R);

xcb_str_iterator_t xcb_set_font_path_font_iterator (
    const(xcb_set_font_path_request_t)* R);

int xcb_get_font_path_sizeof (const(void)* _buffer);

xcb_get_font_path_cookie_t xcb_get_font_path (xcb_connection_t* c);

xcb_get_font_path_cookie_t xcb_get_font_path_unchecked (xcb_connection_t* c);

int xcb_get_font_path_path_length (const(xcb_get_font_path_reply_t)* R);

xcb_str_iterator_t xcb_get_font_path_path_iterator (
    const(xcb_get_font_path_reply_t)* R);

xcb_get_font_path_reply_t* xcb_get_font_path_reply (
    xcb_connection_t* c,
    xcb_get_font_path_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_create_pixmap_checked (
    xcb_connection_t* c,
    ubyte depth,
    xcb_pixmap_t pid,
    xcb_drawable_t drawable,
    ushort width,
    ushort height);

xcb_void_cookie_t xcb_create_pixmap (
    xcb_connection_t* c,
    ubyte depth,
    xcb_pixmap_t pid,
    xcb_drawable_t drawable,
    ushort width,
    ushort height);

xcb_void_cookie_t xcb_free_pixmap_checked (
    xcb_connection_t* c,
    xcb_pixmap_t pixmap);

xcb_void_cookie_t xcb_free_pixmap (xcb_connection_t* c, xcb_pixmap_t pixmap);

int xcb_create_gc_value_list_serialize (
    void** _buffer,
    uint value_mask,
    const(xcb_create_gc_value_list_t)* _aux);

int xcb_create_gc_value_list_unpack (
    const(void)* _buffer,
    uint value_mask,
    xcb_create_gc_value_list_t* _aux);

int xcb_create_gc_value_list_sizeof (const(void)* _buffer, uint value_mask);

int xcb_create_gc_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_create_gc_checked (
    xcb_connection_t* c,
    xcb_gcontext_t cid,
    xcb_drawable_t drawable,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_create_gc (
    xcb_connection_t* c,
    xcb_gcontext_t cid,
    xcb_drawable_t drawable,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_create_gc_aux_checked (
    xcb_connection_t* c,
    xcb_gcontext_t cid,
    xcb_drawable_t drawable,
    uint value_mask,
    const(xcb_create_gc_value_list_t)* value_list);

xcb_void_cookie_t xcb_create_gc_aux (
    xcb_connection_t* c,
    xcb_gcontext_t cid,
    xcb_drawable_t drawable,
    uint value_mask,
    const(xcb_create_gc_value_list_t)* value_list);

void* xcb_create_gc_value_list (const(xcb_create_gc_request_t)* R);

int xcb_change_gc_value_list_serialize (
    void** _buffer,
    uint value_mask,
    const(xcb_change_gc_value_list_t)* _aux);

int xcb_change_gc_value_list_unpack (
    const(void)* _buffer,
    uint value_mask,
    xcb_change_gc_value_list_t* _aux);

int xcb_change_gc_value_list_sizeof (const(void)* _buffer, uint value_mask);

int xcb_change_gc_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_change_gc_checked (
    xcb_connection_t* c,
    xcb_gcontext_t gc,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_change_gc (
    xcb_connection_t* c,
    xcb_gcontext_t gc,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_change_gc_aux_checked (
    xcb_connection_t* c,
    xcb_gcontext_t gc,
    uint value_mask,
    const(xcb_change_gc_value_list_t)* value_list);

xcb_void_cookie_t xcb_change_gc_aux (
    xcb_connection_t* c,
    xcb_gcontext_t gc,
    uint value_mask,
    const(xcb_change_gc_value_list_t)* value_list);

void* xcb_change_gc_value_list (const(xcb_change_gc_request_t)* R);

xcb_void_cookie_t xcb_copy_gc_checked (
    xcb_connection_t* c,
    xcb_gcontext_t src_gc,
    xcb_gcontext_t dst_gc,
    uint value_mask);

xcb_void_cookie_t xcb_copy_gc (
    xcb_connection_t* c,
    xcb_gcontext_t src_gc,
    xcb_gcontext_t dst_gc,
    uint value_mask);

int xcb_set_dashes_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_set_dashes_checked (
    xcb_connection_t* c,
    xcb_gcontext_t gc,
    ushort dash_offset,
    ushort dashes_len,
    const(ubyte)* dashes);

xcb_void_cookie_t xcb_set_dashes (
    xcb_connection_t* c,
    xcb_gcontext_t gc,
    ushort dash_offset,
    ushort dashes_len,
    const(ubyte)* dashes);

ubyte* xcb_set_dashes_dashes (const(xcb_set_dashes_request_t)* R);

int xcb_set_dashes_dashes_length (const(xcb_set_dashes_request_t)* R);

xcb_generic_iterator_t xcb_set_dashes_dashes_end (
    const(xcb_set_dashes_request_t)* R);

int xcb_set_clip_rectangles_sizeof (const(void)* _buffer, uint rectangles_len);

xcb_void_cookie_t xcb_set_clip_rectangles_checked (
    xcb_connection_t* c,
    ubyte ordering,
    xcb_gcontext_t gc,
    short clip_x_origin,
    short clip_y_origin,
    uint rectangles_len,
    const(xcb_rectangle_t)* rectangles);

xcb_void_cookie_t xcb_set_clip_rectangles (
    xcb_connection_t* c,
    ubyte ordering,
    xcb_gcontext_t gc,
    short clip_x_origin,
    short clip_y_origin,
    uint rectangles_len,
    const(xcb_rectangle_t)* rectangles);

xcb_rectangle_t* xcb_set_clip_rectangles_rectangles (
    const(xcb_set_clip_rectangles_request_t)* R);

int xcb_set_clip_rectangles_rectangles_length (
    const(xcb_set_clip_rectangles_request_t)* R);

xcb_rectangle_iterator_t xcb_set_clip_rectangles_rectangles_iterator (
    const(xcb_set_clip_rectangles_request_t)* R);

xcb_void_cookie_t xcb_free_gc_checked (xcb_connection_t* c, xcb_gcontext_t gc);

xcb_void_cookie_t xcb_free_gc (xcb_connection_t* c, xcb_gcontext_t gc);

xcb_void_cookie_t xcb_clear_area_checked (
    xcb_connection_t* c,
    ubyte exposures,
    xcb_window_t window,
    short x,
    short y,
    ushort width,
    ushort height);

xcb_void_cookie_t xcb_clear_area (
    xcb_connection_t* c,
    ubyte exposures,
    xcb_window_t window,
    short x,
    short y,
    ushort width,
    ushort height);

xcb_void_cookie_t xcb_copy_area_checked (
    xcb_connection_t* c,
    xcb_drawable_t src_drawable,
    xcb_drawable_t dst_drawable,
    xcb_gcontext_t gc,
    short src_x,
    short src_y,
    short dst_x,
    short dst_y,
    ushort width,
    ushort height);

xcb_void_cookie_t xcb_copy_area (
    xcb_connection_t* c,
    xcb_drawable_t src_drawable,
    xcb_drawable_t dst_drawable,
    xcb_gcontext_t gc,
    short src_x,
    short src_y,
    short dst_x,
    short dst_y,
    ushort width,
    ushort height);

xcb_void_cookie_t xcb_copy_plane_checked (
    xcb_connection_t* c,
    xcb_drawable_t src_drawable,
    xcb_drawable_t dst_drawable,
    xcb_gcontext_t gc,
    short src_x,
    short src_y,
    short dst_x,
    short dst_y,
    ushort width,
    ushort height,
    uint bit_plane);

xcb_void_cookie_t xcb_copy_plane (
    xcb_connection_t* c,
    xcb_drawable_t src_drawable,
    xcb_drawable_t dst_drawable,
    xcb_gcontext_t gc,
    short src_x,
    short src_y,
    short dst_x,
    short dst_y,
    ushort width,
    ushort height,
    uint bit_plane);

int xcb_poly_point_sizeof (const(void)* _buffer, uint points_len);

xcb_void_cookie_t xcb_poly_point_checked (
    xcb_connection_t* c,
    ubyte coordinate_mode,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint points_len,
    const(xcb_point_t)* points);

xcb_void_cookie_t xcb_poly_point (
    xcb_connection_t* c,
    ubyte coordinate_mode,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint points_len,
    const(xcb_point_t)* points);

xcb_point_t* xcb_poly_point_points (const(xcb_poly_point_request_t)* R);

int xcb_poly_point_points_length (const(xcb_poly_point_request_t)* R);

xcb_point_iterator_t xcb_poly_point_points_iterator (
    const(xcb_poly_point_request_t)* R);

int xcb_poly_line_sizeof (const(void)* _buffer, uint points_len);

xcb_void_cookie_t xcb_poly_line_checked (
    xcb_connection_t* c,
    ubyte coordinate_mode,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint points_len,
    const(xcb_point_t)* points);

xcb_void_cookie_t xcb_poly_line (
    xcb_connection_t* c,
    ubyte coordinate_mode,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint points_len,
    const(xcb_point_t)* points);

xcb_point_t* xcb_poly_line_points (const(xcb_poly_line_request_t)* R);

int xcb_poly_line_points_length (const(xcb_poly_line_request_t)* R);

xcb_point_iterator_t xcb_poly_line_points_iterator (
    const(xcb_poly_line_request_t)* R);

void xcb_segment_next (xcb_segment_iterator_t* i);

xcb_generic_iterator_t xcb_segment_end (xcb_segment_iterator_t i);

int xcb_poly_segment_sizeof (const(void)* _buffer, uint segments_len);

xcb_void_cookie_t xcb_poly_segment_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint segments_len,
    const(xcb_segment_t)* segments);

xcb_void_cookie_t xcb_poly_segment (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint segments_len,
    const(xcb_segment_t)* segments);

xcb_segment_t* xcb_poly_segment_segments (const(xcb_poly_segment_request_t)* R);

int xcb_poly_segment_segments_length (const(xcb_poly_segment_request_t)* R);

xcb_segment_iterator_t xcb_poly_segment_segments_iterator (
    const(xcb_poly_segment_request_t)* R);

int xcb_poly_rectangle_sizeof (const(void)* _buffer, uint rectangles_len);

xcb_void_cookie_t xcb_poly_rectangle_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint rectangles_len,
    const(xcb_rectangle_t)* rectangles);

xcb_void_cookie_t xcb_poly_rectangle (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint rectangles_len,
    const(xcb_rectangle_t)* rectangles);

xcb_rectangle_t* xcb_poly_rectangle_rectangles (
    const(xcb_poly_rectangle_request_t)* R);

int xcb_poly_rectangle_rectangles_length (
    const(xcb_poly_rectangle_request_t)* R);

xcb_rectangle_iterator_t xcb_poly_rectangle_rectangles_iterator (
    const(xcb_poly_rectangle_request_t)* R);

int xcb_poly_arc_sizeof (const(void)* _buffer, uint arcs_len);

xcb_void_cookie_t xcb_poly_arc_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint arcs_len,
    const(xcb_arc_t)* arcs);

xcb_void_cookie_t xcb_poly_arc (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint arcs_len,
    const(xcb_arc_t)* arcs);

xcb_arc_t* xcb_poly_arc_arcs (const(xcb_poly_arc_request_t)* R);

int xcb_poly_arc_arcs_length (const(xcb_poly_arc_request_t)* R);

xcb_arc_iterator_t xcb_poly_arc_arcs_iterator (
    const(xcb_poly_arc_request_t)* R);

int xcb_fill_poly_sizeof (const(void)* _buffer, uint points_len);

xcb_void_cookie_t xcb_fill_poly_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    ubyte shape,
    ubyte coordinate_mode,
    uint points_len,
    const(xcb_point_t)* points);

xcb_void_cookie_t xcb_fill_poly (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    ubyte shape,
    ubyte coordinate_mode,
    uint points_len,
    const(xcb_point_t)* points);

xcb_point_t* xcb_fill_poly_points (const(xcb_fill_poly_request_t)* R);

int xcb_fill_poly_points_length (const(xcb_fill_poly_request_t)* R);

xcb_point_iterator_t xcb_fill_poly_points_iterator (
    const(xcb_fill_poly_request_t)* R);

int xcb_poly_fill_rectangle_sizeof (const(void)* _buffer, uint rectangles_len);

xcb_void_cookie_t xcb_poly_fill_rectangle_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint rectangles_len,
    const(xcb_rectangle_t)* rectangles);

xcb_void_cookie_t xcb_poly_fill_rectangle (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint rectangles_len,
    const(xcb_rectangle_t)* rectangles);

xcb_rectangle_t* xcb_poly_fill_rectangle_rectangles (
    const(xcb_poly_fill_rectangle_request_t)* R);

int xcb_poly_fill_rectangle_rectangles_length (
    const(xcb_poly_fill_rectangle_request_t)* R);

xcb_rectangle_iterator_t xcb_poly_fill_rectangle_rectangles_iterator (
    const(xcb_poly_fill_rectangle_request_t)* R);

int xcb_poly_fill_arc_sizeof (const(void)* _buffer, uint arcs_len);

xcb_void_cookie_t xcb_poly_fill_arc_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint arcs_len,
    const(xcb_arc_t)* arcs);

xcb_void_cookie_t xcb_poly_fill_arc (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    uint arcs_len,
    const(xcb_arc_t)* arcs);

xcb_arc_t* xcb_poly_fill_arc_arcs (const(xcb_poly_fill_arc_request_t)* R);

int xcb_poly_fill_arc_arcs_length (const(xcb_poly_fill_arc_request_t)* R);

xcb_arc_iterator_t xcb_poly_fill_arc_arcs_iterator (
    const(xcb_poly_fill_arc_request_t)* R);

int xcb_put_image_sizeof (const(void)* _buffer, uint data_len);

xcb_void_cookie_t xcb_put_image_checked (
    xcb_connection_t* c,
    ubyte format,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    ushort width,
    ushort height,
    short dst_x,
    short dst_y,
    ubyte left_pad,
    ubyte depth,
    uint data_len,
    const(ubyte)* data);

xcb_void_cookie_t xcb_put_image (
    xcb_connection_t* c,
    ubyte format,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    ushort width,
    ushort height,
    short dst_x,
    short dst_y,
    ubyte left_pad,
    ubyte depth,
    uint data_len,
    const(ubyte)* data);

ubyte* xcb_put_image_data (const(xcb_put_image_request_t)* R);

int xcb_put_image_data_length (const(xcb_put_image_request_t)* R);

xcb_generic_iterator_t xcb_put_image_data_end (
    const(xcb_put_image_request_t)* R);

int xcb_get_image_sizeof (const(void)* _buffer);

xcb_get_image_cookie_t xcb_get_image (
    xcb_connection_t* c,
    ubyte format,
    xcb_drawable_t drawable,
    short x,
    short y,
    ushort width,
    ushort height,
    uint plane_mask);

xcb_get_image_cookie_t xcb_get_image_unchecked (
    xcb_connection_t* c,
    ubyte format,
    xcb_drawable_t drawable,
    short x,
    short y,
    ushort width,
    ushort height,
    uint plane_mask);

ubyte* xcb_get_image_data (const(xcb_get_image_reply_t)* R);

int xcb_get_image_data_length (const(xcb_get_image_reply_t)* R);

xcb_generic_iterator_t xcb_get_image_data_end (const(xcb_get_image_reply_t)* R);

xcb_get_image_reply_t* xcb_get_image_reply (
    xcb_connection_t* c,
    xcb_get_image_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_poly_text_8_sizeof (const(void)* _buffer, uint items_len);

xcb_void_cookie_t xcb_poly_text_8_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    uint items_len,
    const(ubyte)* items);

xcb_void_cookie_t xcb_poly_text_8 (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    uint items_len,
    const(ubyte)* items);

ubyte* xcb_poly_text_8_items (const(xcb_poly_text_8_request_t)* R);

int xcb_poly_text_8_items_length (const(xcb_poly_text_8_request_t)* R);

xcb_generic_iterator_t xcb_poly_text_8_items_end (
    const(xcb_poly_text_8_request_t)* R);

int xcb_poly_text_16_sizeof (const(void)* _buffer, uint items_len);

xcb_void_cookie_t xcb_poly_text_16_checked (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    uint items_len,
    const(ubyte)* items);

xcb_void_cookie_t xcb_poly_text_16 (
    xcb_connection_t* c,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    uint items_len,
    const(ubyte)* items);

ubyte* xcb_poly_text_16_items (const(xcb_poly_text_16_request_t)* R);

int xcb_poly_text_16_items_length (const(xcb_poly_text_16_request_t)* R);

xcb_generic_iterator_t xcb_poly_text_16_items_end (
    const(xcb_poly_text_16_request_t)* R);

int xcb_image_text_8_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_image_text_8_checked (
    xcb_connection_t* c,
    ubyte string_len,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    const(char)* string);

xcb_void_cookie_t xcb_image_text_8 (
    xcb_connection_t* c,
    ubyte string_len,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    const(char)* string);

char* xcb_image_text_8_string (const(xcb_image_text_8_request_t)* R);

int xcb_image_text_8_string_length (const(xcb_image_text_8_request_t)* R);

xcb_generic_iterator_t xcb_image_text_8_string_end (
    const(xcb_image_text_8_request_t)* R);

int xcb_image_text_16_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_image_text_16_checked (
    xcb_connection_t* c,
    ubyte string_len,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    const(xcb_char2b_t)* string);

xcb_void_cookie_t xcb_image_text_16 (
    xcb_connection_t* c,
    ubyte string_len,
    xcb_drawable_t drawable,
    xcb_gcontext_t gc,
    short x,
    short y,
    const(xcb_char2b_t)* string);

xcb_char2b_t* xcb_image_text_16_string (const(xcb_image_text_16_request_t)* R);

int xcb_image_text_16_string_length (const(xcb_image_text_16_request_t)* R);

xcb_char2b_iterator_t xcb_image_text_16_string_iterator (
    const(xcb_image_text_16_request_t)* R);

xcb_void_cookie_t xcb_create_colormap_checked (
    xcb_connection_t* c,
    ubyte alloc,
    xcb_colormap_t mid,
    xcb_window_t window,
    xcb_visualid_t visual);

xcb_void_cookie_t xcb_create_colormap (
    xcb_connection_t* c,
    ubyte alloc,
    xcb_colormap_t mid,
    xcb_window_t window,
    xcb_visualid_t visual);

xcb_void_cookie_t xcb_free_colormap_checked (
    xcb_connection_t* c,
    xcb_colormap_t cmap);

xcb_void_cookie_t xcb_free_colormap (xcb_connection_t* c, xcb_colormap_t cmap);

xcb_void_cookie_t xcb_copy_colormap_and_free_checked (
    xcb_connection_t* c,
    xcb_colormap_t mid,
    xcb_colormap_t src_cmap);

xcb_void_cookie_t xcb_copy_colormap_and_free (
    xcb_connection_t* c,
    xcb_colormap_t mid,
    xcb_colormap_t src_cmap);

xcb_void_cookie_t xcb_install_colormap_checked (
    xcb_connection_t* c,
    xcb_colormap_t cmap);

xcb_void_cookie_t xcb_install_colormap (
    xcb_connection_t* c,
    xcb_colormap_t cmap);

xcb_void_cookie_t xcb_uninstall_colormap_checked (
    xcb_connection_t* c,
    xcb_colormap_t cmap);

xcb_void_cookie_t xcb_uninstall_colormap (
    xcb_connection_t* c,
    xcb_colormap_t cmap);

int xcb_list_installed_colormaps_sizeof (const(void)* _buffer);

xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps_unchecked (
    xcb_connection_t* c,
    xcb_window_t window);

xcb_colormap_t* xcb_list_installed_colormaps_cmaps (
    const(xcb_list_installed_colormaps_reply_t)* R);

int xcb_list_installed_colormaps_cmaps_length (
    const(xcb_list_installed_colormaps_reply_t)* R);

xcb_generic_iterator_t xcb_list_installed_colormaps_cmaps_end (
    const(xcb_list_installed_colormaps_reply_t)* R);

xcb_list_installed_colormaps_reply_t* xcb_list_installed_colormaps_reply (
    xcb_connection_t* c,
    xcb_list_installed_colormaps_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_alloc_color_cookie_t xcb_alloc_color (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    ushort red,
    ushort green,
    ushort blue);

xcb_alloc_color_cookie_t xcb_alloc_color_unchecked (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    ushort red,
    ushort green,
    ushort blue);

xcb_alloc_color_reply_t* xcb_alloc_color_reply (
    xcb_connection_t* c,
    xcb_alloc_color_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_alloc_named_color_sizeof (const(void)* _buffer);

xcb_alloc_named_color_cookie_t xcb_alloc_named_color (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    ushort name_len,
    const(char)* name);

xcb_alloc_named_color_cookie_t xcb_alloc_named_color_unchecked (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    ushort name_len,
    const(char)* name);

xcb_alloc_named_color_reply_t* xcb_alloc_named_color_reply (
    xcb_connection_t* c,
    xcb_alloc_named_color_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_alloc_color_cells_sizeof (const(void)* _buffer);

xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells (
    xcb_connection_t* c,
    ubyte contiguous,
    xcb_colormap_t cmap,
    ushort colors,
    ushort planes);

xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells_unchecked (
    xcb_connection_t* c,
    ubyte contiguous,
    xcb_colormap_t cmap,
    ushort colors,
    ushort planes);

uint* xcb_alloc_color_cells_pixels (const(xcb_alloc_color_cells_reply_t)* R);

int xcb_alloc_color_cells_pixels_length (
    const(xcb_alloc_color_cells_reply_t)* R);

xcb_generic_iterator_t xcb_alloc_color_cells_pixels_end (
    const(xcb_alloc_color_cells_reply_t)* R);

uint* xcb_alloc_color_cells_masks (const(xcb_alloc_color_cells_reply_t)* R);

int xcb_alloc_color_cells_masks_length (
    const(xcb_alloc_color_cells_reply_t)* R);

xcb_generic_iterator_t xcb_alloc_color_cells_masks_end (
    const(xcb_alloc_color_cells_reply_t)* R);

xcb_alloc_color_cells_reply_t* xcb_alloc_color_cells_reply (
    xcb_connection_t* c,
    xcb_alloc_color_cells_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_alloc_color_planes_sizeof (const(void)* _buffer);

xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes (
    xcb_connection_t* c,
    ubyte contiguous,
    xcb_colormap_t cmap,
    ushort colors,
    ushort reds,
    ushort greens,
    ushort blues);

xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes_unchecked (
    xcb_connection_t* c,
    ubyte contiguous,
    xcb_colormap_t cmap,
    ushort colors,
    ushort reds,
    ushort greens,
    ushort blues);

uint* xcb_alloc_color_planes_pixels (const(xcb_alloc_color_planes_reply_t)* R);

int xcb_alloc_color_planes_pixels_length (
    const(xcb_alloc_color_planes_reply_t)* R);

xcb_generic_iterator_t xcb_alloc_color_planes_pixels_end (
    const(xcb_alloc_color_planes_reply_t)* R);

xcb_alloc_color_planes_reply_t* xcb_alloc_color_planes_reply (
    xcb_connection_t* c,
    xcb_alloc_color_planes_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_free_colors_sizeof (const(void)* _buffer, uint pixels_len);

xcb_void_cookie_t xcb_free_colors_checked (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    uint plane_mask,
    uint pixels_len,
    const(uint)* pixels);

xcb_void_cookie_t xcb_free_colors (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    uint plane_mask,
    uint pixels_len,
    const(uint)* pixels);

uint* xcb_free_colors_pixels (const(xcb_free_colors_request_t)* R);

int xcb_free_colors_pixels_length (const(xcb_free_colors_request_t)* R);

xcb_generic_iterator_t xcb_free_colors_pixels_end (
    const(xcb_free_colors_request_t)* R);

void xcb_coloritem_next (xcb_coloritem_iterator_t* i);

xcb_generic_iterator_t xcb_coloritem_end (xcb_coloritem_iterator_t i);

int xcb_store_colors_sizeof (const(void)* _buffer, uint items_len);

xcb_void_cookie_t xcb_store_colors_checked (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    uint items_len,
    const(xcb_coloritem_t)* items);

xcb_void_cookie_t xcb_store_colors (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    uint items_len,
    const(xcb_coloritem_t)* items);

xcb_coloritem_t* xcb_store_colors_items (const(xcb_store_colors_request_t)* R);

int xcb_store_colors_items_length (const(xcb_store_colors_request_t)* R);

xcb_coloritem_iterator_t xcb_store_colors_items_iterator (
    const(xcb_store_colors_request_t)* R);

int xcb_store_named_color_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_store_named_color_checked (
    xcb_connection_t* c,
    ubyte flags,
    xcb_colormap_t cmap,
    uint pixel,
    ushort name_len,
    const(char)* name);

xcb_void_cookie_t xcb_store_named_color (
    xcb_connection_t* c,
    ubyte flags,
    xcb_colormap_t cmap,
    uint pixel,
    ushort name_len,
    const(char)* name);

char* xcb_store_named_color_name (const(xcb_store_named_color_request_t)* R);

int xcb_store_named_color_name_length (
    const(xcb_store_named_color_request_t)* R);

xcb_generic_iterator_t xcb_store_named_color_name_end (
    const(xcb_store_named_color_request_t)* R);

void xcb_rgb_next (xcb_rgb_iterator_t* i);

xcb_generic_iterator_t xcb_rgb_end (xcb_rgb_iterator_t i);

int xcb_query_colors_sizeof (const(void)* _buffer, uint pixels_len);

xcb_query_colors_cookie_t xcb_query_colors (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    uint pixels_len,
    const(uint)* pixels);

xcb_query_colors_cookie_t xcb_query_colors_unchecked (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    uint pixels_len,
    const(uint)* pixels);

xcb_rgb_t* xcb_query_colors_colors (const(xcb_query_colors_reply_t)* R);

int xcb_query_colors_colors_length (const(xcb_query_colors_reply_t)* R);

xcb_rgb_iterator_t xcb_query_colors_colors_iterator (
    const(xcb_query_colors_reply_t)* R);

xcb_query_colors_reply_t* xcb_query_colors_reply (
    xcb_connection_t* c,
    xcb_query_colors_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_lookup_color_sizeof (const(void)* _buffer);

xcb_lookup_color_cookie_t xcb_lookup_color (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    ushort name_len,
    const(char)* name);

xcb_lookup_color_cookie_t xcb_lookup_color_unchecked (
    xcb_connection_t* c,
    xcb_colormap_t cmap,
    ushort name_len,
    const(char)* name);

xcb_lookup_color_reply_t* xcb_lookup_color_reply (
    xcb_connection_t* c,
    xcb_lookup_color_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_create_cursor_checked (
    xcb_connection_t* c,
    xcb_cursor_t cid,
    xcb_pixmap_t source,
    xcb_pixmap_t mask,
    ushort fore_red,
    ushort fore_green,
    ushort fore_blue,
    ushort back_red,
    ushort back_green,
    ushort back_blue,
    ushort x,
    ushort y);

xcb_void_cookie_t xcb_create_cursor (
    xcb_connection_t* c,
    xcb_cursor_t cid,
    xcb_pixmap_t source,
    xcb_pixmap_t mask,
    ushort fore_red,
    ushort fore_green,
    ushort fore_blue,
    ushort back_red,
    ushort back_green,
    ushort back_blue,
    ushort x,
    ushort y);

xcb_void_cookie_t xcb_create_glyph_cursor_checked (
    xcb_connection_t* c,
    xcb_cursor_t cid,
    xcb_font_t source_font,
    xcb_font_t mask_font,
    ushort source_char,
    ushort mask_char,
    ushort fore_red,
    ushort fore_green,
    ushort fore_blue,
    ushort back_red,
    ushort back_green,
    ushort back_blue);

xcb_void_cookie_t xcb_create_glyph_cursor (
    xcb_connection_t* c,
    xcb_cursor_t cid,
    xcb_font_t source_font,
    xcb_font_t mask_font,
    ushort source_char,
    ushort mask_char,
    ushort fore_red,
    ushort fore_green,
    ushort fore_blue,
    ushort back_red,
    ushort back_green,
    ushort back_blue);

xcb_void_cookie_t xcb_free_cursor_checked (
    xcb_connection_t* c,
    xcb_cursor_t cursor);

xcb_void_cookie_t xcb_free_cursor (xcb_connection_t* c, xcb_cursor_t cursor);

xcb_void_cookie_t xcb_recolor_cursor_checked (
    xcb_connection_t* c,
    xcb_cursor_t cursor,
    ushort fore_red,
    ushort fore_green,
    ushort fore_blue,
    ushort back_red,
    ushort back_green,
    ushort back_blue);

xcb_void_cookie_t xcb_recolor_cursor (
    xcb_connection_t* c,
    xcb_cursor_t cursor,
    ushort fore_red,
    ushort fore_green,
    ushort fore_blue,
    ushort back_red,
    ushort back_green,
    ushort back_blue);

xcb_query_best_size_cookie_t xcb_query_best_size (
    xcb_connection_t* c,
    ubyte _class,
    xcb_drawable_t drawable,
    ushort width,
    ushort height);

xcb_query_best_size_cookie_t xcb_query_best_size_unchecked (
    xcb_connection_t* c,
    ubyte _class,
    xcb_drawable_t drawable,
    ushort width,
    ushort height);

xcb_query_best_size_reply_t* xcb_query_best_size_reply (
    xcb_connection_t* c,
    xcb_query_best_size_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_query_extension_sizeof (const(void)* _buffer);

xcb_query_extension_cookie_t xcb_query_extension (
    xcb_connection_t* c,
    ushort name_len,
    const(char)* name);

xcb_query_extension_cookie_t xcb_query_extension_unchecked (
    xcb_connection_t* c,
    ushort name_len,
    const(char)* name);

xcb_query_extension_reply_t* xcb_query_extension_reply (
    xcb_connection_t* c,
    xcb_query_extension_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_list_extensions_sizeof (const(void)* _buffer);

xcb_list_extensions_cookie_t xcb_list_extensions (xcb_connection_t* c);

xcb_list_extensions_cookie_t xcb_list_extensions_unchecked (
    xcb_connection_t* c);

int xcb_list_extensions_names_length (const(xcb_list_extensions_reply_t)* R);

xcb_str_iterator_t xcb_list_extensions_names_iterator (
    const(xcb_list_extensions_reply_t)* R);

xcb_list_extensions_reply_t* xcb_list_extensions_reply (
    xcb_connection_t* c,
    xcb_list_extensions_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_change_keyboard_mapping_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_change_keyboard_mapping_checked (
    xcb_connection_t* c,
    ubyte keycode_count,
    xcb_keycode_t first_keycode,
    ubyte keysyms_per_keycode,
    const(xcb_keysym_t)* keysyms);

xcb_void_cookie_t xcb_change_keyboard_mapping (
    xcb_connection_t* c,
    ubyte keycode_count,
    xcb_keycode_t first_keycode,
    ubyte keysyms_per_keycode,
    const(xcb_keysym_t)* keysyms);

xcb_keysym_t* xcb_change_keyboard_mapping_keysyms (
    const(xcb_change_keyboard_mapping_request_t)* R);

int xcb_change_keyboard_mapping_keysyms_length (
    const(xcb_change_keyboard_mapping_request_t)* R);

xcb_generic_iterator_t xcb_change_keyboard_mapping_keysyms_end (
    const(xcb_change_keyboard_mapping_request_t)* R);

int xcb_get_keyboard_mapping_sizeof (const(void)* _buffer);

xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping (
    xcb_connection_t* c,
    xcb_keycode_t first_keycode,
    ubyte count);

xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping_unchecked (
    xcb_connection_t* c,
    xcb_keycode_t first_keycode,
    ubyte count);

xcb_keysym_t* xcb_get_keyboard_mapping_keysyms (
    const(xcb_get_keyboard_mapping_reply_t)* R);

int xcb_get_keyboard_mapping_keysyms_length (
    const(xcb_get_keyboard_mapping_reply_t)* R);

xcb_generic_iterator_t xcb_get_keyboard_mapping_keysyms_end (
    const(xcb_get_keyboard_mapping_reply_t)* R);

xcb_get_keyboard_mapping_reply_t* xcb_get_keyboard_mapping_reply (
    xcb_connection_t* c,
    xcb_get_keyboard_mapping_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_change_keyboard_control_value_list_serialize (
    void** _buffer,
    uint value_mask,
    const(xcb_change_keyboard_control_value_list_t)* _aux);

int xcb_change_keyboard_control_value_list_unpack (
    const(void)* _buffer,
    uint value_mask,
    xcb_change_keyboard_control_value_list_t* _aux);

int xcb_change_keyboard_control_value_list_sizeof (
    const(void)* _buffer,
    uint value_mask);

int xcb_change_keyboard_control_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_change_keyboard_control_checked (
    xcb_connection_t* c,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_change_keyboard_control (
    xcb_connection_t* c,
    uint value_mask,
    const(void)* value_list);

xcb_void_cookie_t xcb_change_keyboard_control_aux_checked (
    xcb_connection_t* c,
    uint value_mask,
    const(xcb_change_keyboard_control_value_list_t)* value_list);

xcb_void_cookie_t xcb_change_keyboard_control_aux (
    xcb_connection_t* c,
    uint value_mask,
    const(xcb_change_keyboard_control_value_list_t)* value_list);

void* xcb_change_keyboard_control_value_list (
    const(xcb_change_keyboard_control_request_t)* R);

xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control (
    xcb_connection_t* c);

xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control_unchecked (
    xcb_connection_t* c);

xcb_get_keyboard_control_reply_t* xcb_get_keyboard_control_reply (
    xcb_connection_t* c,
    xcb_get_keyboard_control_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_bell_checked (xcb_connection_t* c, byte percent);

xcb_void_cookie_t xcb_bell (xcb_connection_t* c, byte percent);

xcb_void_cookie_t xcb_change_pointer_control_checked (
    xcb_connection_t* c,
    short acceleration_numerator,
    short acceleration_denominator,
    short threshold,
    ubyte do_acceleration,
    ubyte do_threshold);

xcb_void_cookie_t xcb_change_pointer_control (
    xcb_connection_t* c,
    short acceleration_numerator,
    short acceleration_denominator,
    short threshold,
    ubyte do_acceleration,
    ubyte do_threshold);

xcb_get_pointer_control_cookie_t xcb_get_pointer_control (xcb_connection_t* c);

xcb_get_pointer_control_cookie_t xcb_get_pointer_control_unchecked (
    xcb_connection_t* c);

xcb_get_pointer_control_reply_t* xcb_get_pointer_control_reply (
    xcb_connection_t* c,
    xcb_get_pointer_control_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_set_screen_saver_checked (
    xcb_connection_t* c,
    short timeout,
    short interval,
    ubyte prefer_blanking,
    ubyte allow_exposures);

xcb_void_cookie_t xcb_set_screen_saver (
    xcb_connection_t* c,
    short timeout,
    short interval,
    ubyte prefer_blanking,
    ubyte allow_exposures);

xcb_get_screen_saver_cookie_t xcb_get_screen_saver (xcb_connection_t* c);

xcb_get_screen_saver_cookie_t xcb_get_screen_saver_unchecked (
    xcb_connection_t* c);

xcb_get_screen_saver_reply_t* xcb_get_screen_saver_reply (
    xcb_connection_t* c,
    xcb_get_screen_saver_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_change_hosts_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_change_hosts_checked (
    xcb_connection_t* c,
    ubyte mode,
    ubyte family,
    ushort address_len,
    const(ubyte)* address);

xcb_void_cookie_t xcb_change_hosts (
    xcb_connection_t* c,
    ubyte mode,
    ubyte family,
    ushort address_len,
    const(ubyte)* address);

ubyte* xcb_change_hosts_address (const(xcb_change_hosts_request_t)* R);

int xcb_change_hosts_address_length (const(xcb_change_hosts_request_t)* R);

xcb_generic_iterator_t xcb_change_hosts_address_end (
    const(xcb_change_hosts_request_t)* R);

int xcb_host_sizeof (const(void)* _buffer);

ubyte* xcb_host_address (const(xcb_host_t)* R);

int xcb_host_address_length (const(xcb_host_t)* R);

xcb_generic_iterator_t xcb_host_address_end (const(xcb_host_t)* R);

void xcb_host_next (xcb_host_iterator_t* i);

xcb_generic_iterator_t xcb_host_end (xcb_host_iterator_t i);

int xcb_list_hosts_sizeof (const(void)* _buffer);

xcb_list_hosts_cookie_t xcb_list_hosts (xcb_connection_t* c);

xcb_list_hosts_cookie_t xcb_list_hosts_unchecked (xcb_connection_t* c);

int xcb_list_hosts_hosts_length (const(xcb_list_hosts_reply_t)* R);

xcb_host_iterator_t xcb_list_hosts_hosts_iterator (
    const(xcb_list_hosts_reply_t)* R);

xcb_list_hosts_reply_t* xcb_list_hosts_reply (
    xcb_connection_t* c,
    xcb_list_hosts_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_set_access_control_checked (
    xcb_connection_t* c,
    ubyte mode);

xcb_void_cookie_t xcb_set_access_control (xcb_connection_t* c, ubyte mode);

xcb_void_cookie_t xcb_set_close_down_mode_checked (
    xcb_connection_t* c,
    ubyte mode);

xcb_void_cookie_t xcb_set_close_down_mode (xcb_connection_t* c, ubyte mode);

xcb_void_cookie_t xcb_kill_client_checked (xcb_connection_t* c, uint resource);

xcb_void_cookie_t xcb_kill_client (xcb_connection_t* c, uint resource);

int xcb_rotate_properties_sizeof (const(void)* _buffer);

xcb_void_cookie_t xcb_rotate_properties_checked (
    xcb_connection_t* c,
    xcb_window_t window,
    ushort atoms_len,
    short delta,
    const(xcb_atom_t)* atoms);

xcb_void_cookie_t xcb_rotate_properties (
    xcb_connection_t* c,
    xcb_window_t window,
    ushort atoms_len,
    short delta,
    const(xcb_atom_t)* atoms);

xcb_atom_t* xcb_rotate_properties_atoms (
    const(xcb_rotate_properties_request_t)* R);

int xcb_rotate_properties_atoms_length (
    const(xcb_rotate_properties_request_t)* R);

xcb_generic_iterator_t xcb_rotate_properties_atoms_end (
    const(xcb_rotate_properties_request_t)* R);

xcb_void_cookie_t xcb_force_screen_saver_checked (
    xcb_connection_t* c,
    ubyte mode);

xcb_void_cookie_t xcb_force_screen_saver (xcb_connection_t* c, ubyte mode);

int xcb_set_pointer_mapping_sizeof (const(void)* _buffer);

xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping (
    xcb_connection_t* c,
    ubyte map_len,
    const(ubyte)* map);

xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping_unchecked (
    xcb_connection_t* c,
    ubyte map_len,
    const(ubyte)* map);

xcb_set_pointer_mapping_reply_t* xcb_set_pointer_mapping_reply (
    xcb_connection_t* c,
    xcb_set_pointer_mapping_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_get_pointer_mapping_sizeof (const(void)* _buffer);

xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping (xcb_connection_t* c);

xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping_unchecked (
    xcb_connection_t* c);

ubyte* xcb_get_pointer_mapping_map (const(xcb_get_pointer_mapping_reply_t)* R);

int xcb_get_pointer_mapping_map_length (
    const(xcb_get_pointer_mapping_reply_t)* R);

xcb_generic_iterator_t xcb_get_pointer_mapping_map_end (
    const(xcb_get_pointer_mapping_reply_t)* R);

xcb_get_pointer_mapping_reply_t* xcb_get_pointer_mapping_reply (
    xcb_connection_t* c,
    xcb_get_pointer_mapping_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_set_modifier_mapping_sizeof (const(void)* _buffer);

xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping (
    xcb_connection_t* c,
    ubyte keycodes_per_modifier,
    const(xcb_keycode_t)* keycodes);

xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping_unchecked (
    xcb_connection_t* c,
    ubyte keycodes_per_modifier,
    const(xcb_keycode_t)* keycodes);

xcb_set_modifier_mapping_reply_t* xcb_set_modifier_mapping_reply (
    xcb_connection_t* c,
    xcb_set_modifier_mapping_cookie_t cookie,
    xcb_generic_error_t** e);

int xcb_get_modifier_mapping_sizeof (const(void)* _buffer);

xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping (
    xcb_connection_t* c);

xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping_unchecked (
    xcb_connection_t* c);

xcb_keycode_t* xcb_get_modifier_mapping_keycodes (
    const(xcb_get_modifier_mapping_reply_t)* R);

int xcb_get_modifier_mapping_keycodes_length (
    const(xcb_get_modifier_mapping_reply_t)* R);

xcb_generic_iterator_t xcb_get_modifier_mapping_keycodes_end (
    const(xcb_get_modifier_mapping_reply_t)* R);

xcb_get_modifier_mapping_reply_t* xcb_get_modifier_mapping_reply (
    xcb_connection_t* c,
    xcb_get_modifier_mapping_cookie_t cookie,
    xcb_generic_error_t** e);

xcb_void_cookie_t xcb_no_operation_checked (xcb_connection_t* c);

xcb_void_cookie_t xcb_no_operation (xcb_connection_t* c);

struct xcb_auth_info_t
{
    int namelen;
    char* name;
    int datalen;
    char* data;
}

int xcb_flush (xcb_connection_t* c);

uint xcb_get_maximum_request_length (xcb_connection_t* c);

void xcb_prefetch_maximum_request_length (xcb_connection_t* c);

xcb_generic_event_t* xcb_wait_for_event (xcb_connection_t* c);

xcb_generic_event_t* xcb_poll_for_event (xcb_connection_t* c);

xcb_generic_event_t* xcb_poll_for_queued_event (xcb_connection_t* c);

struct xcb_special_event;
alias xcb_special_event_t = xcb_special_event;

xcb_generic_event_t* xcb_poll_for_special_event (
    xcb_connection_t* c,
    xcb_special_event_t* se);

xcb_generic_event_t* xcb_wait_for_special_event (
    xcb_connection_t* c,
    xcb_special_event_t* se);

struct xcb_extension_t;

xcb_special_event_t* xcb_register_for_special_xge (
    xcb_connection_t* c,
    xcb_extension_t* ext,
    uint eid,
    uint* stamp);

void xcb_unregister_for_special_event (
    xcb_connection_t* c,
    xcb_special_event_t* se);

xcb_generic_error_t* xcb_request_check (xcb_connection_t* c, xcb_void_cookie_t cookie);

void xcb_discard_reply (xcb_connection_t* c, uint sequence);

void xcb_discard_reply64 (xcb_connection_t* c, ulong sequence);

const(xcb_query_extension_reply_t)* xcb_get_extension_data (xcb_connection_t* c, xcb_extension_t* ext);

void xcb_prefetch_extension_data (xcb_connection_t* c, xcb_extension_t* ext);

const(xcb_setup_t)* xcb_get_setup (xcb_connection_t* c);

int xcb_get_file_descriptor (xcb_connection_t* c);

int xcb_connection_has_error (xcb_connection_t* c);

xcb_connection_t* xcb_connect_to_fd (int fd, xcb_auth_info_t* auth_info);

void xcb_disconnect (xcb_connection_t* c);

int xcb_parse_display (const(char)* name, char** host, int* display, int* screen);

xcb_connection_t* xcb_connect (const(char)* displayname, int* screenp);

xcb_connection_t* xcb_connect_to_display_with_auth_info (const(char)* display, xcb_auth_info_t* auth, int* screen);

uint xcb_generate_id (xcb_connection_t* c);

ulong xcb_total_read (xcb_connection_t* c);

ulong xcb_total_written (xcb_connection_t* c);
