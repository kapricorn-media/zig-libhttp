const bssl = @import("bearssl");

// brssl ta

var TA0_DN = [_]u8 {
    0x30, 0x14, 0x31, 0x12, 0x30, 0x10, 0x06, 0x03, 0x55, 0x04, 0x03, 0x0C,
    0x09, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x68, 0x6F, 0x73, 0x74
};

var TA0_RSA_N = [_]u8 {
    0xBA, 0x68, 0x49, 0x23, 0xBF, 0xD1, 0xF2, 0x63, 0x42, 0x5D, 0x45, 0x0E,
    0xDE, 0xAF, 0x26, 0x30, 0x64, 0xA6, 0x32, 0x15, 0x78, 0x1B, 0x00, 0x95,
    0x1D, 0x21, 0x61, 0xF1, 0x8A, 0x0F, 0xA2, 0x85, 0x02, 0xA6, 0xAA, 0x76,
    0xAA, 0xA9, 0x26, 0xA9, 0xCC, 0x0E, 0x6D, 0x76, 0x1C, 0x4C, 0x39, 0x03,
    0x47, 0x32, 0x51, 0xC2, 0x69, 0xCC, 0x9A, 0x29, 0x79, 0x1A, 0x93, 0x1F,
    0x5C, 0x3D, 0x8D, 0x31, 0x1D, 0x73, 0xCA, 0x94, 0x9D, 0xD4, 0x28, 0x36,
    0xA1, 0xF4, 0x04, 0x2E, 0x4D, 0xDD, 0xED, 0xC9, 0x9A, 0x1D, 0x19, 0x58,
    0xC8, 0x79, 0x21, 0x5C, 0x37, 0x97, 0x6E, 0x43, 0x49, 0xF6, 0xD2, 0xDD,
    0x98, 0x9A, 0x48, 0x25, 0x9C, 0x3C, 0x3A, 0xFA, 0x6C, 0xD0, 0xF7, 0x2B,
    0x6A, 0x53, 0xCD, 0x25, 0x59, 0xD8, 0xF6, 0xF9, 0xA5, 0xC1, 0x15, 0x9E,
    0xB9, 0x64, 0x11, 0xC5, 0xA8, 0x0A, 0x3B, 0xF5, 0x99, 0x26, 0x6D, 0xF4,
    0xF4, 0x3C, 0xF0, 0xEF, 0x26, 0x40, 0x67, 0xD3, 0x59, 0x90, 0x96, 0xFD,
    0x11, 0xCD, 0x19, 0x98, 0xC5, 0x9D, 0xD0, 0xA6, 0x04, 0x9E, 0x79, 0x02,
    0x77, 0x5C, 0xDB, 0x09, 0x7C, 0x77, 0x05, 0x36, 0xF9, 0x29, 0x30, 0x58,
    0x1A, 0xBF, 0x43, 0x01, 0xBF, 0xEA, 0x56, 0x88, 0x03, 0x20, 0xAE, 0xF3,
    0x77, 0x57, 0x7C, 0xBE, 0x38, 0xAB, 0x31, 0x3A, 0x3F, 0xCC, 0x03, 0x63,
    0x30, 0x10, 0x6C, 0x7F, 0xBE, 0xC2, 0x4D, 0x49, 0xC4, 0xD6, 0x6D, 0xB3,
    0xB6, 0xBF, 0x56, 0xA9, 0xF0, 0x16, 0x4D, 0xE9, 0x30, 0x2B, 0xAE, 0x60,
    0xDB, 0x01, 0x9B, 0x79, 0xCD, 0x5F, 0x52, 0x52, 0x23, 0xE6, 0xA3, 0x1A,
    0x64, 0xDC, 0xED, 0x62, 0xF8, 0xDE, 0x2D, 0x18, 0x57, 0x12, 0x09, 0x66,
    0xDB, 0xD3, 0x52, 0x03, 0x51, 0xF6, 0xC6, 0x0C, 0x66, 0xDB, 0x38, 0xED,
    0x03, 0x12, 0x53, 0xA1
};

var TA0_RSA_E = [_]u8 {
    0x01, 0x00, 0x01
};

