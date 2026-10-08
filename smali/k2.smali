.class public final synthetic Lk2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/ui/androidtheme/AndroidColors;

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/ui/androidtheme/AndroidColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    iput p3, p0, Lk2;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lk2;->k:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 4
    .line 5
    iput-object p2, p0, Lk2;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lk2;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    iget-object v4, v0, Lk2;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    iget-object v0, v0, Lk2;->k:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v7, p2

    .line 22
    .line 23
    check-cast v7, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    and-int/lit8 v8, v7, 0x3

    .line 30
    .line 31
    if-eq v8, v3, :cond_0

    .line 32
    .line 33
    move v3, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v5

    .line 36
    :goto_0
    and-int/2addr v6, v7

    .line 37
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v1, v6, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    sget-object v3, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 46
    .line 47
    iget-wide v6, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 48
    .line 49
    new-instance v0, Landroidx/compose/material/RippleConfiguration;

    .line 50
    .line 51
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->e(J)F

    .line 52
    .line 53
    .line 54
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->b:J

    .line 55
    .line 56
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->e(J)F

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    float-to-double v8, v8

    .line 61
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 62
    .line 63
    cmpl-double v8, v8, v10

    .line 64
    .line 65
    if-lez v8, :cond_1

    .line 66
    .line 67
    sget-object v8, Landroidx/compose/material/RippleKt;->d:Landroidx/compose/material/ripple/RippleAlpha;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    sget-object v8, Landroidx/compose/material/RippleKt;->e:Landroidx/compose/material/ripple/RippleAlpha;

    .line 71
    .line 72
    :goto_1
    invoke-direct {v0, v6, v7, v8}, Landroidx/compose/material/RippleConfiguration;-><init>(JLandroidx/compose/material/ripple/RippleAlpha;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v3, Lc0;

    .line 80
    .line 81
    const/4 v6, 0x3

    .line 82
    invoke-direct {v3, v4, v6, v5}, Lc0;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;IB)V

    .line 83
    .line 84
    .line 85
    const v4, -0x632177c8

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/16 v4, 0x38

    .line 93
    .line 94
    invoke-static {v0, v3, v1, v4}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-object v2

    .line 102
    :pswitch_0
    move-object/from16 v1, p1

    .line 103
    .line 104
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 105
    .line 106
    move-object/from16 v7, p2

    .line 107
    .line 108
    check-cast v7, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    and-int/lit8 v8, v7, 0x3

    .line 115
    .line 116
    if-eq v8, v3, :cond_3

    .line 117
    .line 118
    move v5, v6

    .line 119
    :cond_3
    and-int/lit8 v3, v7, 0x1

    .line 120
    .line 121
    move-object v11, v1

    .line 122
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 123
    .line 124
    invoke-virtual {v11, v3, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-static {v11}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    iget-wide v13, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->n:J

    .line 135
    .line 136
    const/16 v17, 0x1fcf

    .line 137
    .line 138
    move-wide v15, v13

    .line 139
    invoke-static/range {v12 .. v17}, Landroidx/compose/material/Colors;->a(Landroidx/compose/material/Colors;JJI)Landroidx/compose/material/Colors;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v11}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const/high16 v3, 0x41400000    # 12.0f

    .line 148
    .line 149
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    const/high16 v5, 0x41800000    # 16.0f

    .line 154
    .line 155
    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    const/high16 v8, 0x41a00000    # 20.0f

    .line 160
    .line 161
    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    new-instance v9, Landroidx/compose/material/Shapes;

    .line 169
    .line 170
    invoke-direct {v9, v3, v5, v8}, Landroidx/compose/material/Shapes;-><init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/RoundedCornerShape;)V

    .line 171
    .line 172
    .line 173
    new-instance v1, Lk2;

    .line 174
    .line 175
    invoke-direct {v1, v0, v4, v6}, Lk2;-><init>(Lnet/blip/android/ui/androidtheme/AndroidColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 176
    .line 177
    .line 178
    const v0, -0x3d6acb08

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    const/16 v12, 0xc00

    .line 186
    .line 187
    const/4 v8, 0x0

    .line 188
    invoke-static/range {v7 .. v12}, Landroidx/compose/material/MaterialThemeKt;->a(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 193
    .line 194
    .line 195
    :goto_3
    return-object v2

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
