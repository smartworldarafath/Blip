.class public final Landroidx/emoji2/text/TypefaceEmojiSpan;
.super Landroidx/emoji2/text/EmojiSpan;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public n:Landroid/text/TextPaint;


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p9

    .line 6
    .line 7
    instance-of v3, v1, Landroid/text/Spanned;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_5

    .line 11
    .line 12
    check-cast v1, Landroid/text/Spanned;

    .line 13
    .line 14
    const-class v3, Landroid/text/style/CharacterStyle;

    .line 15
    .line 16
    move/from16 v5, p3

    .line 17
    .line 18
    move/from16 v6, p4

    .line 19
    .line 20
    invoke-interface {v1, v5, v6, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 25
    .line 26
    array-length v3, v1

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    array-length v3, v1

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    if-ne v3, v6, :cond_0

    .line 33
    .line 34
    aget-object v3, v1, v5

    .line 35
    .line 36
    if-ne v3, v0, :cond_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_0
    iget-object v3, v0, Landroidx/emoji2/text/TypefaceEmojiSpan;->n:Landroid/text/TextPaint;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v3, Landroid/text/TextPaint;

    .line 44
    .line 45
    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v3, v0, Landroidx/emoji2/text/TypefaceEmojiSpan;->n:Landroid/text/TextPaint;

    .line 49
    .line 50
    :cond_1
    move-object v4, v3

    .line 51
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    array-length v3, v1

    .line 55
    if-ge v5, v3, :cond_3

    .line 56
    .line 57
    aget-object v3, v1, v5

    .line 58
    .line 59
    instance-of v6, v3, Landroid/text/style/MetricAffectingSpan;

    .line 60
    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    move-object v10, v4

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    :goto_2
    instance-of v1, v2, Landroid/text/TextPaint;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    move-object v4, v2

    .line 76
    check-cast v4, Landroid/text/TextPaint;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    instance-of v1, v2, Landroid/text/TextPaint;

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    move-object v4, v2

    .line 84
    check-cast v4, Landroid/text/TextPaint;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :goto_3
    if-eqz v10, :cond_6

    .line 88
    .line 89
    iget v1, v10, Landroid/text/TextPaint;->bgColor:I

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    iget-short v1, v0, Landroidx/emoji2/text/EmojiSpan;->l:S

    .line 94
    .line 95
    int-to-float v1, v1

    .line 96
    add-float v8, p5, v1

    .line 97
    .line 98
    move/from16 v1, p6

    .line 99
    .line 100
    int-to-float v7, v1

    .line 101
    move/from16 v1, p8

    .line 102
    .line 103
    int-to-float v9, v1

    .line 104
    invoke-virtual {v10}, Landroid/graphics/Paint;->getColor()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v10}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget v4, v10, Landroid/text/TextPaint;->bgColor:I

    .line 113
    .line 114
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .line 116
    .line 117
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 118
    .line 119
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    .line 121
    .line 122
    move-object/from16 v5, p1

    .line 123
    .line 124
    move/from16 v6, p5

    .line 125
    .line 126
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move/from16 v1, p7

    .line 143
    .line 144
    int-to-float v1, v1

    .line 145
    if-eqz v10, :cond_7

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_7
    move-object v10, v2

    .line 149
    :goto_4
    iget-object v0, v0, Landroidx/emoji2/text/EmojiSpan;->k:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 150
    .line 151
    iget-object v2, v0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->b:Landroidx/emoji2/text/MetadataRepo;

    .line 152
    .line 153
    iget-object v3, v2, Landroidx/emoji2/text/MetadataRepo;->d:Landroid/graphics/Typeface;

    .line 154
    .line 155
    invoke-virtual {v10}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 160
    .line 161
    .line 162
    iget v0, v0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->a:I

    .line 163
    .line 164
    mul-int/lit8 v13, v0, 0x2

    .line 165
    .line 166
    iget-object v12, v2, Landroidx/emoji2/text/MetadataRepo;->b:[C

    .line 167
    .line 168
    const/4 v14, 0x2

    .line 169
    move-object/from16 v11, p1

    .line 170
    .line 171
    move/from16 v15, p5

    .line 172
    .line 173
    move/from16 v16, v1

    .line 174
    .line 175
    move-object/from16 v17, v10

    .line 176
    .line 177
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    .line 182
    .line 183
    return-void
.end method