pub const TAs = [_]bssl.c.br_x509_trust_anchor {
    .{
        .dn = .{
            .data = &TA0_DN[0],
            .len = TA0_DN.len
        },
        .flags = 0,
        .pkey = .{
            .key_type = bssl.c.BR_KEYTYPE_RSA,
            .key = .{
                .rsa = .{
                    .n = &TA0_RSA_N[0], .nlen = TA0_RSA_N.len,
                    .e = &TA0_RSA_E[0], .elen = TA0_RSA_E.len,
                }
            }
        }
    }
};

// brssl chain

var CERT0 = [_]u8 {
    0x30, 0x82, 0x02, 0xE5, 0x30, 0x82, 0x01, 0xCD, 0xA0, 0x03, 0x02, 0x01,
    0x02, 0x02, 0x09, 0x00, 0xC2, 0x1D, 0x8E, 0xCD, 0x64, 0x5C, 0x97, 0x68,
    0x30, 0x0D, 0x06, 0x09, 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01,
    0x0B, 0x05, 0x00, 0x30, 0x14, 0x31, 0x12, 0x30, 0x10, 0x06, 0x03, 0x55,
    0x04, 0x03, 0x0C, 0x09, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x68, 0x6F, 0x73,
    0x74, 0x30, 0x1E, 0x17, 0x0D, 0x32, 0x31, 0x31, 0x32, 0x32, 0x35, 0x32,
    0x30, 0x33, 0x34, 0x35, 0x34, 0x5A, 0x17, 0x0D, 0x32, 0x32, 0x30, 0x31,
    0x32, 0x34, 0x32, 0x30, 0x33, 0x34, 0x35, 0x34, 0x5A, 0x30, 0x14, 0x31,
    0x12, 0x30, 0x10, 0x06, 0x03, 0x55, 0x04, 0x03, 0x0C, 0x09, 0x6C, 0x6F,
    0x63, 0x61, 0x6C, 0x68, 0x6F, 0x73, 0x74, 0x30, 0x82, 0x01, 0x22, 0x30,
    0x0D, 0x06, 0x09, 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x01,
    0x05, 0x00, 0x03, 0x82, 0x01, 0x0F, 0x00, 0x30, 0x82, 0x01, 0x0A, 0x02,
    0x82, 0x01, 0x01, 0x00, 0xBA, 0x68, 0x49, 0x23, 0xBF, 0xD1, 0xF2, 0x63,
    0x42, 0x5D, 0x45, 0x0E, 0xDE, 0xAF, 0x26, 0x30, 0x64, 0xA6, 0x32, 0x15,
    0x78, 0x1B, 0x00, 0x95, 0x1D, 0x21, 0x61, 0xF1, 0x8A, 0x0F, 0xA2, 0x85,
    0x02, 0xA6, 0xAA, 0x76, 0xAA, 0xA9, 0x26, 0xA9, 0xCC, 0x0E, 0x6D, 0x76,
    0x1C, 0x4C, 0x39, 0x03, 0x47, 0x32, 0x51, 0xC2, 0x69, 0xCC, 0x9A, 0x29,
    0x79, 0x1A, 0x93, 0x1F, 0x5C, 0x3D, 0x8D, 0x31, 0x1D, 0x73, 0xCA, 0x94,
    0x9D, 0xD4, 0x28, 0x36, 0xA1, 0xF4, 0x04, 0x2E, 0x4D, 0xDD, 0xED, 0xC9,
    0x9A, 0x1D, 0x19, 0x58, 0xC8, 0x79, 0x21, 0x5C, 0x37, 0x97, 0x6E, 0x43,
    0x49, 0xF6, 0xD2, 0xDD, 0x98, 0x9A, 0x48, 0x25, 0x9C, 0x3C, 0x3A, 0xFA,
    0x6C, 0xD0, 0xF7, 0x2B, 0x6A, 0x53, 0xCD, 0x25, 0x59, 0xD8, 0xF6, 0xF9,
    0xA5, 0xC1, 0x15, 0x9E, 0xB9, 0x64, 0x11, 0xC5, 0xA8, 0x0A, 0x3B, 0xF5,
    0x99, 0x26, 0x6D, 0xF4, 0xF4, 0x3C, 0xF0, 0xEF, 0x26, 0x40, 0x67, 0xD3,
    0x59, 0x90, 0x96, 0xFD, 0x11, 0xCD, 0x19, 0x98, 0xC5, 0x9D, 0xD0, 0xA6,
    0x04, 0x9E, 0x79, 0x02, 0x77, 0x5C, 0xDB, 0x09, 0x7C, 0x77, 0x05, 0x36,
    0xF9, 0x29, 0x30, 0x58, 0x1A, 0xBF, 0x43, 0x01, 0xBF, 0xEA, 0x56, 0x88,
    0x03, 0x20, 0xAE, 0xF3, 0x77, 0x57, 0x7C, 0xBE, 0x38, 0xAB, 0x31, 0x3A,
    0x3F, 0xCC, 0x03, 0x63, 0x30, 0x10, 0x6C, 0x7F, 0xBE, 0xC2, 0x4D, 0x49,
    0xC4, 0xD6, 0x6D, 0xB3, 0xB6, 0xBF, 0x56, 0xA9, 0xF0, 0x16, 0x4D, 0xE9,
    0x30, 0x2B, 0xAE, 0x60, 0xDB, 0x01, 0x9B, 0x79, 0xCD, 0x5F, 0x52, 0x52,
    0x23, 0xE6, 0xA3, 0x1A, 0x64, 0xDC, 0xED, 0x62, 0xF8, 0xDE, 0x2D, 0x18,
    0x57, 0x12, 0x09, 0x66, 0xDB, 0xD3, 0x52, 0x03, 0x51, 0xF6, 0xC6, 0x0C,
    0x66, 0xDB, 0x38, 0xED, 0x03, 0x12, 0x53, 0xA1, 0x02, 0x03, 0x01, 0x00,
    0x01, 0xA3, 0x3A, 0x30, 0x38, 0x30, 0x14, 0x06, 0x03, 0x55, 0x1D, 0x11,
    0x04, 0x0D, 0x30, 0x0B, 0x82, 0x09, 0x6C, 0x6F, 0x63, 0x61, 0x6C, 0x68,
    0x6F, 0x73, 0x74, 0x30, 0x0B, 0x06, 0x03, 0x55, 0x1D, 0x0F, 0x04, 0x04,
    0x03, 0x02, 0x07, 0x80, 0x30, 0x13, 0x06, 0x03, 0x55, 0x1D, 0x25, 0x04,
    0x0C, 0x30, 0x0A, 0x06, 0x08, 0x2B, 0x06, 0x01, 0x05, 0x05, 0x07, 0x03,
    0x01, 0x30, 0x0D, 0x06, 0x09, 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01,
    0x01, 0x0B, 0x05, 0x00, 0x03, 0x82, 0x01, 0x01, 0x00, 0x93, 0x42, 0x46,
    0x46, 0xAC, 0xEB, 0xAD, 0x31, 0xB7, 0x36, 0x81, 0xEF, 0xD4, 0x91, 0x70,
    0xE4, 0xCC, 0x0F, 0xB7, 0x0A, 0x3E, 0x62, 0xD5, 0xB7, 0x6B, 0x99, 0x32,
    0x3D, 0x49, 0x2F, 0x26, 0xD6, 0xE4, 0x60, 0xCA, 0x87, 0x7F, 0xFD, 0xDF,
    0x6F, 0x1C, 0xB5, 0xE2, 0x16, 0x5D, 0xAC, 0xD1, 0x39, 0x87, 0xD1, 0x28,
    0x94, 0xB9, 0xCF, 0xCA, 0xF2, 0xD3, 0xAE, 0xE5, 0x0F, 0x1A, 0x3A, 0x1C,
    0x6D, 0x78, 0xEE, 0xD1, 0xFB, 0x99, 0x45, 0xBA, 0xCF, 0x40, 0x39, 0x89,
    0xF6, 0x5F, 0x18, 0xFB, 0x00, 0xFD, 0xB2, 0x82, 0x27, 0xA3, 0x62, 0x42,
    0xD9, 0x2B, 0x31, 0x20, 0x71, 0x8D, 0x4C, 0xC7, 0xBC, 0x44, 0xC2, 0xA0,
    0x92, 0x94, 0x11, 0x11, 0x18, 0x60, 0x4F, 0xD0, 0x02, 0x8B, 0x0F, 0x26,
    0x62, 0x53, 0x2A, 0x25, 0x9D, 0x53, 0x7A, 0x13, 0x72, 0x11, 0xFA, 0xD0,
    0x07, 0xF9, 0x6D, 0x74, 0x55, 0x6E, 0xAE, 0xCB, 0xB7, 0x71, 0xE0, 0x9F,
    0xF8, 0x24, 0xB7, 0x45, 0x64, 0x3A, 0x54, 0x95, 0x74, 0x1A, 0x0C, 0x78,
    0x26, 0x20, 0xD9, 0x7A, 0x05, 0x00, 0xEB, 0x24, 0xAE, 0xF1, 0x8A, 0x0E,
    0xA6, 0xA9, 0x0E, 0xD3, 0x84, 0x57, 0x74, 0x45, 0x5E, 0x8B, 0xF2, 0xBD,
    0x57, 0x78, 0x59, 0x7E, 0x65, 0x73, 0xC9, 0x80, 0x38, 0x63, 0xC9, 0x10,
    0x98, 0xC9, 0x8A, 0x62, 0xB7, 0x5D, 0x7D, 0x69, 0x80, 0xDF, 0x15, 0xE9,
    0xBE, 0xE6, 0x05, 0xFF, 0x47, 0xB0, 0x52, 0x48, 0x35, 0xBF, 0xDD, 0x6E,
    0xEB, 0xBA, 0xB2, 0x18, 0xEB, 0xF7, 0xB9, 0x68, 0x99, 0x56, 0xC4, 0x28,
    0x11, 0xCF, 0xE8, 0x14, 0x59, 0x8E, 0x2C, 0x17, 0x41, 0x5F, 0x8E, 0xB4,
    0xE1, 0x43, 0xF8, 0xC0, 0xA2, 0xE9, 0xFC, 0x74, 0xF8, 0x46, 0xF7, 0x19,
    0xCD, 0xA8, 0x55, 0x6D, 0x4D, 0x1B, 0x23, 0xEE, 0xEF, 0x70, 0xC6, 0x59,
    0x14
};

