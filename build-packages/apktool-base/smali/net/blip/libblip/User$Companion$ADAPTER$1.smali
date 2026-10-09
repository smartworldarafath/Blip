.class public final Lnet/blip/libblip/User$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public final v:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/ClassReference;)V
    .locals 7

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    sget-object v4, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x0

    .line 7
    const-string v3, "type.googleapis.com/blip.User"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lhh;

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-direct {p0, p1}, Lhh;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, v0, Lnet/blip/libblip/User$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 7
    .line 8
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lnet/blip/libblip/PlanKind;->m:Lnet/blip/libblip/PlanKind;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    const-string v5, ""

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object/from16 v16, v2

    .line 24
    .line 25
    move-object v9, v5

    .line 26
    move-object v10, v9

    .line 27
    move v11, v6

    .line 28
    move v12, v11

    .line 29
    move v13, v12

    .line 30
    move-object v14, v8

    .line 31
    move-object v15, v14

    .line 32
    move-object v5, v0

    .line 33
    move-object v6, v5

    .line 34
    move-object v8, v10

    .line 35
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v0, -0x1

    .line 40
    if-eq v2, v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    sget-object v17, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 44
    .line 45
    if-eq v2, v0, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq v2, v0, :cond_1

    .line 49
    .line 50
    const/16 v0, 0x270f

    .line 51
    .line 52
    move-object/from16 v18, v5

    .line 53
    .line 54
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 55
    .line 56
    if-eq v2, v0, :cond_0

    .line 57
    .line 58
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 59
    .line 60
    move-object/from16 v19, v0

    .line 61
    .line 62
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 63
    .line 64
    packed-switch v2, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 68
    .line 69
    .line 70
    move-object/from16 v2, p0

    .line 71
    .line 72
    move-object/from16 v20, v8

    .line 73
    .line 74
    move-object/from16 v21, v9

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :pswitch_0
    invoke-virtual {v5, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object/from16 v2, p0

    .line 83
    .line 84
    move-object v14, v0

    .line 85
    :goto_1
    move-object/from16 v5, v18

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_1
    :try_start_0
    sget-object v0, Lnet/blip/libblip/PlanKind;->l:Lnet/blip/libblip/PlanKind$Companion$ADAPTER$1;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/squareup/wire/EnumAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    move-object/from16 v2, p0

    .line 95
    .line 96
    move-object/from16 v16, v0

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 101
    .line 102
    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->j:I

    .line 103
    .line 104
    move-object/from16 v20, v8

    .line 105
    .line 106
    move-object/from16 v21, v9

    .line 107
    .line 108
    int-to-long v8, v0

    .line 109
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->a(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v2, p0

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_2
    move-object/from16 v20, v8

    .line 120
    .line 121
    move-object/from16 v21, v9

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    move-object/from16 v2, p0

    .line 134
    .line 135
    move v13, v0

    .line 136
    goto :goto_1

    .line 137
    :pswitch_3
    move-object/from16 v20, v8

    .line 138
    .line 139
    move-object/from16 v21, v9

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    move-object/from16 v2, p0

    .line 152
    .line 153
    move v12, v0

    .line 154
    goto :goto_1

    .line 155
    :pswitch_4
    move-object/from16 v20, v8

    .line 156
    .line 157
    move-object/from16 v21, v9

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    move-object/from16 v2, p0

    .line 170
    .line 171
    move v11, v0

    .line 172
    goto :goto_1

    .line 173
    :pswitch_5
    move-object/from16 v21, v9

    .line 174
    .line 175
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    move-object/from16 v2, p0

    .line 183
    .line 184
    move-object v8, v0

    .line 185
    goto :goto_1

    .line 186
    :pswitch_6
    move-object/from16 v2, p0

    .line 187
    .line 188
    move-object/from16 v20, v8

    .line 189
    .line 190
    move-object/from16 v21, v9

    .line 191
    .line 192
    iget-object v0, v2, Lnet/blip/libblip/User$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 193
    .line 194
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Ljava/util/Map;

    .line 205
    .line 206
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    move-object/from16 v5, v18

    .line 210
    .line 211
    move-object/from16 v8, v20

    .line 212
    .line 213
    move-object/from16 v9, v21

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_7
    move-object/from16 v2, p0

    .line 218
    .line 219
    move-object/from16 v20, v8

    .line 220
    .line 221
    move-object/from16 v21, v9

    .line 222
    .line 223
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->k()Lokio/ByteString;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    move-object v6, v0

    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :pswitch_8
    move-object/from16 v2, p0

    .line 234
    .line 235
    move-object/from16 v20, v8

    .line 236
    .line 237
    move-object/from16 v21, v9

    .line 238
    .line 239
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->k()Lokio/ByteString;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    move-object v5, v0

    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_0
    move-object/from16 v2, p0

    .line 250
    .line 251
    move-object/from16 v20, v8

    .line 252
    .line 253
    move-object/from16 v21, v9

    .line 254
    .line 255
    invoke-virtual {v5, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move-object v15, v0

    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_1
    move-object/from16 v2, p0

    .line 263
    .line 264
    move-object/from16 v18, v5

    .line 265
    .line 266
    move-object/from16 v20, v8

    .line 267
    .line 268
    move-object/from16 v21, v9

    .line 269
    .line 270
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    move-object v10, v0

    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_2
    move-object/from16 v2, p0

    .line 281
    .line 282
    move-object/from16 v18, v5

    .line 283
    .line 284
    move-object/from16 v20, v8

    .line 285
    .line 286
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    move-object v9, v0

    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_3
    move-object/from16 v18, v5

    .line 297
    .line 298
    move-object/from16 v20, v8

    .line 299
    .line 300
    move-object/from16 v21, v9

    .line 301
    .line 302
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    new-instance v1, Lnet/blip/libblip/User;

    .line 307
    .line 308
    check-cast v16, Lnet/blip/libblip/PlanKind;

    .line 309
    .line 310
    check-cast v14, Ljava/time/Instant;

    .line 311
    .line 312
    check-cast v15, Ljava/time/Instant;

    .line 313
    .line 314
    move-object v4, v10

    .line 315
    move v8, v11

    .line 316
    move v9, v12

    .line 317
    move v10, v13

    .line 318
    move-object v12, v14

    .line 319
    move-object v13, v15

    .line 320
    move-object/from16 v11, v16

    .line 321
    .line 322
    move-object/from16 v2, v20

    .line 323
    .line 324
    move-object/from16 v3, v21

    .line 325
    .line 326
    move-object v14, v0

    .line 327
    invoke-direct/range {v1 .. v14}, Lnet/blip/libblip/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/util/Map;ZZZLnet/blip/libblip/PlanKind;Ljava/time/Instant;Ljava/time/Instant;Lokio/ByteString;)V

    .line 328
    .line 329
    .line 330
    return-object v1

    .line 331
    :pswitch_data_0
    .packed-switch 0x5
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

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Lnet/blip/libblip/User;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 10
    .line 11
    iget-object v1, p2, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 12
    .line 13
    iget-object v2, p2, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p2, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p2, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 18
    .line 19
    const-string v5, ""

    .line 20
    .line 21
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    const/16 v6, 0x8

    .line 30
    .line 31
    invoke-virtual {v7, p1, v6, v4}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-virtual {v7, p1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-virtual {v7, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    const/4 v3, 0x5

    .line 65
    invoke-virtual {v4, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    const/4 v1, 0x6

    .line 75
    invoke-virtual {v4, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object p0, p0, Lnet/blip/libblip/User$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 79
    .line 80
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 85
    .line 86
    const/4 v0, 0x7

    .line 87
    iget-object v1, p2, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-boolean p0, p2, Lnet/blip/libblip/User;->r:Z

    .line 93
    .line 94
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 95
    .line 96
    if-eqz p0, :cond_5

    .line 97
    .line 98
    const/16 v1, 0x9

    .line 99
    .line 100
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-boolean p0, p2, Lnet/blip/libblip/User;->s:Z

    .line 108
    .line 109
    if-eqz p0, :cond_6

    .line 110
    .line 111
    const/16 v1, 0xa

    .line 112
    .line 113
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    iget-boolean p0, p2, Lnet/blip/libblip/User;->t:Z

    .line 121
    .line 122
    if-eqz p0, :cond_7

    .line 123
    .line 124
    const/16 v1, 0xb

    .line 125
    .line 126
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object p0, p2, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 134
    .line 135
    sget-object v0, Lnet/blip/libblip/PlanKind;->m:Lnet/blip/libblip/PlanKind;

    .line 136
    .line 137
    if-eq p0, v0, :cond_8

    .line 138
    .line 139
    sget-object v0, Lnet/blip/libblip/PlanKind;->l:Lnet/blip/libblip/PlanKind$Companion$ADAPTER$1;

    .line 140
    .line 141
    const/16 v1, 0xc

    .line 142
    .line 143
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    iget-object p0, p2, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 147
    .line 148
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 149
    .line 150
    if-eqz p0, :cond_9

    .line 151
    .line 152
    const/16 v1, 0xd

    .line 153
    .line 154
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_9
    iget-object p0, p2, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 158
    .line 159
    if-eqz p0, :cond_a

    .line 160
    .line 161
    const/16 v1, 0x270f

    .line 162
    .line 163
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_a
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Lnet/blip/libblip/User;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p2, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p2, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p2, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 16
    .line 17
    iget-object v4, p2, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 24
    .line 25
    .line 26
    iget-object v5, p2, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 27
    .line 28
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const/16 v7, 0x270f

    .line 33
    .line 34
    invoke-virtual {v6, p1, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v5, p2, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    const/16 v7, 0xd

    .line 42
    .line 43
    invoke-virtual {v6, p1, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v5, p2, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 47
    .line 48
    sget-object v6, Lnet/blip/libblip/PlanKind;->m:Lnet/blip/libblip/PlanKind;

    .line 49
    .line 50
    if-eq v5, v6, :cond_2

    .line 51
    .line 52
    sget-object v6, Lnet/blip/libblip/PlanKind;->l:Lnet/blip/libblip/PlanKind$Companion$ADAPTER$1;

    .line 53
    .line 54
    const/16 v7, 0xc

    .line 55
    .line 56
    invoke-virtual {v6, p1, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-boolean v5, p2, Lnet/blip/libblip/User;->t:Z

    .line 60
    .line 61
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    const/16 v7, 0xb

    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v6, p1, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-boolean v5, p2, Lnet/blip/libblip/User;->s:Z

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    const/16 v7, 0xa

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v6, p1, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-boolean v5, p2, Lnet/blip/libblip/User;->r:Z

    .line 88
    .line 89
    if-eqz v5, :cond_5

    .line 90
    .line 91
    const/16 v7, 0x9

    .line 92
    .line 93
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v6, p1, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-object p0, p0, Lnet/blip/libblip/User$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 101
    .line 102
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 107
    .line 108
    const/4 v5, 0x7

    .line 109
    iget-object p2, p2, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 110
    .line 111
    invoke-virtual {p0, p1, v5, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object p0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 115
    .line 116
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 121
    .line 122
    if-nez p2, :cond_6

    .line 123
    .line 124
    const/4 p2, 0x6

    .line 125
    invoke-virtual {v5, p1, p2, v4}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-nez p0, :cond_7

    .line 133
    .line 134
    const/4 p0, 0x5

    .line 135
    invoke-virtual {v5, p1, p0, v3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    const-string p0, ""

    .line 139
    .line 140
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 145
    .line 146
    if-nez p2, :cond_8

    .line 147
    .line 148
    const/4 p2, 0x2

    .line 149
    invoke-virtual {v3, p1, p2, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-nez p2, :cond_9

    .line 157
    .line 158
    const/4 p2, 0x1

    .line 159
    invoke-virtual {v3, p1, p2, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_a

    .line 167
    .line 168
    const/16 p0, 0x8

    .line 169
    .line 170
    invoke-virtual {v3, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_a
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 9

    .line 1
    check-cast p1, Lnet/blip/libblip/User;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 7
    .line 8
    iget-object v1, p1, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 9
    .line 10
    iget-object v2, p1, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p1, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lokio/ByteString;->e()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iget-object v5, p1, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 23
    .line 24
    const-string v6, ""

    .line 25
    .line 26
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 31
    .line 32
    if-nez v7, :cond_0

    .line 33
    .line 34
    const/16 v7, 0x8

    .line 35
    .line 36
    invoke-virtual {v8, v7, v5}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    add-int/2addr v4, v5

    .line 41
    :cond_0
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    invoke-virtual {v8, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/2addr v4, v3

    .line 53
    :cond_1
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    invoke-virtual {v8, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v4, v2

    .line 65
    :cond_2
    sget-object v2, Lokio/ByteString;->m:Lokio/ByteString;

    .line 66
    .line 67
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    const/4 v3, 0x5

    .line 76
    invoke-virtual {v5, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v4, v1

    .line 81
    :cond_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    const/4 v1, 0x6

    .line 88
    invoke-virtual {v5, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v4, v0

    .line 93
    :cond_4
    iget-object p0, p0, Lnet/blip/libblip/User$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 94
    .line 95
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 100
    .line 101
    const/4 v0, 0x7

    .line 102
    iget-object v1, p1, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 103
    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    add-int/2addr p0, v4

    .line 109
    iget-boolean v0, p1, Lnet/blip/libblip/User;->r:Z

    .line 110
    .line 111
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    const/16 v2, 0x9

    .line 116
    .line 117
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    :cond_5
    iget-boolean v0, p1, Lnet/blip/libblip/User;->s:Z

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    const/16 v2, 0xa

    .line 126
    .line 127
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    :cond_6
    iget-boolean v0, p1, Lnet/blip/libblip/User;->t:Z

    .line 132
    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    const/16 v2, 0xb

    .line 136
    .line 137
    invoke-static {v0, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    :cond_7
    iget-object v0, p1, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 142
    .line 143
    sget-object v1, Lnet/blip/libblip/PlanKind;->m:Lnet/blip/libblip/PlanKind;

    .line 144
    .line 145
    if-eq v0, v1, :cond_8

    .line 146
    .line 147
    sget-object v1, Lnet/blip/libblip/PlanKind;->l:Lnet/blip/libblip/PlanKind$Companion$ADAPTER$1;

    .line 148
    .line 149
    const/16 v2, 0xc

    .line 150
    .line 151
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    add-int/2addr p0, v0

    .line 156
    :cond_8
    iget-object v0, p1, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 157
    .line 158
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    const/16 v2, 0xd

    .line 163
    .line 164
    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    add-int/2addr p0, v0

    .line 169
    :cond_9
    iget-object p1, p1, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    const/16 v0, 0x270f

    .line 174
    .line 175
    invoke-virtual {v1, v0, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    add-int/2addr p1, p0

    .line 180
    return p1

    .line 181
    :cond_a
    return p0
.end method
