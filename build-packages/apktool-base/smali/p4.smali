.class public final synthetic Lp4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/io/Serializable;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(J[FLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lp4;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lp4;->k:J

    .line 8
    .line 9
    iput-object p3, p0, Lp4;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lp4;->m:Ljava/io/Serializable;

    .line 12
    .line 13
    iput-object p5, p0, Lp4;->n:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroidx/compose/ui/graphics/BlendModeColorFilter;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lp4;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4;->l:Ljava/lang/Object;

    iput-object p2, p0, Lp4;->m:Ljava/io/Serializable;

    iput-wide p3, p0, Lp4;->k:J

    iput-object p5, p0, Lp4;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lp4;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lp4;->n:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lp4;->m:Ljava/io/Serializable;

    .line 10
    .line 11
    iget-object v5, v0, Lp4;->l:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, [F

    .line 17
    .line 18
    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 19
    .line 20
    check-cast v3, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 25
    .line 26
    iget v6, v1, Landroidx/compose/ui/text/ParagraphInfo;->b:I

    .line 27
    .line 28
    iget-object v7, v1, Landroidx/compose/ui/text/ParagraphInfo;->a:Landroidx/compose/ui/text/AndroidParagraph;

    .line 29
    .line 30
    iget v8, v1, Landroidx/compose/ui/text/ParagraphInfo;->c:I

    .line 31
    .line 32
    iget-wide v9, v0, Lp4;->k:J

    .line 33
    .line 34
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-le v6, v0, :cond_0

    .line 39
    .line 40
    iget v0, v1, Landroidx/compose/ui/text/ParagraphInfo;->b:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :goto_0
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ge v8, v6, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    :goto_1
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {v1, v8}, Landroidx/compose/ui/text/ParagraphInfo;->d(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    iget v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 71
    .line 72
    iget-object v8, v7, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-virtual {v8, v9, v10, v6, v5}, Landroidx/compose/ui/text/android/TextLayout;->a(III[F)V

    .line 83
    .line 84
    .line 85
    iget v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->d(J)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    mul-int/lit8 v0, v0, 0x4

    .line 92
    .line 93
    add-int/2addr v0, v6

    .line 94
    iget v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 95
    .line 96
    :goto_2
    if-ge v1, v0, :cond_2

    .line 97
    .line 98
    add-int/lit8 v6, v1, 0x1

    .line 99
    .line 100
    aget v8, v5, v6

    .line 101
    .line 102
    iget v9, v3, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 103
    .line 104
    add-float/2addr v8, v9

    .line 105
    aput v8, v5, v6

    .line 106
    .line 107
    add-int/lit8 v6, v1, 0x3

    .line 108
    .line 109
    aget v8, v5, v6

    .line 110
    .line 111
    add-float/2addr v8, v9

    .line 112
    aput v8, v5, v6

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x4

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 118
    .line 119
    iget v0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 120
    .line 121
    iget v1, v7, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 122
    .line 123
    add-float/2addr v0, v1

    .line 124
    iput v0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 125
    .line 126
    return-object v2

    .line 127
    :pswitch_0
    check-cast v5, Landroidx/compose/ui/geometry/Rect;

    .line 128
    .line 129
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 130
    .line 131
    iget-wide v8, v0, Lp4;->k:J

    .line 132
    .line 133
    move-object v13, v3

    .line 134
    check-cast v13, Landroidx/compose/ui/graphics/ColorFilter;

    .line 135
    .line 136
    move-object/from16 v0, p1

    .line 137
    .line 138
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 139
    .line 140
    move-object v6, v0

    .line 141
    check-cast v6, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 142
    .line 143
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 144
    .line 145
    .line 146
    iget v1, v5, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 147
    .line 148
    iget v3, v5, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 149
    .line 150
    iget-object v5, v6, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 151
    .line 152
    iget-object v0, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 153
    .line 154
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 155
    .line 156
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 157
    .line 158
    .line 159
    :try_start_0
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 160
    .line 161
    move-object v7, v0

    .line 162
    check-cast v7, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 163
    .line 164
    const/4 v14, 0x0

    .line 165
    const/16 v15, 0x37a

    .line 166
    .line 167
    const-wide/16 v10, 0x0

    .line 168
    .line 169
    const/4 v12, 0x0

    .line 170
    invoke-static/range {v6 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->A(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJFLandroidx/compose/ui/graphics/ColorFilter;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .line 172
    .line 173
    iget-object v0, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 174
    .line 175
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 176
    .line 177
    neg-float v1, v1

    .line 178
    neg-float v3, v3

    .line 179
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 180
    .line 181
    .line 182
    return-object v2

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    iget-object v2, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 185
    .line 186
    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 187
    .line 188
    neg-float v1, v1

    .line 189
    neg-float v3, v3

    .line 190
    invoke-virtual {v2, v1, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
