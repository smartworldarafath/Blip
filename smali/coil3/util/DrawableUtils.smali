.class public abstract Lcoil3/util/DrawableUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;Z)Landroid/graphics/Bitmap;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    const-wide v9, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/16 v11, 0x20

    .line 19
    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 36
    .line 37
    if-ne v1, v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v4, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 43
    .line 44
    :goto_1
    if-ne v3, v4, :cond_3

    .line 45
    .line 46
    if-eqz p5, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-static {v3, v4, v2, v6, v7}, Lcoil3/decode/DecodeUtils;->a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    shr-long v13, v3, v11

    .line 62
    .line 63
    long-to-int v5, v13

    .line 64
    and-long/2addr v3, v9

    .line 65
    long-to-int v3, v3

    .line 66
    move v6, v3

    .line 67
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    move-object v8, v7

    .line 76
    move-object/from16 v7, p3

    .line 77
    .line 78
    invoke-static/range {v3 .. v8}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    move-object v6, v7

    .line 83
    move-object v7, v8

    .line 84
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 85
    .line 86
    cmpg-double v3, v3, v13

    .line 87
    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    :goto_2
    return-object v12

    .line 91
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lcoil3/util/Utils_androidKt;->b(Landroid/graphics/drawable/Drawable;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/16 v4, 0x200

    .line 100
    .line 101
    if-lez v3, :cond_4

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move v3, v4

    .line 105
    :goto_3
    invoke-static {v0}, Lcoil3/util/Utils_androidKt;->a(Landroid/graphics/drawable/Drawable;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-lez v5, :cond_5

    .line 110
    .line 111
    move v4, v5

    .line 112
    :cond_5
    invoke-static {v3, v4, v2, v6, v7}, Lcoil3/decode/DecodeUtils;->a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v12

    .line 116
    shr-long v14, v12, v11

    .line 117
    .line 118
    long-to-int v2, v14

    .line 119
    and-long v8, v12, v9

    .line 120
    .line 121
    long-to-int v5, v8

    .line 122
    move/from16 v16, v4

    .line 123
    .line 124
    move v4, v2

    .line 125
    move v2, v3

    .line 126
    move/from16 v3, v16

    .line 127
    .line 128
    invoke-static/range {v2 .. v7}, Lcoil3/decode/DecodeUtils;->b(IIIILcoil3/size/Scale;Lcoil3/size/Size;)D

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    int-to-double v6, v2

    .line 133
    mul-double/2addr v6, v4

    .line 134
    invoke-static {v6, v7}, Lkotlin/math/MathKt;->a(D)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    int-to-double v6, v3

    .line 139
    mul-double/2addr v4, v6

    .line 140
    invoke-static {v4, v5}, Lkotlin/math/MathKt;->a(D)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 147
    .line 148
    if-ne v1, v4, :cond_7

    .line 149
    .line 150
    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 151
    .line 152
    :cond_7
    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 165
    .line 166
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 167
    .line 168
    const/4 v8, 0x0

    .line 169
    invoke-virtual {v0, v8, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    .line 171
    .line 172
    new-instance v2, Landroid/graphics/Canvas;

    .line 173
    .line 174
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    .line 182
    .line 183
    return-object v1
.end method