pub const CHAIN = [_]bssl.c.br_x509_certificate {
    .{
        .data = &CERT0[0],
        .data_len = CERT0.len
    },
};

// brssl skey

var RSA_P = [_]u8 {
    0xF6, 0xFB, 0x18, 0x10, 0xDF, 0xA4, 0x91, 0xFB, 0x21, 0xC8, 0xF7, 0x3A,
    0x72, 0xEC, 0xBB, 0xF2, 0x5E, 0xA0, 0xCD, 0x5D, 0xB8, 0x6B, 0x35, 0x7D,
    0x57, 0xF1, 0x0E, 0xB8, 0x10, 0x8E, 0x14, 0x59, 0x9A, 0xAC, 0x9A, 0x4B,
    0x7B, 0xCA, 0xD7, 0x94, 0x2F, 0x6E, 0xA1, 0xBB, 0x27, 0x6A, 0x27, 0x33,
    0x8B, 0xCC, 0xF5, 0x3E, 0x1F, 0xC0, 0x92, 0xD4, 0x79, 0xE2, 0x73, 0xB2,
    0x76, 0x9F, 0x40, 0xD9, 0xBE, 0xF1, 0x5F, 0xF1, 0x95, 0x8F, 0x0A, 0xAF,
    0x50, 0x31, 0x90, 0x20, 0xE4, 0x8B, 0xF6, 0xD4, 0xB3, 0x10, 0x40, 0x42,
    0xFF, 0x32, 0x5D, 0xBA, 0x0C, 0x77, 0xB0, 0xAF, 0xF8, 0x53, 0x45, 0x1B,
    0x67, 0xCA, 0x19, 0xCD, 0xC1, 0xC4, 0xE8, 0x37, 0x65, 0x10, 0xAC, 0x50,
    0x47, 0xAA, 0x2E, 0xFB, 0x20, 0x1A, 0xE4, 0x9B, 0xEC, 0x79, 0x86, 0xB7,
    0xD7, 0x4D, 0x3F, 0xF1, 0xE1, 0x92, 0x01, 0x83
};

