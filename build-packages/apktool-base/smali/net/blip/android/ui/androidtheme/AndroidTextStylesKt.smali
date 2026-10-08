.class public abstract Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:J

.field public static final c:Landroidx/compose/ui/text/font/FontListFontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ln;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    const/16 v0, 0xe

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sput-wide v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->b:J

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->n:Landroidx/compose/ui/text/font/FontWeight;

    .line 24
    .line 25
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 26
    .line 27
    const/16 v2, 0xfa

    .line 28
    .line 29
    invoke-static {v2}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v4, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    aput-object v2, v4, v5

    .line 38
    .line 39
    invoke-direct {v1, v4}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Landroidx/compose/ui/text/font/ResourceFont;

    .line 43
    .line 44
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->o:Landroidx/compose/ui/text/font/FontWeight;

    .line 48
    .line 49
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 50
    .line 51
    const/16 v4, 0x15e

    .line 52
    .line 53
    invoke-static {v4}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-array v6, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 58
    .line 59
    aput-object v4, v6, v5

    .line 60
    .line 61
    invoke-direct {v1, v6}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Landroidx/compose/ui/text/font/ResourceFont;

    .line 65
    .line 66
    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->p:Landroidx/compose/ui/text/font/FontWeight;

    .line 70
    .line 71
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 72
    .line 73
    const/16 v6, 0x1c2

    .line 74
    .line 75
    invoke-static {v6}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    new-array v7, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 80
    .line 81
    aput-object v6, v7, v5

    .line 82
    .line 83
    invoke-direct {v1, v7}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 84
    .line 85
    .line 86
    new-instance v6, Landroidx/compose/ui/text/font/ResourceFont;

    .line 87
    .line 88
    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 92
    .line 93
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 94
    .line 95
    const/16 v7, 0x20d

    .line 96
    .line 97
    invoke-static {v7}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    new-array v8, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 102
    .line 103
    aput-object v7, v8, v5

    .line 104
    .line 105
    invoke-direct {v1, v8}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Landroidx/compose/ui/text/font/ResourceFont;

    .line 109
    .line 110
    invoke-direct {v7, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 114
    .line 115
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 116
    .line 117
    const/16 v8, 0x240

    .line 118
    .line 119
    invoke-static {v8}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    new-array v9, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 124
    .line 125
    aput-object v8, v9, v5

    .line 126
    .line 127
    invoke-direct {v1, v9}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 128
    .line 129
    .line 130
    new-instance v8, Landroidx/compose/ui/text/font/ResourceFont;

    .line 131
    .line 132
    invoke-direct {v8, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->s:Landroidx/compose/ui/text/font/FontWeight;

    .line 136
    .line 137
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 138
    .line 139
    const/16 v9, 0x273

    .line 140
    .line 141
    invoke-static {v9}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    new-array v10, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 146
    .line 147
    aput-object v9, v10, v5

    .line 148
    .line 149
    invoke-direct {v1, v10}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 150
    .line 151
    .line 152
    new-instance v9, Landroidx/compose/ui/text/font/ResourceFont;

    .line 153
    .line 154
    invoke-direct {v9, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 158
    .line 159
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 160
    .line 161
    const/16 v10, 0x2a8

    .line 162
    .line 163
    invoke-static {v10}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    new-array v11, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 168
    .line 169
    aput-object v10, v11, v5

    .line 170
    .line 171
    invoke-direct {v1, v11}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 172
    .line 173
    .line 174
    new-instance v10, Landroidx/compose/ui/text/font/ResourceFont;

    .line 175
    .line 176
    invoke-direct {v10, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 177
    .line 178
    .line 179
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 180
    .line 181
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 182
    .line 183
    const/16 v11, 0x320

    .line 184
    .line 185
    invoke-static {v11}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    new-array v12, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 190
    .line 191
    aput-object v11, v12, v5

    .line 192
    .line 193
    invoke-direct {v1, v12}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 194
    .line 195
    .line 196
    new-instance v11, Landroidx/compose/ui/text/font/ResourceFont;

    .line 197
    .line 198
    invoke-direct {v11, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 199
    .line 200
    .line 201
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->v:Landroidx/compose/ui/text/font/FontWeight;

    .line 202
    .line 203
    new-instance v1, Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 204
    .line 205
    const/16 v12, 0x384

    .line 206
    .line 207
    invoke-static {v12}, Landroidx/compose/ui/text/font/FontVariation;->a(I)Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    new-array v13, v3, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 212
    .line 213
    aput-object v12, v13, v5

    .line 214
    .line 215
    invoke-direct {v1, v13}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    .line 216
    .line 217
    .line 218
    new-instance v12, Landroidx/compose/ui/text/font/ResourceFont;

    .line 219
    .line 220
    invoke-direct {v12, v0, v1}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    .line 221
    .line 222
    .line 223
    const/16 v0, 0x9

    .line 224
    .line 225
    new-array v0, v0, [Landroidx/compose/ui/text/font/Font;

    .line 226
    .line 227
    aput-object v2, v0, v5

    .line 228
    .line 229
    aput-object v4, v0, v3

    .line 230
    .line 231
    const/4 v1, 0x2

    .line 232
    aput-object v6, v0, v1

    .line 233
    .line 234
    const/4 v1, 0x3

    .line 235
    aput-object v7, v0, v1

    .line 236
    .line 237
    const/4 v1, 0x4

    .line 238
    aput-object v8, v0, v1

    .line 239
    .line 240
    const/4 v1, 0x5

    .line 241
    aput-object v9, v0, v1

    .line 242
    .line 243
    const/4 v1, 0x6

    .line 244
    aput-object v10, v0, v1

    .line 245
    .line 246
    const/4 v1, 0x7

    .line 247
    aput-object v11, v0, v1

    .line 248
    .line 249
    const/16 v1, 0x8

    .line 250
    .line 251
    aput-object v12, v0, v1

    .line 252
    .line 253
    new-instance v1, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 254
    .line 255
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Lh;

    .line 266
    .line 267
    const/16 v2, 0xa

    .line 268
    .line 269
    invoke-direct {v0, v2}, Lh;-><init>(I)V

    .line 270
    .line 271
    .line 272
    sget-object v2, Lnet/blip/shared/DynamicFontTrackingKt;->a:Ljava/util/IdentityHashMap;

    .line 273
    .line 274
    invoke-virtual {v2, v1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    sput-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->c:Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 278
    .line 279
    return-void
.end method
