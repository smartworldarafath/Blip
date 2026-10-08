.class public final synthetic Lt2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 17
    iput p2, p0, Lt2;->j:I

    iput-object p3, p0, Lt2;->l:Ljava/lang/Object;

    iput-object p4, p0, Lt2;->m:Ljava/lang/Object;

    iput p1, p0, Lt2;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)V
    .locals 1

    .line 15
    const/4 v0, 0x6

    iput v0, p0, Lt2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt2;->l:Ljava/lang/Object;

    iput p1, p0, Lt2;->k:I

    iput-object p3, p0, Lt2;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;ILjava/lang/Object;I)V
    .locals 0

    .line 16
    const/4 p4, 0x7

    iput p4, p0, Lt2;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2;->l:Ljava/lang/Object;

    iput p2, p0, Lt2;->k:I

    iput-object p3, p0, Lt2;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;II)V
    .locals 0

    .line 1
    const/16 p3, 0x8

    .line 2
    .line 3
    iput p3, p0, Lt2;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lt2;->l:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lt2;->m:Ljava/lang/Object;

    .line 11
    .line 12
    iput p4, p0, Lt2;->k:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lt2;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lt2;->k:I

    .line 7
    .line 8
    iget-object v4, p0, Lt2;->m:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lt2;->l:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    or-int/lit8 p2, v3, 0x1

    .line 25
    .line 26
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0, v4, p1, p2}, Landroidx/compose/animation/core/Transition;->a(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    check-cast v4, Lnet/blip/libblip/frontend/Transfer;

    .line 37
    .line 38
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    check-cast p2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    or-int/lit8 p2, v3, 0x1

    .line 46
    .line 47
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p0, v4, p1, p2}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;Landroidx/compose/runtime/Composer;I)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_1
    check-cast p0, Landroidx/compose/ui/text/TextStyle;

    .line 56
    .line 57
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 58
    .line 59
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 60
    .line 61
    check-cast p2, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    or-int/lit8 p2, v3, 0x1

    .line 67
    .line 68
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-static {p0, v4, p1, p2}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :pswitch_2
    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 77
    .line 78
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 79
    .line 80
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 81
    .line 82
    check-cast p2, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-static {p0, v4, p1, p2, v3}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->c(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 96
    .line 97
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 98
    .line 99
    check-cast p2, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p0, v3, v4, p1, p2}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->e(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 113
    .line 114
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 115
    .line 116
    check-cast p2, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    and-int/lit8 v0, p2, 0x3

    .line 123
    .line 124
    const/4 v5, 0x2

    .line 125
    const/4 v6, 0x0

    .line 126
    if-eq v0, v5, :cond_0

    .line 127
    .line 128
    move v0, v2

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    move v0, v6

    .line 131
    :goto_0
    and-int/2addr p2, v2

    .line 132
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 133
    .line 134
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_1

    .line 139
    .line 140
    invoke-interface {p0, v3, v4, p1, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->e(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-object v1

    .line 148
    :pswitch_5
    check-cast p0, Landroidx/compose/runtime/ProvidedValue;

    .line 149
    .line 150
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 151
    .line 152
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 153
    .line 154
    check-cast p2, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    or-int/lit8 p2, v3, 0x1

    .line 160
    .line 161
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    invoke-static {p0, v4, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 166
    .line 167
    .line 168
    return-object v1

    .line 169
    :pswitch_6
    check-cast p0, [Landroidx/compose/runtime/ProvidedValue;

    .line 170
    .line 171
    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 172
    .line 173
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 174
    .line 175
    check-cast p2, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    or-int/lit8 p2, v3, 0x1

    .line 181
    .line 182
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    invoke-static {p0, v4, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 187
    .line 188
    .line 189
    return-object v1

    .line 190
    :pswitch_7
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 191
    .line 192
    check-cast v4, Ljava/util/Map;

    .line 193
    .line 194
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 195
    .line 196
    check-cast p2, Ljava/lang/Integer;

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    or-int/lit8 p2, v3, 0x1

    .line 202
    .line 203
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    invoke-static {p0, v4, p1, p2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->f(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;Landroidx/compose/runtime/Composer;I)V

    .line 208
    .line 209
    .line 210
    return-object v1

    .line 211
    :pswitch_8
    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 212
    .line 213
    check-cast v4, Ljava/lang/String;

    .line 214
    .line 215
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 216
    .line 217
    check-cast p2, Ljava/lang/Integer;

    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    or-int/lit8 p2, v3, 0x1

    .line 223
    .line 224
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    invoke-static {p0, v4, p1, p2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 229
    .line 230
    .line 231
    return-object v1

    .line 232
    :pswitch_9
    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 233
    .line 234
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 235
    .line 236
    check-cast p2, Ljava/lang/Integer;

    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    or-int/2addr p2, v2

    .line 246
    invoke-virtual {p0, v4, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->g(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    return-object v1

    .line 250
    :pswitch_a
    check-cast p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 251
    .line 252
    check-cast v4, Ljava/util/List;

    .line 253
    .line 254
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 255
    .line 256
    check-cast p2, Ljava/lang/Integer;

    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    or-int/lit8 p2, v3, 0x1

    .line 262
    .line 263
    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    invoke-static {p0, v4, p1, p2}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->a(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    .line 268
    .line 269
    .line 270
    return-object v1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