var RSA_Q = [_]u8 {
    0xC1, 0x36, 0xEB, 0x52, 0x5B, 0x5A, 0x6E, 0xFF, 0x10, 0xE9, 0x87, 0xEC,
    0x3B, 0x04, 0x51, 0x20, 0x19, 0xBC, 0x69, 0x63, 0x5B, 0x62, 0xAD, 0xE6,
    0x58, 0x7C, 0x26, 0x2B, 0xFC, 0x12, 0x48, 0xDC, 0x0F, 0x9F, 0x13, 0xEE,
    0x91, 0xEB, 0x9E, 0xFE, 0x57, 0x57, 0xED, 0x81, 0x31, 0xCC, 0x2A, 0xD6,
    0x17, 0xC5, 0xB1, 0x92, 0x8F, 0x9C, 0xEC, 0xA2, 0xF3, 0x58, 0xA9, 0x07,
    0x79, 0x39, 0x9A, 0xFE, 0xC9, 0x2E, 0x14, 0x40, 0xA8, 0x79, 0x65, 0xA7,
    0x85, 0x54, 0x0C, 0x3C, 0xEB, 0x05, 0xE4, 0x5B, 0xDD, 0x68, 0xC4, 0xB1,
    0x79, 0x8D, 0x78, 0x9C, 0xA0, 0x0B, 0xDF, 0x6F, 0xDC, 0x4A, 0x15, 0xE2,
    0x48, 0xA8, 0xE4, 0x21, 0x90, 0xFF, 0x8E, 0xC7, 0xE2, 0x48, 0xF8, 0x69,
    0x03, 0x40, 0xEA, 0x12, 0x69, 0x07, 0xA4, 0x4B, 0xC1, 0x7A, 0x27, 0x0B,
    0x2E, 0x40, 0x93, 0xC0, 0x58, 0xCE, 0x41, 0x0B
};

