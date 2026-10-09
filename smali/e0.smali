.class public final synthetic Le0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/io/Serializable;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le0;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Le0;->l:Ljava/io/Serializable;

    .line 8
    .line 9
    iput-object p2, p0, Le0;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Le0;->k:I

    .line 12
    .line 13
    iput-object p4, p0, Le0;->m:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;I)V
    .locals 1

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Le0;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le0;->l:Ljava/io/Serializable;

    iput-object p3, p0, Le0;->m:Ljava/lang/Object;

    iput p4, p0, Le0;->k:I

    iput-object p1, p0, Le0;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Le0;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Le0;->n:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Le0;->m:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v6, v0, Le0;->l:Ljava/io/Serializable;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object v8, v6

    .line 18
    check-cast v8, Lnet/blip/libblip/frontend/Transfer;

    .line 19
    .line 20
    move-object v9, v5

    .line 21
    check-cast v9, Lnet/blip/android/notifications/NotificationFactory;

    .line 22
    .line 23
    move-object v11, v4

    .line 24
    check-cast v11, Lnet/blip/libblip/Peer;

    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v4, v8, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iget v10, v0, Le0;->k:I

    .line 40
    .line 41
    packed-switch v4, :pswitch_data_1

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    iget-object v1, v8, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "Unexpected status ("

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ") encountered in worker"

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :pswitch_0
    invoke-static {v8}, Lnet/blip/libblip/Transfer_DerivedKt;->d(Lnet/blip/libblip/frontend/Transfer;)Lnet/blip/libblip/frontend/TransferErr;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-boolean v0, v0, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 78
    .line 79
    if-nez v0, :cond_0

    .line 80
    .line 81
    new-instance v7, Lnet/blip/android/notifications/c;

    .line 82
    .line 83
    const/4 v12, 0x3

    .line 84
    invoke-direct/range {v7 .. v12}, Lnet/blip/android/notifications/c;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/libblip/Peer;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    new-instance v7, Lnet/blip/android/notifications/c;

    .line 89
    .line 90
    invoke-direct {v7, v8, v11, v9, v10}, Lnet/blip/android/notifications/c;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;Lnet/blip/android/notifications/NotificationFactory;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "Transfer is paused, but has no error"

    .line 95
    .line 96
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    goto :goto_1

    .line 101
    :pswitch_1
    new-instance v7, Lnet/blip/android/notifications/c;

    .line 102
    .line 103
    const/4 v12, 0x3

    .line 104
    invoke-direct/range {v7 .. v12}, Lnet/blip/android/notifications/c;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/libblip/Peer;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_2
    iget-wide v4, v8, Lnet/blip/libblip/frontend/Transfer;->z:J

    .line 109
    .line 110
    const-wide/16 v6, 0x0

    .line 111
    .line 112
    cmp-long v0, v4, v6

    .line 113
    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    new-instance v7, Lnet/blip/android/notifications/c;

    .line 117
    .line 118
    const/4 v12, 0x4

    .line 119
    invoke-direct/range {v7 .. v12}, Lnet/blip/android/notifications/c;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/libblip/Peer;I)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    new-instance v7, Lnet/blip/android/notifications/c;

    .line 124
    .line 125
    const/4 v12, 0x0

    .line 126
    invoke-direct/range {v7 .. v12}, Lnet/blip/android/notifications/c;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;ILnet/blip/libblip/Peer;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_3
    new-instance v7, Lnet/blip/android/notifications/c;

    .line 131
    .line 132
    invoke-direct {v7, v11, v8, v9, v10}, Lnet/blip/android/notifications/c;-><init>(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_4
    new-instance v7, Lnet/blip/android/notifications/b;

    .line 137
    .line 138
    invoke-direct {v7, v8, v9, v10}, Lnet/blip/android/notifications/b;-><init>(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;I)V

    .line 139
    .line 140
    .line 141
    :goto_0
    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const/16 v0, 0x8

    .line 145
    .line 146
    invoke-virtual {v1, v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->h(IZ)V

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x2

    .line 150
    invoke-virtual {v1, v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->h(IZ)V

    .line 151
    .line 152
    .line 153
    iput v3, v1, Landroidx/core/app/NotificationCompat$Builder;->y:I

    .line 154
    .line 155
    iput v3, v1, Landroidx/core/app/NotificationCompat$Builder;->w:I

    .line 156
    .line 157
    :goto_1
    return-object v2

    .line 158
    :pswitch_5
    check-cast v6, Ljava/util/ArrayList;

    .line 159
    .line 160
    check-cast v4, Landroidx/compose/ui/layout/MeasureScope;

    .line 161
    .line 162
    check-cast v5, Ljava/util/ArrayList;

    .line 163
    .line 164
    move-object/from16 v1, p1

    .line 165
    .line 166
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    const/4 v8, 0x0

    .line 173
    move v9, v8

    .line 174
    :goto_2
    if-ge v9, v7, :cond_6

    .line 175
    .line 176
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    check-cast v10, Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    new-array v12, v11, [I

    .line 187
    .line 188
    move v13, v8

    .line 189
    :goto_3
    if-ge v13, v11, :cond_4

    .line 190
    .line 191
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .line 196
    .line 197
    iget v14, v14, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 198
    .line 199
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    sub-int/2addr v15, v3

    .line 204
    if-ge v13, v15, :cond_3

    .line 205
    .line 206
    const/high16 v15, 0x41000000    # 8.0f

    .line 207
    .line 208
    invoke-interface {v4, v15}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    goto :goto_4

    .line 213
    :cond_3
    move v15, v8

    .line 214
    :goto_4
    add-int/2addr v14, v15

    .line 215
    aput v14, v12, v13

    .line 216
    .line 217
    add-int/lit8 v13, v13, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_4
    new-array v11, v11, [I

    .line 221
    .line 222
    iget v13, v0, Le0;->k:I

    .line 223
    .line 224
    invoke-static {v13, v12, v11, v8}, Landroidx/compose/foundation/layout/Arrangement;->c(I[I[IZ)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    move v13, v8

    .line 232
    :goto_5
    if-ge v13, v12, :cond_5

    .line 233
    .line 234
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .line 239
    .line 240
    aget v15, v11, v13

    .line 241
    .line 242
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v16

    .line 246
    check-cast v16, Ljava/lang/Number;

    .line 247
    .line 248
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v1, v14, v15, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->g(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v13, v13, 0x1

    .line 256
    .line 257
    const/4 v3, 0x1

    .line 258
    goto :goto_5

    .line 259
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 260
    .line 261
    const/4 v3, 0x1

    .line 262
    goto :goto_2

    .line 263
    :cond_6
    return-object v2

    .line 264
    nop

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
