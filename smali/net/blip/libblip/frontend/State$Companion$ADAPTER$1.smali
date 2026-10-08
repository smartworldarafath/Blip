.class public final Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lnet/blip/libblip/frontend/State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public final v:Lkotlin/Lazy;

.field public final w:Lkotlin/Lazy;

.field public final x:Lkotlin/Lazy;


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
    const-string v3, "type.googleapis.com/frontend.State"

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
    new-instance p0, Lvc;

    .line 15
    .line 16
    const/16 p1, 0x16

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lvc;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iput-object p0, v0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 26
    .line 27
    new-instance p0, Lvc;

    .line 28
    .line 29
    const/16 p1, 0x17

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lvc;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput-object p0, v0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 39
    .line 40
    new-instance p0, Lvc;

    .line 41
    .line 42
    const/16 p1, 0x18

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lvc;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iput-object p0, v0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->x:Lkotlin/Lazy;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v6, ""

    .line 30
    .line 31
    move/from16 v17, v4

    .line 32
    .line 33
    move/from16 v22, v17

    .line 34
    .line 35
    move-object v7, v5

    .line 36
    move-object v8, v7

    .line 37
    move-object v9, v8

    .line 38
    move-object v13, v9

    .line 39
    move-object v14, v13

    .line 40
    move-object v15, v14

    .line 41
    move-object/from16 v16, v15

    .line 42
    .line 43
    move-object/from16 v18, v16

    .line 44
    .line 45
    move-object/from16 v19, v18

    .line 46
    .line 47
    move-object/from16 v20, v6

    .line 48
    .line 49
    move-object/from16 v21, v20

    .line 50
    .line 51
    move-object/from16 v6, v19

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    move-object/from16 v23, v5

    .line 58
    .line 59
    const/4 v5, -0x1

    .line 60
    if-eq v4, v5, :cond_0

    .line 61
    .line 62
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 63
    .line 64
    sparse-switch v4, :sswitch_data_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :sswitch_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    move-object/from16 v21, v4

    .line 79
    .line 80
    :goto_1
    move-object/from16 v5, v23

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :sswitch_1
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 84
    .line 85
    invoke-virtual {v4, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    move/from16 v17, v4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :sswitch_2
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    move-object/from16 v19, v4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :sswitch_3
    sget-object v4, Lnet/blip/libblip/frontend/SystemInfo;->q:Lnet/blip/libblip/frontend/SystemInfo$Companion$ADAPTER$1;

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/SystemInfo$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    move-object/from16 v18, v4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :sswitch_4
    sget-object v4, Lnet/blip/libblip/Plan;->n:Lnet/blip/libblip/Plan$Companion$ADAPTER$1;

    .line 117
    .line 118
    invoke-virtual {v4, v1}, Lnet/blip/libblip/Plan$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    move-object/from16 v16, v4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :sswitch_5
    sget-object v4, Lnet/blip/libblip/frontend/PushNotifications;->p:Lnet/blip/libblip/frontend/PushNotifications$Companion$ADAPTER$1;

    .line 126
    .line 127
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/PushNotifications$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    move-object v15, v4

    .line 132
    goto :goto_1

    .line 133
    :sswitch_6
    iget-object v4, v0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->x:Lkotlin/Lazy;

    .line 134
    .line 135
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lcom/squareup/wire/ProtoAdapter;

    .line 140
    .line 141
    invoke-virtual {v4, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/util/Map;

    .line 146
    .line 147
    invoke-interface {v12, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :sswitch_7
    iget-object v4, v0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 152
    .line 153
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lcom/squareup/wire/ProtoAdapter;

    .line 158
    .line 159
    invoke-virtual {v4, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {v11, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :sswitch_8
    iget-object v4, v0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 170
    .line 171
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Lcom/squareup/wire/ProtoAdapter;

    .line 176
    .line 177
    invoke-virtual {v4, v1}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Ljava/util/Map;

    .line 182
    .line 183
    invoke-interface {v10, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :sswitch_9
    sget-object v4, Lnet/blip/libblip/frontend/Users;->p:Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;

    .line 188
    .line 189
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    move-object v14, v4

    .line 194
    goto :goto_1

    .line 195
    :sswitch_a
    sget-object v4, Lnet/blip/libblip/frontend/Messaging;->r:Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;

    .line 196
    .line 197
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    move-object v13, v4

    .line 202
    goto :goto_1

    .line 203
    :sswitch_b
    sget-object v4, Lnet/blip/libblip/frontend/Onboarding;->s:Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;

    .line 204
    .line 205
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    move-object v9, v4

    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :sswitch_c
    sget-object v4, Lnet/blip/libblip/frontend/Auth;->q:Lnet/blip/libblip/frontend/Auth$Companion$ADAPTER$1;

    .line 213
    .line 214
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/Auth$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    move-object v8, v4

    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :sswitch_d
    sget-object v4, Lnet/blip/libblip/frontend/Registration;->r:Lnet/blip/libblip/frontend/Registration$Companion$ADAPTER$1;

    .line 222
    .line 223
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/Registration$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    move-object v7, v4

    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :sswitch_e
    sget-object v4, Lnet/blip/libblip/frontend/Config;->r:Lnet/blip/libblip/frontend/Config$Companion$ADAPTER$1;

    .line 231
    .line 232
    invoke-virtual {v4, v1}, Lnet/blip/libblip/frontend/Config$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    move-object v6, v4

    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :sswitch_f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->n()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    move-object/from16 v20, v4

    .line 247
    .line 248
    goto/16 :goto_1

    .line 249
    .line 250
    :sswitch_10
    sget-object v4, Lnet/blip/libblip/UserAgent;->v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 251
    .line 252
    invoke-virtual {v4, v1}, Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    move-object v5, v4

    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :sswitch_11
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->p()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    move/from16 v22, v4

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    move-object/from16 v5, v19

    .line 277
    .line 278
    move-object/from16 v19, v0

    .line 279
    .line 280
    new-instance v0, Lnet/blip/libblip/frontend/State;

    .line 281
    .line 282
    move-object/from16 v2, v23

    .line 283
    .line 284
    check-cast v2, Lnet/blip/libblip/UserAgent;

    .line 285
    .line 286
    move-object v4, v6

    .line 287
    check-cast v4, Lnet/blip/libblip/frontend/Config;

    .line 288
    .line 289
    check-cast v7, Lnet/blip/libblip/frontend/Registration;

    .line 290
    .line 291
    move-object v6, v8

    .line 292
    check-cast v6, Lnet/blip/libblip/frontend/Auth;

    .line 293
    .line 294
    check-cast v9, Lnet/blip/libblip/frontend/Onboarding;

    .line 295
    .line 296
    move-object v8, v13

    .line 297
    check-cast v8, Lnet/blip/libblip/frontend/Messaging;

    .line 298
    .line 299
    check-cast v14, Lnet/blip/libblip/frontend/Users;

    .line 300
    .line 301
    move-object v13, v15

    .line 302
    check-cast v13, Lnet/blip/libblip/frontend/PushNotifications;

    .line 303
    .line 304
    check-cast v16, Lnet/blip/libblip/Plan;

    .line 305
    .line 306
    move-object/from16 v15, v18

    .line 307
    .line 308
    check-cast v15, Lnet/blip/libblip/frontend/SystemInfo;

    .line 309
    .line 310
    move-object v1, v5

    .line 311
    check-cast v1, Ljava/time/Instant;

    .line 312
    .line 313
    move-object v5, v7

    .line 314
    move-object v7, v9

    .line 315
    move-object v9, v14

    .line 316
    move-object/from16 v14, v16

    .line 317
    .line 318
    move-object/from16 v3, v20

    .line 319
    .line 320
    move-object/from16 v18, v21

    .line 321
    .line 322
    move-object/from16 v16, v1

    .line 323
    .line 324
    move/from16 v1, v22

    .line 325
    .line 326
    invoke-direct/range {v0 .. v19}, Lnet/blip/libblip/frontend/State;-><init>(ILnet/blip/libblip/UserAgent;Ljava/lang/String;Lnet/blip/libblip/frontend/Config;Lnet/blip/libblip/frontend/Registration;Lnet/blip/libblip/frontend/Auth;Lnet/blip/libblip/frontend/Onboarding;Lnet/blip/libblip/frontend/Messaging;Lnet/blip/libblip/frontend/Users;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Lnet/blip/libblip/frontend/PushNotifications;Lnet/blip/libblip/Plan;Lnet/blip/libblip/frontend/SystemInfo;Ljava/time/Instant;ZLjava/lang/String;Lokio/ByteString;)V

    .line 327
    .line 328
    .line 329
    return-object v0

    .line 330
    nop

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_11
        0x32 -> :sswitch_10
        0x33 -> :sswitch_f
        0x64 -> :sswitch_e
        0xc8 -> :sswitch_d
        0xc9 -> :sswitch_c
        0x12c -> :sswitch_b
        0x190 -> :sswitch_a
        0x1f4 -> :sswitch_9
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_7
        0x320 -> :sswitch_6
        0x385 -> :sswitch_5
        0x3e8 -> :sswitch_4
        0x44c -> :sswitch_3
        0x15f90 -> :sswitch_2
        0x15f91 -> :sswitch_1
        0x1869f -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/State;

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
    iget-object v0, p2, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p2, Lnet/blip/libblip/frontend/State;->m:I

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 23
    .line 24
    invoke-virtual {v4, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v2, p2, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    sget-object v3, Lnet/blip/libblip/UserAgent;->v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 32
    .line 33
    const/16 v4, 0x32

    .line 34
    .line 35
    invoke-virtual {v3, p1, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const-string v2, ""

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    const/16 v3, 0x33

    .line 49
    .line 50
    invoke-virtual {v4, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    sget-object v3, Lnet/blip/libblip/frontend/Config;->r:Lnet/blip/libblip/frontend/Config$Companion$ADAPTER$1;

    .line 58
    .line 59
    const/16 v5, 0x64

    .line 60
    .line 61
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    sget-object v3, Lnet/blip/libblip/frontend/Onboarding;->s:Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;

    .line 69
    .line 70
    const/16 v5, 0x12c

    .line 71
    .line 72
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    sget-object v3, Lnet/blip/libblip/frontend/Messaging;->r:Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;

    .line 80
    .line 81
    const/16 v5, 0x190

    .line 82
    .line 83
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    sget-object v3, Lnet/blip/libblip/frontend/Users;->p:Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;

    .line 91
    .line 92
    const/16 v5, 0x1f4

    .line 93
    .line 94
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    iget-object v1, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 98
    .line 99
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/squareup/wire/ProtoAdapter;

    .line 104
    .line 105
    const/16 v3, 0x258

    .line 106
    .line 107
    iget-object v5, p2, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 108
    .line 109
    invoke-virtual {v1, p1, v3, v5}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 113
    .line 114
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/squareup/wire/ProtoAdapter;

    .line 119
    .line 120
    const/16 v3, 0x2bc

    .line 121
    .line 122
    iget-object v5, p2, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 123
    .line 124
    invoke-virtual {v1, p1, v3, v5}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->x:Lkotlin/Lazy;

    .line 128
    .line 129
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 134
    .line 135
    const/16 v1, 0x320

    .line 136
    .line 137
    iget-object v3, p2, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 138
    .line 139
    invoke-virtual {p0, p1, v1, v3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 143
    .line 144
    if-eqz p0, :cond_7

    .line 145
    .line 146
    sget-object v1, Lnet/blip/libblip/frontend/PushNotifications;->p:Lnet/blip/libblip/frontend/PushNotifications$Companion$ADAPTER$1;

    .line 147
    .line 148
    const/16 v3, 0x385

    .line 149
    .line 150
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_7
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 154
    .line 155
    if-eqz p0, :cond_8

    .line 156
    .line 157
    sget-object v1, Lnet/blip/libblip/Plan;->n:Lnet/blip/libblip/Plan$Companion$ADAPTER$1;

    .line 158
    .line 159
    const/16 v3, 0x3e8

    .line 160
    .line 161
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 165
    .line 166
    if-eqz p0, :cond_9

    .line 167
    .line 168
    sget-object v1, Lnet/blip/libblip/frontend/SystemInfo;->q:Lnet/blip/libblip/frontend/SystemInfo$Companion$ADAPTER$1;

    .line 169
    .line 170
    const/16 v3, 0x44c

    .line 171
    .line 172
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_9
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 176
    .line 177
    if-eqz p0, :cond_a

    .line 178
    .line 179
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 180
    .line 181
    const v3, 0x15f90

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_a
    iget-boolean p0, p2, Lnet/blip/libblip/frontend/State;->z:Z

    .line 188
    .line 189
    if-eqz p0, :cond_b

    .line 190
    .line 191
    const v1, 0x15f91

    .line 192
    .line 193
    .line 194
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 199
    .line 200
    invoke-virtual {v3, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_b
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-nez p0, :cond_c

    .line 208
    .line 209
    const p0, 0x1869f

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_c
    sget-object p0, Lnet/blip/libblip/frontend/Registration;->r:Lnet/blip/libblip/frontend/Registration$Companion$ADAPTER$1;

    .line 216
    .line 217
    const/16 v0, 0xc8

    .line 218
    .line 219
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 220
    .line 221
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    sget-object p0, Lnet/blip/libblip/frontend/Auth;->q:Lnet/blip/libblip/frontend/Auth$Companion$ADAPTER$1;

    .line 225
    .line 226
    const/16 v0, 0xc9

    .line 227
    .line 228
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 229
    .line 230
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Lnet/blip/libblip/frontend/State;

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
    iget-object v0, p2, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lnet/blip/libblip/frontend/Auth;->q:Lnet/blip/libblip/frontend/Auth$Companion$ADAPTER$1;

    .line 19
    .line 20
    const/16 v2, 0xc9

    .line 21
    .line 22
    iget-object v3, p2, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lnet/blip/libblip/frontend/Registration;->r:Lnet/blip/libblip/frontend/Registration$Companion$ADAPTER$1;

    .line 28
    .line 29
    const/16 v2, 0xc8

    .line 30
    .line 31
    iget-object v3, p2, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 32
    .line 33
    invoke-virtual {v1, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    const v3, 0x1869f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-boolean v1, p2, Lnet/blip/libblip/frontend/State;->z:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    const v3, 0x15f91

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 66
    .line 67
    invoke-virtual {v5, p1, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 75
    .line 76
    const v5, 0x15f90

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    sget-object v3, Lnet/blip/libblip/frontend/SystemInfo;->q:Lnet/blip/libblip/frontend/SystemInfo$Companion$ADAPTER$1;

    .line 87
    .line 88
    const/16 v5, 0x44c

    .line 89
    .line 90
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    sget-object v3, Lnet/blip/libblip/Plan;->n:Lnet/blip/libblip/Plan$Companion$ADAPTER$1;

    .line 98
    .line 99
    const/16 v5, 0x3e8

    .line 100
    .line 101
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v1, p2, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 105
    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    sget-object v3, Lnet/blip/libblip/frontend/PushNotifications;->p:Lnet/blip/libblip/frontend/PushNotifications$Companion$ADAPTER$1;

    .line 109
    .line 110
    const/16 v5, 0x385

    .line 111
    .line 112
    invoke-virtual {v3, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    iget-object v1, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->x:Lkotlin/Lazy;

    .line 116
    .line 117
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/squareup/wire/ProtoAdapter;

    .line 122
    .line 123
    const/16 v3, 0x320

    .line 124
    .line 125
    iget-object v5, p2, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 126
    .line 127
    invoke-virtual {v1, p1, v3, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 131
    .line 132
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/squareup/wire/ProtoAdapter;

    .line 137
    .line 138
    const/16 v3, 0x2bc

    .line 139
    .line 140
    iget-object v5, p2, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 141
    .line 142
    invoke-virtual {v1, p1, v3, v5}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 146
    .line 147
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 152
    .line 153
    const/16 v1, 0x258

    .line 154
    .line 155
    iget-object v3, p2, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 156
    .line 157
    invoke-virtual {p0, p1, v1, v3}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 161
    .line 162
    if-eqz p0, :cond_6

    .line 163
    .line 164
    sget-object v1, Lnet/blip/libblip/frontend/Users;->p:Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;

    .line 165
    .line 166
    const/16 v3, 0x1f4

    .line 167
    .line 168
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 172
    .line 173
    if-eqz p0, :cond_7

    .line 174
    .line 175
    sget-object v1, Lnet/blip/libblip/frontend/Messaging;->r:Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;

    .line 176
    .line 177
    const/16 v3, 0x190

    .line 178
    .line 179
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 183
    .line 184
    if-eqz p0, :cond_8

    .line 185
    .line 186
    sget-object v1, Lnet/blip/libblip/frontend/Onboarding;->s:Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;

    .line 187
    .line 188
    const/16 v3, 0x12c

    .line 189
    .line 190
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 194
    .line 195
    if-eqz p0, :cond_9

    .line 196
    .line 197
    sget-object v1, Lnet/blip/libblip/frontend/Config;->r:Lnet/blip/libblip/frontend/Config$Companion$ADAPTER$1;

    .line 198
    .line 199
    const/16 v3, 0x64

    .line 200
    .line 201
    invoke-virtual {v1, p1, v3, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-nez p0, :cond_a

    .line 209
    .line 210
    const/16 p0, 0x33

    .line 211
    .line 212
    invoke-virtual {v4, p1, p0, v0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_a
    iget-object p0, p2, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 216
    .line 217
    if-eqz p0, :cond_b

    .line 218
    .line 219
    sget-object v0, Lnet/blip/libblip/UserAgent;->v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 220
    .line 221
    const/16 v1, 0x32

    .line 222
    .line 223
    invoke-virtual {v0, p1, v1, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_b
    iget p0, p2, Lnet/blip/libblip/frontend/State;->m:I

    .line 227
    .line 228
    if-eqz p0, :cond_c

    .line 229
    .line 230
    const/4 p2, 0x1

    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 236
    .line 237
    invoke-virtual {v0, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_c
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lnet/blip/libblip/frontend/State;->A:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->o:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lokio/ByteString;->e()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget v3, p1, Lnet/blip/libblip/frontend/State;->m:I

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 28
    .line 29
    invoke-virtual {v5, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-int/2addr v2, v3

    .line 34
    :cond_0
    iget-object v3, p1, Lnet/blip/libblip/frontend/State;->n:Lnet/blip/libblip/UserAgent;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    sget-object v4, Lnet/blip/libblip/UserAgent;->v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 39
    .line 40
    const/16 v5, 0x32

    .line 41
    .line 42
    invoke-virtual {v4, v5, v3}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v2, v3

    .line 47
    :cond_1
    const-string v3, ""

    .line 48
    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    const/16 v4, 0x33

    .line 58
    .line 59
    invoke-virtual {v5, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v2, v1

    .line 64
    :cond_2
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->p:Lnet/blip/libblip/frontend/Config;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    sget-object v4, Lnet/blip/libblip/frontend/Config;->r:Lnet/blip/libblip/frontend/Config$Companion$ADAPTER$1;

    .line 69
    .line 70
    const/16 v6, 0x64

    .line 71
    .line 72
    invoke-virtual {v4, v6, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v2, v1

    .line 77
    :cond_3
    sget-object v1, Lnet/blip/libblip/frontend/Registration;->r:Lnet/blip/libblip/frontend/Registration$Companion$ADAPTER$1;

    .line 78
    .line 79
    const/16 v4, 0xc8

    .line 80
    .line 81
    iget-object v6, p1, Lnet/blip/libblip/frontend/State;->q:Lnet/blip/libblip/frontend/Registration;

    .line 82
    .line 83
    invoke-virtual {v1, v4, v6}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v1, v2

    .line 88
    sget-object v2, Lnet/blip/libblip/frontend/Auth;->q:Lnet/blip/libblip/frontend/Auth$Companion$ADAPTER$1;

    .line 89
    .line 90
    const/16 v4, 0xc9

    .line 91
    .line 92
    iget-object v6, p1, Lnet/blip/libblip/frontend/State;->r:Lnet/blip/libblip/frontend/Auth;

    .line 93
    .line 94
    invoke-virtual {v2, v4, v6}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    add-int/2addr v2, v1

    .line 99
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    sget-object v4, Lnet/blip/libblip/frontend/Onboarding;->s:Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;

    .line 104
    .line 105
    const/16 v6, 0x12c

    .line 106
    .line 107
    invoke-virtual {v4, v6, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v2, v1

    .line 112
    :cond_4
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    sget-object v4, Lnet/blip/libblip/frontend/Messaging;->r:Lnet/blip/libblip/frontend/Messaging$Companion$ADAPTER$1;

    .line 117
    .line 118
    const/16 v6, 0x190

    .line 119
    .line 120
    invoke-virtual {v4, v6, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    add-int/2addr v2, v1

    .line 125
    :cond_5
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 126
    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    sget-object v4, Lnet/blip/libblip/frontend/Users;->p:Lnet/blip/libblip/frontend/Users$Companion$ADAPTER$1;

    .line 130
    .line 131
    const/16 v6, 0x1f4

    .line 132
    .line 133
    invoke-virtual {v4, v6, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr v2, v1

    .line 138
    :cond_6
    iget-object v1, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->v:Lkotlin/Lazy;

    .line 139
    .line 140
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lcom/squareup/wire/ProtoAdapter;

    .line 145
    .line 146
    const/16 v4, 0x258

    .line 147
    .line 148
    iget-object v6, p1, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 149
    .line 150
    invoke-virtual {v1, v4, v6}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    add-int/2addr v1, v2

    .line 155
    iget-object v2, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->w:Lkotlin/Lazy;

    .line 156
    .line 157
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcom/squareup/wire/ProtoAdapter;

    .line 162
    .line 163
    const/16 v4, 0x2bc

    .line 164
    .line 165
    iget-object v6, p1, Lnet/blip/libblip/frontend/State;->C:Ljava/util/Map;

    .line 166
    .line 167
    invoke-virtual {v2, v4, v6}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    add-int/2addr v2, v1

    .line 172
    iget-object p0, p0, Lnet/blip/libblip/frontend/State$Companion$ADAPTER$1;->x:Lkotlin/Lazy;

    .line 173
    .line 174
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    check-cast p0, Lcom/squareup/wire/ProtoAdapter;

    .line 179
    .line 180
    const/16 v1, 0x320

    .line 181
    .line 182
    iget-object v4, p1, Lnet/blip/libblip/frontend/State;->D:Ljava/util/Map;

    .line 183
    .line 184
    invoke-virtual {p0, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    add-int/2addr p0, v2

    .line 189
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->v:Lnet/blip/libblip/frontend/PushNotifications;

    .line 190
    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    sget-object v2, Lnet/blip/libblip/frontend/PushNotifications;->p:Lnet/blip/libblip/frontend/PushNotifications$Companion$ADAPTER$1;

    .line 194
    .line 195
    const/16 v4, 0x385

    .line 196
    .line 197
    invoke-virtual {v2, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    add-int/2addr p0, v1

    .line 202
    :cond_7
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->w:Lnet/blip/libblip/Plan;

    .line 203
    .line 204
    if-eqz v1, :cond_8

    .line 205
    .line 206
    sget-object v2, Lnet/blip/libblip/Plan;->n:Lnet/blip/libblip/Plan$Companion$ADAPTER$1;

    .line 207
    .line 208
    const/16 v4, 0x3e8

    .line 209
    .line 210
    invoke-virtual {v2, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    add-int/2addr p0, v1

    .line 215
    :cond_8
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->x:Lnet/blip/libblip/frontend/SystemInfo;

    .line 216
    .line 217
    if-eqz v1, :cond_9

    .line 218
    .line 219
    sget-object v2, Lnet/blip/libblip/frontend/SystemInfo;->q:Lnet/blip/libblip/frontend/SystemInfo$Companion$ADAPTER$1;

    .line 220
    .line 221
    const/16 v4, 0x44c

    .line 222
    .line 223
    invoke-virtual {v2, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    add-int/2addr p0, v1

    .line 228
    :cond_9
    iget-object v1, p1, Lnet/blip/libblip/frontend/State;->y:Ljava/time/Instant;

    .line 229
    .line 230
    if-eqz v1, :cond_a

    .line 231
    .line 232
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 233
    .line 234
    const v4, 0x15f90

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    add-int/2addr p0, v1

    .line 242
    :cond_a
    iget-boolean p1, p1, Lnet/blip/libblip/frontend/State;->z:Z

    .line 243
    .line 244
    if-eqz p1, :cond_b

    .line 245
    .line 246
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 247
    .line 248
    const v2, 0x15f91

    .line 249
    .line 250
    .line 251
    invoke-static {p1, v1, v2, p0}, Lq;->c(ZLcom/squareup/wire/ProtoAdapterKt$commonBool$1;II)I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    :cond_b
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_c

    .line 260
    .line 261
    const p1, 0x1869f

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, p1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    add-int/2addr p1, p0

    .line 269
    return p1

    .line 270
    :cond_c
    return p0
.end method