var RSA_DP = [_]u8 {
    0x9B, 0x3A, 0x39, 0x67, 0xF1, 0x87, 0xD7, 0x90, 0x45, 0x2D, 0xAF, 0xE4,
    0xF6, 0x72, 0x3F, 0xB6, 0x17, 0x2F, 0x6D, 0xA3, 0xA7, 0xD3, 0x09, 0xED,
    0x5B, 0xA6, 0x50, 0x1F, 0xF3, 0x97, 0xB8, 0xC6, 0x90, 0x66, 0x47, 0x1B,
    0x86, 0x14, 0x78, 0xE5, 0xD3, 0xE1, 0xEE, 0x98, 0x58, 0x2F, 0x69, 0xB0,
    0x05, 0xFF, 0xAD, 0x6B, 0x7C, 0x3D, 0x66, 0x8B, 0x50, 0x87, 0xB9, 0x3B,
    0xC3, 0x3E, 0x58, 0x5E, 0x02, 0x9A, 0x66, 0x38, 0xCA, 0x4C, 0xFA, 0xE4,
    0x30, 0xBC, 0xD5, 0xDF, 0x36, 0x85, 0x99, 0x7F, 0x19, 0x83, 0xEF, 0x3F,
    0xAC, 0x71, 0x15, 0x63, 0x67, 0x8E, 0x9A, 0x68, 0x1E, 0xE5, 0x07, 0x1C,
    0x30, 0x61, 0x5F, 0x52, 0x68, 0xA4, 0xBF, 0x66, 0x81, 0x88, 0xB7, 0x24,
    0x45, 0xC6, 0x7A, 0x7C, 0xAF, 0x32, 0xF7, 0xD7, 0xE0, 0x0A, 0x89, 0x57,
    0x66, 0x64, 0x50, 0xFA, 0x4F, 0x51, 0x9A, 0xCD
};

