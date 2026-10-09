.class public Landroidx/core/app/NotificationCompat$BigPictureStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;
    }
.end annotation


# instance fields
.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Landroidx/core/graphics/drawable/IconCompat;

.field public d:Z


# virtual methods
.method public final a(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/core/app/NotificationCompatBuilder;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 8
    .line 9
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/16 v5, 0x1f

    .line 23
    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    if-lt v6, v5, :cond_0

    .line 29
    .line 30
    move-object/from16 v6, p1

    .line 31
    .line 32
    check-cast v6, Landroidx/core/app/NotificationCompatBuilder;

    .line 33
    .line 34
    iget-object v6, v6, Landroidx/core/app/NotificationCompatBuilder;->a:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v3, v6}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    iget v6, v3, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 46
    .line 47
    const/4 v7, -0x1

    .line 48
    if-ne v6, v7, :cond_1

    .line 49
    .line 50
    iget-object v3, v3, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    :cond_1
    const/4 v3, 0x1

    .line 59
    if-ne v6, v3, :cond_6

    .line 60
    .line 61
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 62
    .line 63
    iget v8, v6, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 64
    .line 65
    if-ne v8, v7, :cond_3

    .line 66
    .line 67
    iget-object v3, v6, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 68
    .line 69
    instance-of v6, v3, Landroid/graphics/Bitmap;

    .line 70
    .line 71
    if-eqz v6, :cond_2

    .line 72
    .line 73
    check-cast v3, Landroid/graphics/Bitmap;

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_2
    move-object v3, v1

    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_3
    if-ne v8, v3, :cond_4

    .line 81
    .line 82
    iget-object v3, v6, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v3, Landroid/graphics/Bitmap;

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_4
    const/4 v3, 0x5

    .line 89
    if-ne v8, v3, :cond_5

    .line 90
    .line 91
    iget-object v3, v6, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v3, Landroid/graphics/Bitmap;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    int-to-float v6, v6

    .line 108
    const v7, 0x3f2aaaab

    .line 109
    .line 110
    .line 111
    mul-float/2addr v6, v7

    .line 112
    float-to-int v6, v6

    .line 113
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 114
    .line 115
    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    new-instance v8, Landroid/graphics/Canvas;

    .line 120
    .line 121
    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    .line 123
    .line 124
    new-instance v9, Landroid/graphics/Paint;

    .line 125
    .line 126
    const/4 v10, 0x3

    .line 127
    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    .line 129
    .line 130
    int-to-float v10, v6

    .line 131
    const/high16 v11, 0x3f000000    # 0.5f

    .line 132
    .line 133
    mul-float/2addr v11, v10

    .line 134
    const v12, 0x3f6aaaab

    .line 135
    .line 136
    .line 137
    mul-float/2addr v12, v11

    .line 138
    const v13, 0x3c2aaaab

    .line 139
    .line 140
    .line 141
    mul-float/2addr v13, v10

    .line 142
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    .line 144
    .line 145
    const v14, 0x3caaaaab

    .line 146
    .line 147
    .line 148
    mul-float/2addr v10, v14

    .line 149
    const/high16 v14, 0x3d000000    # 0.03125f

    .line 150
    .line 151
    const/4 v15, 0x0

    .line 152
    invoke-virtual {v9, v13, v15, v10, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v11, v11, v12, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    const/high16 v10, 0x1e000000

    .line 159
    .line 160
    invoke-virtual {v9, v13, v15, v15, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v11, v11, v12, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 167
    .line 168
    .line 169
    const/high16 v10, -0x1000000

    .line 170
    .line 171
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    .line 173
    .line 174
    new-instance v10, Landroid/graphics/BitmapShader;

    .line 175
    .line 176
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 177
    .line 178
    invoke-direct {v10, v3, v13, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 179
    .line 180
    .line 181
    new-instance v13, Landroid/graphics/Matrix;

    .line 182
    .line 183
    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v14

    .line 190
    sub-int/2addr v14, v6

    .line 191
    neg-int v14, v14

    .line 192
    int-to-float v14, v14

    .line 193
    const/high16 v15, 0x40000000    # 2.0f

    .line 194
    .line 195
    div-float/2addr v14, v15

    .line 196
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    sub-int/2addr v3, v6

    .line 201
    neg-int v3, v3

    .line 202
    int-to-float v3, v3

    .line 203
    div-float/2addr v3, v15

    .line 204
    invoke-virtual {v13, v14, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v13}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v11, v11, v12, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    .line 218
    .line 219
    move-object v3, v7

    .line 220
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    goto :goto_1

    .line 225
    :cond_5
    const-string v0, "called getBitmap() on "

    .line 226
    .line 227
    invoke-static {v6, v0}, Lfe;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_6
    :goto_1
    iget-boolean v3, v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->d:Z

    .line 232
    .line 233
    if-eqz v3, :cond_8

    .line 234
    .line 235
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 236
    .line 237
    if-nez v0, :cond_7

    .line 238
    .line 239
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_7
    move-object/from16 v3, p1

    .line 244
    .line 245
    check-cast v3, Landroidx/core/app/NotificationCompatBuilder;

    .line 246
    .line 247
    iget-object v3, v3, Landroidx/core/app/NotificationCompatBuilder;->a:Landroid/content/Context;

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v2, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    .line 254
    .line 255
    .line 256
    :cond_8
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 257
    .line 258
    if-lt v0, v5, :cond_9

    .line 259
    .line 260
    invoke-static {v2, v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    .line 261
    .line 262
    .line 263
    invoke-static {v2, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle$Api31Impl;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    :cond_9
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    .line 2
    .line 3
    return-object p0
.end method
