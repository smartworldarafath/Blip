.class public final Landroidx/compose/ui/text/font/AndroidFontLoader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->a:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;
    .locals 12

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/font/ResourceFont;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    .line 7
    .line 8
    const/high16 v0, 0x7f090000

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroidx/core/content/res/ResourcesCompat;->b(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Landroidx/compose/ui/text/font/ResourceFont;->b:Landroidx/compose/ui/text/font/FontVariation$Settings;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/ui/text/font/FontVariation$Settings;->a:Ljava/util/List;

    .line 22
    .line 23
    sget-object v2, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->a:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    sget-object v2, Landroidx/compose/ui/text/font/TypefaceCompatApi26;->a:Ljava/lang/ThreadLocal;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/graphics/Paint;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v4, 0x1f

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    if-lt v2, v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lu0;->a(Landroid/content/res/Configuration;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const v6, 0x7fffffff

    .line 86
    .line 87
    .line 88
    if-ne v2, v6, :cond_4

    .line 89
    .line 90
    :cond_3
    move p0, v5

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lu0;->a(Landroid/content/res/Configuration;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    :goto_0
    if-nez p0, :cond_5

    .line 105
    .line 106
    new-instance p0, Lwc;

    .line 107
    .line 108
    const/4 v2, 0x3

    .line 109
    invoke-direct {p0, v2, v0}, Lwc;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v1, p0, v4}, Landroidx/compose/ui/util/ListUtilsKt;->a(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    const-string v1, ""

    .line 123
    .line 124
    move v2, v5

    .line 125
    :goto_1
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 126
    .line 127
    const/high16 v6, 0x3f800000    # 1.0f

    .line 128
    .line 129
    const-string v7, ","

    .line 130
    .line 131
    if-ge v5, v0, :cond_8

    .line 132
    .line 133
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    check-cast v8, Landroidx/compose/ui/text/font/FontVariation$Setting;

    .line 138
    .line 139
    invoke-interface {v8}, Landroidx/compose/ui/text/font/FontVariation$Setting;->b()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    const-string v10, "wght"

    .line 144
    .line 145
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_6

    .line 150
    .line 151
    invoke-interface {v8}, Landroidx/compose/ui/text/font/FontVariation$Setting;->a()F

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    int-to-float v9, p0

    .line 156
    add-float/2addr v2, v9

    .line 157
    invoke-static {v2, v6, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/4 v4, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-interface {v8}, Landroidx/compose/ui/text/font/FontVariation$Setting;->a()F

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    move v11, v4

    .line 168
    move v4, v2

    .line 169
    move v2, v11

    .line 170
    :goto_2
    if-eqz v5, :cond_7

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    :cond_7
    invoke-interface {v8}, Landroidx/compose/ui/text/font/FontVariation$Setting;->b()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v1, "\'"

    .line 200
    .line 201
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, "\' "

    .line 208
    .line 209
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    add-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    move v2, v4

    .line 222
    goto :goto_1

    .line 223
    :cond_8
    if-nez v2, :cond_a

    .line 224
    .line 225
    const/high16 v0, 0x43c80000    # 400.0f

    .line 226
    .line 227
    int-to-float p0, p0

    .line 228
    add-float/2addr p0, v0

    .line 229
    invoke-static {p0, v6, v4}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_9

    .line 238
    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v0, "\'wght\' "

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    goto :goto_3

    .line 275
    :cond_a
    move-object p0, v1

    .line 276
    :goto_3
    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    :cond_b
    :goto_4
    return-object v1
.end method