var RSA_DQ = [_]u8 {
    0xBC, 0x78, 0x8D, 0xE3, 0xB0, 0x28, 0xEE, 0xCC, 0xEF, 0xFA, 0x5D, 0x14,
    0x1A, 0x1D, 0x83, 0xE5, 0x04, 0x35, 0xBD, 0xB7, 0xA5, 0x95, 0x04, 0x7D,
    0x05, 0x23, 0x55, 0x38, 0xE2, 0x92, 0x13, 0x70, 0x55, 0xEC, 0x9E, 0xCC,
    0xC0, 0x9A, 0x4E, 0x65, 0x5B, 0x5D, 0xF1, 0xD7, 0x6C, 0x73, 0xF3, 0xF5,
    0x13, 0x0B, 0x4C, 0xC3, 0xE2, 0x42, 0xF8, 0xB1, 0x9B, 0x1E, 0x89, 0x03,
    0x39, 0x44, 0xEF, 0xE4, 0x48, 0xEA, 0x21, 0xE7, 0x50, 0x6F, 0xDA, 0xB1,
    0x26, 0x65, 0x6D, 0xEA, 0x9E, 0x77, 0x08, 0xE2, 0x73, 0x7F, 0x97, 0x1E,
    0x67, 0xAB, 0x90, 0x53, 0x77, 0xEB, 0x1C, 0xF1, 0x48, 0xB9, 0x1B, 0xCF,
    0xB7, 0x80, 0xC7, 0xC7, 0xD6, 0x60, 0xF3, 0x2E, 0x17, 0x95, 0x86, 0x7B,
    0x29, 0x29, 0x51, 0x2A, 0xD4, 0x39, 0x18, 0x12, 0xAD, 0x90, 0x32, 0x35,
    0xBD, 0xD0, 0x50, 0x4F, 0xF8, 0x50, 0x79, 0x31
};

var RSA_IQ = [_]u8 {
    0x28, 0x10, 0x81, 0xE5, 0x03, 0xFF, 0xAE, 0xC9, 0x3D, 0x01, 0x7B, 0x66,
    0xF3, 0xB5, 0xDD, 0xD1, 0xA1, 0xBD, 0x36, 0x3E, 0x64, 0x6A, 0xFA, 0x1A,
    0x52, 0x2F, 0x4E, 0xDC, 0xD1, 0x31, 0x2E, 0x26, 0x6C, 0x57, 0x98, 0xF4,
    0x13, 0x40, 0xE7, 0x28, 0x45, 0x9A, 0xED, 0x31, 0xA3, 0xEA, 0xF9, 0xDA,
    0x8C, 0x7C, 0xD8, 0x66, 0x2D, 0x48, 0x83, 0x8D, 0xD6, 0x06, 0xD1, 0x85,
    0x62, 0xD7, 0xA2, 0x45, 0xCA, 0x89, 0x0D, 0x93, 0x05, 0x33, 0xE1, 0x94,
    0x99, 0xDF, 0x34, 0xAC, 0xA3, 0x05, 0x5E, 0x89, 0x67, 0xD5, 0xBF, 0x4B,
    0x2F, 0x9B, 0x09, 0xA2, 0x8C, 0x0E, 0x6D, 0xCF, 0x7E, 0x7B, 0x1B, 0xE1,
    0x79, 0x21, 0xB0, 0x0B, 0x0A, 0xE2, 0x73, 0x28, 0xDE, 0x4C, 0x86, 0xE8,
    0x2F, 0xE0, 0x45, 0x89, 0xA9, 0xCB, 0x6D, 0x16, 0xF6, 0x65, 0xFA, 0x74,
    0x09, 0x1D, 0xED, 0xEA, 0xC4, 0x9B, 0x51, 0x26
};

pub const RSA = bssl.c.br_rsa_private_key {
    .n_bitlen = 2048,
    .p = &RSA_P[0], .plen = RSA_P.len,
    .q = &RSA_Q[0], .qlen = RSA_Q.len,
    .dp = &RSA_DP[0], .dplen = RSA_DP.len,
    .dq = &RSA_DQ[0], .dqlen = RSA_DQ.len,
    .iq = &RSA_IQ[0], .iqlen = RSA_IQ.len
};
