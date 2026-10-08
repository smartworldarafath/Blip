.class public abstract Landroidx/compose/ui/res/PainterResources_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 10

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/res/Resources;

    .line 18
    .line 19
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->e:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/compose/ui/res/ResourceIdCache;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v3, v2, Landroidx/compose/ui/res/ResourceIdCache;->a:Landroidx/collection/MutableIntObjectMap;

    .line 29
    .line 30
    invoke-virtual {v3, p0}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/util/TypedValue;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    new-instance v3, Landroid/util/TypedValue;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 45
    .line 46
    .line 47
    iget-object v5, v2, Landroidx/compose/ui/res/ResourceIdCache;->a:Landroidx/collection/MutableIntObjectMap;

    .line 48
    .line 49
    invoke-virtual {v5, p0}, Landroidx/collection/MutableIntObjectMap;->d(I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget-object v7, v5, Landroidx/collection/IntObjectMap;->c:[Ljava/lang/Object;

    .line 54
    .line 55
    aget-object v8, v7, v6

    .line 56
    .line 57
    iget-object v5, v5, Landroidx/collection/IntObjectMap;->b:[I

    .line 58
    .line 59
    aput p0, v5, v6

    .line 60
    .line 61
    aput-object v3, v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_0
    :goto_0
    monitor-exit v2

    .line 68
    iget-object v2, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    const-string v7, ".xml"

    .line 75
    .line 76
    invoke-static {v2, v7}, Lkotlin/text/StringsKt;->m(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ne v7, v4, :cond_6

    .line 81
    .line 82
    const v2, -0x699b7fa2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget v2, v3, Landroid/util/TypedValue;->changingConfigurations:I

    .line 93
    .line 94
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->d:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Landroidx/compose/ui/res/ImageVectorCache;

    .line 101
    .line 102
    new-instance v7, Landroidx/compose/ui/res/ImageVectorCache$Key;

    .line 103
    .line 104
    invoke-direct {v7, v0, p0}, Landroidx/compose/ui/res/ImageVectorCache$Key;-><init>(Landroid/content/res/Resources$Theme;I)V

    .line 105
    .line 106
    .line 107
    iget-object v8, v3, Landroidx/compose/ui/res/ImageVectorCache;->a:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 114
    .line 115
    if-eqz v8, :cond_1

    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    check-cast v8, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    move-object v8, v5

    .line 125
    :goto_1
    if-nez v8, :cond_5

    .line 126
    .line 127
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    :goto_2
    const/4 v9, 0x2

    .line 136
    if-eq v8, v9, :cond_2

    .line 137
    .line 138
    if-eq v8, v4, :cond_2

    .line 139
    .line 140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    if-ne v8, v9, :cond_4

    .line 146
    .line 147
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const-string v8, "vector"

    .line 152
    .line 153
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_3

    .line 158
    .line 159
    invoke-static {v0, v1, p0, v2}, Landroidx/compose/ui/res/VectorResources_androidKt;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    iget-object p0, v3, Landroidx/compose/ui/res/ImageVectorCache;->a:Ljava/util/HashMap;

    .line 164
    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 166
    .line 167
    invoke-direct {v0, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_3
    const-string p0, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP"

    .line 175
    .line 176
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-object v5

    .line 180
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 181
    .line 182
    const-string p1, "No start tag found"

    .line 183
    .line 184
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :cond_5
    :goto_3
    iget-object p0, v8, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 189
    .line 190
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 195
    .line 196
    .line 197
    return-object p0

    .line 198
    :cond_6
    const v3, -0x69992078

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    or-int/2addr v3, v4

    .line 217
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    or-int/2addr v0, v3

    .line 222
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    if-nez v0, :cond_7

    .line 227
    .line 228
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 229
    .line 230
    if-ne v3, v0, :cond_8

    .line 231
    .line 232
    :cond_7
    :try_start_1
    invoke-virtual {v1, p0, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    new-instance v3, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 246
    .line 247
    invoke-direct {v3, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_8
    check-cast v3, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 254
    .line 255
    new-instance p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 256
    .line 257
    invoke-direct {p0, v3}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 261
    .line 262
    .line 263
    return-object p0

    .line 264
    :catch_0
    move-exception p0

    .line 265
    new-instance p1, Landroidx/compose/ui/res/ResourceResolutionException;

    .line 266
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v1, "Error attempting to load resource: "

    .line 270
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :goto_4
    monitor-exit v2

    .line 286
    throw p0
.end method
