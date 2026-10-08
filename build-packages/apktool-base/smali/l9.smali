.class public final synthetic Ll9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lnet/blip/libblip/PeerPickerViewModel;

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:Landroidx/compose/ui/platform/UriHandler;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Landroidx/navigation/NavController;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;

.field public final synthetic p:Landroidx/compose/runtime/State;

.field public final synthetic q:Landroidx/compose/runtime/State;

.field public final synthetic r:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/libblip/PeerPickerViewModel;Ljava/util/ArrayList;Landroidx/compose/ui/platform/UriHandler;Ljava/lang/String;Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll9;->j:Lnet/blip/libblip/PeerPickerViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Ll9;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Ll9;->l:Landroidx/compose/ui/platform/UriHandler;

    .line 9
    .line 10
    iput-object p4, p0, Ll9;->m:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Ll9;->n:Landroidx/navigation/NavController;

    .line 13
    .line 14
    iput-object p6, p0, Ll9;->o:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    iput-object p7, p0, Ll9;->p:Landroidx/compose/runtime/State;

    .line 17
    .line 18
    iput-object p8, p0, Ll9;->q:Landroidx/compose/runtime/State;

    .line 19
    .line 20
    iput-object p9, p0, Ll9;->r:Landroidx/compose/runtime/MutableState;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    move v3, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v5

    .line 25
    :goto_0
    and-int/2addr v2, v6

    .line 26
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_b

    .line 33
    .line 34
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 41
    .line 42
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 43
    .line 44
    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 45
    .line 46
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 47
    .line 48
    invoke-static {v7, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    iget-object v2, v0, Ll9;->o:Landroidx/compose/runtime/MutableState;

    .line 57
    .line 58
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 73
    .line 74
    if-ne v3, v4, :cond_1

    .line 75
    .line 76
    new-instance v3, Lo1;

    .line 77
    .line 78
    const/16 v9, 0xa

    .line 79
    .line 80
    invoke-direct {v3, v2, v9}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    move-object v9, v3

    .line 87
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-ne v3, v4, :cond_2

    .line 94
    .line 95
    new-instance v3, Lo1;

    .line 96
    .line 97
    const/16 v10, 0xb

    .line 98
    .line 99
    invoke-direct {v3, v2, v10}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    move-object v10, v3

    .line 106
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 107
    .line 108
    iget-object v2, v0, Ll9;->j:Lnet/blip/libblip/PeerPickerViewModel;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    if-ne v11, v4, :cond_4

    .line 121
    .line 122
    :cond_3
    new-instance v11, Le9;

    .line 123
    .line 124
    invoke-direct {v11, v2, v5}, Le9;-><init>(Lnet/blip/libblip/PeerPickerViewModel;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 131
    .line 132
    iget-object v2, v0, Ll9;->p:Landroidx/compose/runtime/State;

    .line 133
    .line 134
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object v12, v2

    .line 139
    check-cast v12, Ljava/lang/String;

    .line 140
    .line 141
    iget-object v2, v0, Ll9;->q:Landroidx/compose/runtime/State;

    .line 142
    .line 143
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lnet/blip/libblip/PeerPickerContent;

    .line 148
    .line 149
    instance-of v3, v2, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 150
    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    check-cast v2, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 154
    .line 155
    iget-object v2, v2, Lnet/blip/libblip/PeerPickerContent$SearchResults;->c:Lnet/blip/libblip/frontend/Search$Status;

    .line 156
    .line 157
    sget-object v3, Lnet/blip/libblip/frontend/Search$Status;->n:Lnet/blip/libblip/frontend/Search$Status;

    .line 158
    .line 159
    if-ne v2, v3, :cond_5

    .line 160
    .line 161
    move v13, v6

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    move v13, v5

    .line 164
    :goto_1
    iget-object v2, v0, Ll9;->k:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    xor-int/lit8 v14, v2, 0x1

    .line 171
    .line 172
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-ne v2, v4, :cond_6

    .line 177
    .line 178
    new-instance v2, Lo1;

    .line 179
    .line 180
    const/16 v3, 0xc

    .line 181
    .line 182
    iget-object v6, v0, Ll9;->r:Landroidx/compose/runtime/MutableState;

    .line 183
    .line 184
    invoke-direct {v2, v6, v3}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    move-object v15, v2

    .line 191
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 192
    .line 193
    iget-object v2, v0, Ll9;->l:Landroidx/compose/ui/platform/UriHandler;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    iget-object v6, v0, Ll9;->m:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v16

    .line 205
    or-int v3, v3, v16

    .line 206
    .line 207
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    if-nez v3, :cond_7

    .line 212
    .line 213
    if-ne v5, v4, :cond_8

    .line 214
    .line 215
    :cond_7
    new-instance v5, Lf9;

    .line 216
    .line 217
    const/4 v3, 0x0

    .line 218
    invoke-direct {v5, v2, v6, v3}, Lf9;-><init>(Landroidx/compose/ui/platform/UriHandler;Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_8
    move-object/from16 v16, v5

    .line 225
    .line 226
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 227
    .line 228
    iget-object v0, v0, Ll9;->n:Landroidx/navigation/NavController;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    if-nez v2, :cond_9

    .line 239
    .line 240
    if-ne v3, v4, :cond_a

    .line 241
    .line 242
    :cond_9
    new-instance v3, Lg9;

    .line 243
    .line 244
    const/4 v2, 0x0

    .line 245
    invoke-direct {v3, v0, v2}, Lg9;-><init>(Landroidx/navigation/NavController;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_a
    move-object/from16 v17, v3

    .line 252
    .line 253
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 254
    .line 255
    const v19, 0x6000d80

    .line 256
    .line 257
    .line 258
    move-object/from16 v18, v1

    .line 259
    .line 260
    invoke-static/range {v7 .. v19}, Lnet/blip/android/ui/home/HomeTopBarKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_b
    move-object/from16 v18, v1

    .line 265
    .line 266
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 267
    .line 268
    .line 269
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 270
    .line 271
    return-object v0
.end method
