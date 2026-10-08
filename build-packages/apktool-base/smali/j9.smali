.class public final synthetic Lj9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj9;->j:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lj9;->k:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lj9;->l:Z

    .line 9
    .line 10
    iput-object p4, p0, Lj9;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    and-int/lit8 p1, p3, 0x11

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v2

    .line 25
    :goto_0
    and-int/2addr p3, v1

    .line 26
    move-object v8, p2

    .line 27
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v8, p3, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_e

    .line 34
    .line 35
    iget-object p1, p0, Lj9;->j:Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    iget-object v0, p0, Lj9;->m:Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    if-ne p3, v11, :cond_2

    .line 52
    .line 53
    :cond_1
    new-instance p3, Lk9;

    .line 54
    .line 55
    invoke-direct {p3, v2, v0, p1}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    move-object v3, p3

    .line 62
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 63
    .line 64
    const/high16 v9, 0x30000

    .line 65
    .line 66
    const/16 v10, 0x1a

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    iget-boolean v5, p0, Lj9;->k:Z

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$HomeScreenKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 73
    .line 74
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    if-nez p2, :cond_3

    .line 86
    .line 87
    if-ne p3, v11, :cond_4

    .line 88
    .line 89
    :cond_3
    new-instance p3, Lk9;

    .line 90
    .line 91
    invoke-direct {p3, v1, v0, p1}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    move-object v3, p3

    .line 98
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    const/high16 v9, 0x30000

    .line 101
    .line 102
    const/16 v10, 0x1e

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$HomeScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 108
    .line 109
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    if-nez p2, :cond_5

    .line 121
    .line 122
    if-ne p3, v11, :cond_6

    .line 123
    .line 124
    :cond_5
    new-instance p3, Lk9;

    .line 125
    .line 126
    const/4 p2, 0x2

    .line 127
    invoke-direct {p3, p2, v0, p1}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    move-object v3, p3

    .line 134
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 135
    .line 136
    const/high16 v9, 0x30000

    .line 137
    .line 138
    const/16 v10, 0x1e

    .line 139
    .line 140
    const/4 v4, 0x0

    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$HomeScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 144
    .line 145
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    if-nez p2, :cond_7

    .line 157
    .line 158
    if-ne p3, v11, :cond_8

    .line 159
    .line 160
    :cond_7
    new-instance p3, Lk9;

    .line 161
    .line 162
    const/4 p2, 0x3

    .line 163
    invoke-direct {p3, p2, v0, p1}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_8
    move-object v3, p3

    .line 170
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 171
    .line 172
    const/high16 v9, 0x30000

    .line 173
    .line 174
    const/16 v10, 0x1e

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    const/4 v5, 0x0

    .line 178
    const/4 v6, 0x0

    .line 179
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$HomeScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 180
    .line 181
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 182
    .line 183
    .line 184
    iget-boolean p0, p0, Lj9;->l:Z

    .line 185
    .line 186
    if-eqz p0, :cond_b

    .line 187
    .line 188
    const p0, 0x1e2b64eb

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    if-nez p0, :cond_9

    .line 203
    .line 204
    if-ne p2, v11, :cond_a

    .line 205
    .line 206
    :cond_9
    new-instance p2, Lk9;

    .line 207
    .line 208
    const/4 p0, 0x4

    .line 209
    invoke-direct {p2, p0, v0, p1}, Lk9;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_a
    move-object v3, p2

    .line 216
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 217
    .line 218
    const/high16 v9, 0x30000

    .line 219
    .line 220
    const/16 v10, 0x1e

    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    const/4 v5, 0x0

    .line 224
    const/4 v6, 0x0

    .line 225
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$HomeScreenKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 226
    .line 227
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_b
    const p0, 0x1e3353c8

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 241
    .line 242
    .line 243
    :goto_1
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    if-nez p0, :cond_c

    .line 252
    .line 253
    if-ne p2, v11, :cond_d

    .line 254
    .line 255
    :cond_c
    new-instance p2, Lb8;

    .line 256
    .line 257
    invoke-direct {p2, p1, v1}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    move-object v3, p2

    .line 264
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 265
    .line 266
    const/high16 v9, 0x30000

    .line 267
    .line 268
    const/16 v10, 0x1e

    .line 269
    .line 270
    const/4 v4, 0x0

    .line 271
    const/4 v5, 0x0

    .line 272
    const/4 v6, 0x0

    .line 273
    sget-object v7, Lnet/blip/android/ui/home/ComposableSingletons$HomeScreenKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 274
    .line 275
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 280
    .line 281
    .line 282
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 283
    .line 284
    return-object p0
.end method
