.class public final synthetic Lkf;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/android/ui/navigation/AuthScope;

.field public final synthetic l:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lnet/blip/android/ui/navigation/AuthScope;Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkf;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lkf;->k:Lnet/blip/android/ui/navigation/AuthScope;

    .line 4
    .line 5
    iput-object p2, p0, Lkf;->l:Landroidx/navigation/NavHostController;

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
    iget v1, v0, Lkf;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    iget-object v4, v0, Lkf;->l:Landroidx/navigation/NavHostController;

    .line 10
    .line 11
    iget-object v0, v0, Lkf;->k:Lnet/blip/android/ui/navigation/AuthScope;

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 22
    .line 23
    move-object/from16 v8, p2

    .line 24
    .line 25
    check-cast v8, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    and-int/lit8 v9, v8, 0x3

    .line 32
    .line 33
    if-eq v9, v5, :cond_0

    .line 34
    .line 35
    move v9, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v9, v7

    .line 38
    :goto_0
    and-int/2addr v8, v6

    .line 39
    move-object v15, v1

    .line 40
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    invoke-virtual {v15, v8, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    const v1, 0x79d6537b

    .line 49
    .line 50
    .line 51
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 55
    .line 56
    iget-object v1, v1, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast v1, Ljava/lang/Iterable;

    .line 66
    .line 67
    new-instance v8, La7;

    .line 68
    .line 69
    const/4 v9, 0x4

    .line 70
    invoke-direct {v8, v9}, La7;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v9, La7;

    .line 74
    .line 75
    const/4 v10, 0x5

    .line 76
    invoke-direct {v9, v10}, La7;-><init>(I)V

    .line 77
    .line 78
    .line 79
    new-array v5, v5, [Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    aput-object v8, v5, v7

    .line 82
    .line 83
    aput-object v9, v5, v6

    .line 84
    .line 85
    invoke-static {v5}, Lkotlin/comparisons/ComparisonsKt;->a([Lkotlin/jvm/functions/Function1;)Lc5;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v5, Lnet/blip/libblip/Device_DerivedKt$sortedCurrentDeviceFirst$$inlined$compareBy$1;

    .line 94
    .line 95
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v0, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 103
    .line 104
    iget-object v0, v0, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v0, v1}, Lnet/blip/libblip/Device_DerivedKt;->c(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object v11, v1

    .line 125
    check-cast v11, Lnet/blip/libblip/Peer;

    .line 126
    .line 127
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    or-int/2addr v1, v5

    .line 136
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    if-nez v1, :cond_1

    .line 141
    .line 142
    if-ne v5, v3, :cond_2

    .line 143
    .line 144
    :cond_1
    new-instance v5, Lp0;

    .line 145
    .line 146
    const/16 v1, 0x1c

    .line 147
    .line 148
    invoke-direct {v5, v1, v4, v11}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    move-object v13, v5

    .line 155
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 156
    .line 157
    const/16 v16, 0x180

    .line 158
    .line 159
    const/16 v17, 0x11

    .line 160
    .line 161
    const/4 v10, 0x0

    .line 162
    const/4 v12, 0x1

    .line 163
    const/4 v14, 0x0

    .line 164
    invoke-static/range {v10 .. v17}, Lnet/blip/android/ui/list/PeerListRowKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 169
    .line 170
    .line 171
    const/4 v0, 0x0

    .line 172
    invoke-static {v0, v15, v7}, Lnet/blip/android/ui/list/SendToYourDevicesListRowKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 177
    .line 178
    .line 179
    :goto_2
    return-object v2

    .line 180
    :pswitch_0
    move-object/from16 v1, p1

    .line 181
    .line 182
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 183
    .line 184
    move-object/from16 v8, p2

    .line 185
    .line 186
    check-cast v8, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    and-int/lit8 v9, v8, 0x3

    .line 193
    .line 194
    if-eq v9, v5, :cond_5

    .line 195
    .line 196
    move v7, v6

    .line 197
    :cond_5
    and-int/lit8 v5, v8, 0x1

    .line 198
    .line 199
    move-object v13, v1

    .line 200
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 201
    .line 202
    invoke-virtual {v13, v5, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_8

    .line 207
    .line 208
    new-instance v9, Lnet/blip/libblip/Peer$User;

    .line 209
    .line 210
    iget-object v0, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 211
    .line 212
    invoke-direct {v9, v0}, Lnet/blip/libblip/Peer$User;-><init>(Lnet/blip/libblip/User;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-nez v0, :cond_6

    .line 224
    .line 225
    if-ne v1, v3, :cond_7

    .line 226
    .line 227
    :cond_6
    new-instance v1, Li3;

    .line 228
    .line 229
    const/16 v0, 0xa

    .line 230
    .line 231
    invoke-direct {v1, v4, v0}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    move-object v11, v1

    .line 238
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 239
    .line 240
    const/4 v14, 0x0

    .line 241
    const/16 v15, 0x15

    .line 242
    .line 243
    const/4 v8, 0x0

    .line 244
    const/4 v10, 0x0

    .line 245
    const/4 v12, 0x0

    .line 246
    invoke-static/range {v8 .. v15}, Lnet/blip/android/ui/list/PeerListRowKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 251
    .line 252
    .line 253
    :goto_3
    return-object v2

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
