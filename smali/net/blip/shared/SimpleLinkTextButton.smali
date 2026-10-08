.class public final Lnet/blip/shared/SimpleLinkTextButton;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:J

.field public final b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(JLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lnet/blip/shared/SimpleLinkTextButton;->a:J

    .line 8
    .line 9
    iput-object p3, p0, Lnet/blip/shared/SimpleLinkTextButton;->b:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v13, p5

    .line 14
    .line 15
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, 0x26ce1875

    .line 18
    .line 19
    .line 20
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int v0, p6, v0

    .line 33
    .line 34
    move-object/from16 v3, p2

    .line 35
    .line 36
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    const/16 v5, 0x20

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v5, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v5

    .line 48
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/16 v6, 0x100

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    move v5, v6

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v5, 0x80

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v5

    .line 61
    move-object/from16 v14, p4

    .line 62
    .line 63
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    const/16 v5, 0x800

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/16 v5, 0x400

    .line 73
    .line 74
    :goto_3
    or-int/2addr v0, v5

    .line 75
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/16 v7, 0x4000

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    move v5, v7

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/16 v5, 0x2000

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v5

    .line 88
    and-int/lit16 v5, v0, 0x2493

    .line 89
    .line 90
    const/16 v8, 0x2492

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v10, 0x1

    .line 94
    if-eq v5, v8, :cond_5

    .line 95
    .line 96
    move v5, v10

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    move v5, v9

    .line 99
    :goto_5
    and-int/lit8 v8, v0, 0x1

    .line 100
    .line 101
    invoke-virtual {v13, v8, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_a

    .line 106
    .line 107
    const/high16 v5, 0x40400000    # 3.0f

    .line 108
    .line 109
    invoke-static {v2, v5}, Lnet/blip/shared/OutsetParentKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const/high16 v8, 0x3f800000    # 1.0f

    .line 114
    .line 115
    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const/16 v8, 0x19

    .line 120
    .line 121
    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-static {v5, v8}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    const v5, 0xe000

    .line 130
    .line 131
    .line 132
    and-int/2addr v5, v0

    .line 133
    if-ne v5, v7, :cond_6

    .line 134
    .line 135
    move v5, v10

    .line 136
    goto :goto_6

    .line 137
    :cond_6
    move v5, v9

    .line 138
    :goto_6
    and-int/lit16 v7, v0, 0x380

    .line 139
    .line 140
    if-ne v7, v6, :cond_7

    .line 141
    .line 142
    move v9, v10

    .line 143
    :cond_7
    or-int/2addr v5, v9

    .line 144
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-nez v5, :cond_8

    .line 149
    .line 150
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 151
    .line 152
    if-ne v6, v5, :cond_9

    .line 153
    .line 154
    :cond_8
    new-instance v6, Lp0;

    .line 155
    .line 156
    const/16 v5, 0x1d

    .line 157
    .line 158
    invoke-direct {v6, v5, v1, v4}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_9
    move-object/from16 v19, v6

    .line 165
    .line 166
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 167
    .line 168
    const/16 v20, 0xf

    .line 169
    .line 170
    const/16 v16, 0x0

    .line 171
    .line 172
    const/16 v17, 0x0

    .line 173
    .line 174
    const/16 v18, 0x0

    .line 175
    .line 176
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const/16 v25, 0x0

    .line 181
    .line 182
    const v26, 0xff7ffe

    .line 183
    .line 184
    .line 185
    iget-wide v7, v1, Lnet/blip/shared/SimpleLinkTextButton;->a:J

    .line 186
    .line 187
    const-wide/16 v17, 0x0

    .line 188
    .line 189
    const/16 v19, 0x0

    .line 190
    .line 191
    const-wide/16 v20, 0x0

    .line 192
    .line 193
    const-wide/16 v22, 0x0

    .line 194
    .line 195
    const/16 v24, 0x0

    .line 196
    .line 197
    move-wide v15, v7

    .line 198
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    shr-int/lit8 v0, v0, 0x3

    .line 203
    .line 204
    and-int/lit8 v14, v0, 0xe

    .line 205
    .line 206
    const/16 v15, 0x1f8

    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    const/4 v9, 0x0

    .line 210
    const/4 v10, 0x0

    .line 211
    const/4 v11, 0x0

    .line 212
    const/4 v12, 0x0

    .line 213
    move-object v5, v3

    .line 214
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 219
    .line 220
    .line 221
    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    if-eqz v8, :cond_b

    .line 226
    .line 227
    new-instance v0, Lr7;

    .line 228
    .line 229
    const/4 v7, 0x6

    .line 230
    move-object/from16 v3, p2

    .line 231
    .line 232
    move-object/from16 v5, p4

    .line 233
    .line 234
    move/from16 v6, p6

    .line 235
    .line 236
    invoke-direct/range {v0 .. v7}, Lr7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 237
    .line 238
    .line 239
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 240
    .line 241
    :cond_b
    return-void
.end method
