.class public final synthetic Landroidx/compose/foundation/lazy/layout/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final synthetic k:Landroidx/compose/ui/Modifier;

.field public final synthetic l:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/c;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/c;->k:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/c;->l:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/c;->m:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 17
    .line 18
    if-ne p3, v0, :cond_0

    .line 19
    .line 20
    new-instance p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 21
    .line 22
    new-instance v1, Lo1;

    .line 23
    .line 24
    const/16 v2, 0x13

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/c;->m:Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    invoke-direct {v1, v3, v2}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p3, p1, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Lo1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    move-object v3, p3

    .line 38
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 47
    .line 48
    new-instance p3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;

    .line 49
    .line 50
    invoke-direct {p3, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p3}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    move-object v4, p1

    .line 60
    check-cast v4, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/c;->j:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    if-eqz v2, :cond_a

    .line 66
    .line 67
    const p3, 0x67eb8deb

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 71
    .line 72
    .line 73
    const p3, 0x34e696b7

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 77
    .line 78
    .line 79
    sget-object p3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p3, :cond_3

    .line 82
    .line 83
    const-string v1, "robolectric"

    .line 84
    .line 85
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_3

    .line 90
    .line 91
    const p3, 0x503371a7

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    if-ne p3, v0, :cond_2

    .line 102
    .line 103
    new-instance p3, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt$noopScheduler$1;

    .line 104
    .line 105
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    check-cast p3, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt$noopScheduler$1;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 114
    .line 115
    .line 116
    :goto_0
    move-object v5, p3

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    const p3, 0x503633a1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 122
    .line 123
    .line 124
    sget-object p3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    check-cast p3, Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    if-nez v1, :cond_4

    .line 141
    .line 142
    if-ne v5, v0, :cond_7

    .line 143
    .line 144
    :cond_4
    const v1, 0x7f0a0078

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    instance-of v6, v5, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 152
    .line 153
    if-eqz v6, :cond_5

    .line 154
    .line 155
    check-cast v5, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    const/4 v5, 0x0

    .line 159
    :goto_1
    if-nez v5, :cond_6

    .line 160
    .line 161
    new-instance v5, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 162
    .line 163
    invoke-direct {v5, p3}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;-><init>(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, v1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    move-object p3, v5

    .line 173
    check-cast p3, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :goto_2
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 180
    .line 181
    .line 182
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    or-int/2addr v1, v6

    .line 195
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    or-int/2addr v1, v6

    .line 200
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    or-int/2addr v1, v6

    .line 205
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    if-nez v1, :cond_8

    .line 210
    .line 211
    if-ne v6, v0, :cond_9

    .line 212
    .line 213
    :cond_8
    new-instance v1, Ls2;

    .line 214
    .line 215
    const/4 v6, 0x6

    .line 216
    invoke-direct/range {v1 .. v6}, Ls2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    move-object v6, v1

    .line 223
    :cond_9
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 224
    .line 225
    invoke-static {p3, v6, p2}, Landroidx/compose/runtime/EffectsKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_a
    const p3, 0x67f47fcd

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 239
    .line 240
    .line 241
    :goto_3
    sget p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->a:I

    .line 242
    .line 243
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/c;->k:Landroidx/compose/ui/Modifier;

    .line 244
    .line 245
    if-eqz v2, :cond_c

    .line 246
    .line 247
    new-instance p3, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    .line 248
    .line 249
    invoke-direct {p3, v2}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, p3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    if-nez p3, :cond_b

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_b
    move-object p1, p3

    .line 260
    :cond_c
    :goto_4
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p3

    .line 264
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/c;->l:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;

    .line 265
    .line 266
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    or-int/2addr p3, v1

    .line 271
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-nez p3, :cond_d

    .line 276
    .line 277
    if-ne v1, v0, :cond_e

    .line 278
    .line 279
    :cond_d
    new-instance v1, La0;

    .line 280
    .line 281
    const/16 p3, 0xe

    .line 282
    .line 283
    invoke-direct {v1, p3, v3, p0}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_e
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 290
    .line 291
    const/16 p0, 0x8

    .line 292
    .line 293
    invoke-static {v4, p1, v1, p2, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->b(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 294
    .line 295
    .line 296
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 297
    .line 298
    return-object p0
.end method
