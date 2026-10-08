.class public abstract Landroidx/core/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

.field public static final b:Landroidx/collection/LruCache;

.field public static c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TypefaceCompat static init"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1f

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi31Impl;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v1, 0x1d

    .line 25
    .line 26
    if-lt v0, v1, :cond_1

    .line 27
    .line 28
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi29Impl;

    .line 29
    .line 30
    invoke-direct {v0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi28Impl;

    .line 37
    .line 38
    invoke-direct {v0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 42
    .line 43
    :goto_0
    new-instance v0, Landroidx/collection/LruCache;

    .line 44
    .line 45
    const/16 v1, 0x10

    .line 46
    .line 47
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->b:Landroidx/collection/LruCache;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->c:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    const-string v0, "TypefaceCompat.createFromFontInfo"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->b(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    const-string v0, "TypefaceCompat.createFromFontInfoWithFallback"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->c(Landroid/content/Context;Ljava/util/List;I)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static c(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Z)Landroid/graphics/Typeface;
    .locals 13

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    sget-object v3, Landroidx/core/graphics/TypefaceCompat;->b:Landroidx/collection/LruCache;

    .line 8
    .line 9
    if-eqz v1, :cond_f

    .line 10
    .line 11
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 12
    .line 13
    iget-object v5, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompat;->f(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v1, v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/core/provider/FontRequest;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/core/provider/FontRequest;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/core/graphics/TypefaceCompat;->f(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v4, 0x1f

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    if-ge v1, v4, :cond_2

    .line 59
    .line 60
    :goto_0
    move-object v1, v8

    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_2
    move v1, v7

    .line 64
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ge v1, v4, :cond_4

    .line 69
    .line 70
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Landroidx/core/provider/FontRequest;

    .line 75
    .line 76
    iget-object v4, v4, Landroidx/core/provider/FontRequest;->e:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v4}, Landroidx/core/graphics/TypefaceCompat;->f(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move v1, v7

    .line 89
    move-object v4, v8

    .line 90
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-ge v1, v9, :cond_9

    .line 95
    .line 96
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Landroidx/core/provider/FontRequest;

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    sub-int/2addr v10, v6

    .line 107
    if-ne v1, v10, :cond_5

    .line 108
    .line 109
    iget-object v10, v9, Landroidx/core/provider/FontRequest;->f:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-eqz v10, :cond_5

    .line 116
    .line 117
    iget-object v1, v9, Landroidx/core/provider/FontRequest;->e:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v4, v1}, Lbb;->s(Landroid/graphics/Typeface$CustomFallbackBuilder;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    iget-object v10, v9, Landroidx/core/provider/FontRequest;->e:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v11, v9, Landroidx/core/provider/FontRequest;->f:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompat;->f(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompat;->g(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    const-string v12, "TypefaceCompat"

    .line 136
    .line 137
    if-nez v10, :cond_6

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v4, "Unable identify the primary font for "

    .line 142
    .line 143
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v4, v9, Landroidx/core/provider/FontRequest;->e:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v4, ". Falling back to provider font."

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-nez v9, :cond_7

    .line 169
    .line 170
    :try_start_0
    invoke-static {}, Lxh;->o()V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lxh;->y()V

    .line 174
    .line 175
    .line 176
    invoke-static {v10}, Lng;->e(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/Font$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-static {v9, v11}, Lxh;->f(Landroid/graphics/fonts/Font$Builder;Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-static {v9}, Lxh;->g(Landroid/graphics/fonts/Font$Builder;)Landroid/graphics/fonts/Font;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-static {v9}, Lxh;->h(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-static {v9}, Lxh;->i(Landroid/graphics/fonts/FontFamily$Builder;)Landroid/graphics/fonts/FontFamily;

    .line 193
    .line 194
    .line 195
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_3

    .line 197
    :catch_0
    const-string v1, "Failed to clone Font instance. Fall back to provider font."

    .line 198
    .line 199
    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_7
    invoke-static {v10}, Lxh;->x(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-static {v9}, Lxh;->i(Landroid/graphics/fonts/FontFamily$Builder;)Landroid/graphics/fonts/FontFamily;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    :goto_3
    if-nez v4, :cond_8

    .line 213
    .line 214
    invoke-static {v9}, Lxh;->d(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    goto :goto_4

    .line 219
    :cond_8
    invoke-static {v4, v9}, Lxh;->u(Landroid/graphics/Typeface$CustomFallbackBuilder;Landroid/graphics/fonts/FontFamily;)V

    .line 220
    .line 221
    .line 222
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    goto/16 :goto_2

    .line 225
    .line 226
    :cond_9
    :goto_5
    invoke-static {v4}, Lxh;->e(Landroid/graphics/Typeface$CustomFallbackBuilder;)Landroid/graphics/Typeface;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :goto_6
    if-eqz v1, :cond_b

    .line 231
    .line 232
    if-eqz v0, :cond_a

    .line 233
    .line 234
    new-instance p0, Landroid/os/Handler;

    .line 235
    .line 236
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    .line 242
    .line 243
    new-instance p1, Lf3;

    .line 244
    .line 245
    invoke-direct {p1, v2, v0, v1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    .line 250
    .line 251
    :cond_a
    invoke-static/range {p2 .. p6}, Landroidx/core/graphics/TypefaceCompat;->e(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {v3, p0, v1}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    return-object v1

    .line 259
    :cond_b
    if-eqz p8, :cond_c

    .line 260
    .line 261
    iget v1, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->c:I

    .line 262
    .line 263
    if-nez v1, :cond_d

    .line 264
    .line 265
    :goto_7
    move v7, v6

    .line 266
    goto :goto_8

    .line 267
    :cond_c
    if-nez v0, :cond_d

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_d
    :goto_8
    if-eqz p8, :cond_e

    .line 271
    .line 272
    iget p1, p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->b:I

    .line 273
    .line 274
    :goto_9
    move v8, p1

    .line 275
    goto :goto_a

    .line 276
    :cond_e
    const/4 p1, -0x1

    .line 277
    goto :goto_9

    .line 278
    :goto_a
    new-instance v9, Landroid/os/Handler;

    .line 279
    .line 280
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-direct {v9, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 285
    .line 286
    .line 287
    new-instance v10, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 288
    .line 289
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 290
    .line 291
    .line 292
    iput-object v0, v10, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->a:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 293
    .line 294
    move-object v4, p0

    .line 295
    move/from16 v6, p6

    .line 296
    .line 297
    invoke-static/range {v4 .. v10}, Landroidx/core/provider/FontsContractCompat;->b(Landroid/content/Context;Ljava/util/ArrayList;IZILandroid/os/Handler;Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;)Landroid/graphics/Typeface;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    goto :goto_b

    .line 302
    :cond_f
    sget-object v1, Landroidx/core/graphics/TypefaceCompat;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 303
    .line 304
    check-cast p1, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    .line 305
    .line 306
    move/from16 v6, p6

    .line 307
    .line 308
    invoke-virtual {v1, p0, p1, p2, v6}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    if-eqz v0, :cond_11

    .line 313
    .line 314
    if-eqz p0, :cond_10

    .line 315
    .line 316
    new-instance p1, Landroid/os/Handler;

    .line 317
    .line 318
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 323
    .line 324
    .line 325
    new-instance v1, Lf3;

    .line 326
    .line 327
    invoke-direct {v1, v2, v0, p0}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    .line 332
    .line 333
    goto :goto_b

    .line 334
    :cond_10
    const/4 p1, -0x3

    .line 335
    invoke-virtual {v0, p1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(I)V

    .line 336
    .line 337
    .line 338
    :cond_11
    :goto_b
    if-eqz p0, :cond_12

    .line 339
    .line 340
    invoke-static/range {p2 .. p6}, Landroidx/core/graphics/TypefaceCompat;->e(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {v3, p1, p0}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    :cond_12
    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->a:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/core/graphics/TypefaceCompat;->e(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Landroidx/core/graphics/TypefaceCompat;->b:Landroidx/collection/LruCache;

    .line 14
    .line 15
    invoke-virtual {p2, p1, p0}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public static e(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static g(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->c:Landroid/graphics/Paint;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->c:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/high16 v1, 0x41200000    # 10.0f

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Landroidx/core/graphics/TypefaceCompat;->c:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    sget-object p0, Landroidx/core/graphics/TypefaceCompat;->c:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-static {p0}, Lng;->g(Landroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lng;->a(Landroid/graphics/text/PositionedGlyphs;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-static {p0}, Lng;->f(Landroid/graphics/text/PositionedGlyphs;)Landroid/graphics/fonts/Font;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
