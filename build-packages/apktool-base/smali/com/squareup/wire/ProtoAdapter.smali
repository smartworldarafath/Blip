.class public abstract Lcom/squareup/wire/ProtoAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/ProtoAdapter$Companion;,
        Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

.field public static final h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

.field public static final i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

.field public static final j:Lcom/squareup/wire/ProtoAdapterKt$commonFixed32$1;

.field public static final k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

.field public static final l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

.field public static final m:Lcom/squareup/wire/ProtoAdapterKt$commonFixed64$1;

.field public static final n:Lcom/squareup/wire/DoubleProtoAdapter;

.field public static final o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

.field public static final p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

.field public static final q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

.field public static final r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

.field public static final s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

.field public static final t:Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

.field public static final u:Lcom/squareup/wire/ProtoAdapter;


# instance fields
.field public final a:Lcom/squareup/wire/FieldEncoding;

.field public final b:Lkotlin/reflect/KClass;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/squareup/wire/Syntax;

.field public final e:Ljava/lang/Object;

.field public final f:Lcom/squareup/wire/RepeatedProtoAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v7, Lcom/squareup/wire/Syntax;->k:Lcom/squareup/wire/Syntax;

    .line 10
    .line 11
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 12
    .line 13
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    const/16 v6, 0x20

    .line 16
    .line 17
    move-object v4, v7

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    move-object v11, v0

    .line 24
    sput-object v11, Lcom/squareup/wire/ProtoAdapter;->g:Lcom/squareup/wire/ProtoAdapterKt$commonBool$1;

    .line 25
    .line 26
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    move-object v13, v0

    .line 44
    sput-object v13, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    .line 45
    .line 46
    new-instance v0, Lcom/squareup/wire/IntArrayProtoAdapter;

    .line 47
    .line 48
    invoke-direct {v0, v13}, Lcom/squareup/wire/IntArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    .line 56
    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    move-object v14, v0

    .line 61
    sput-object v14, Lcom/squareup/wire/ProtoAdapter;->i:Lcom/squareup/wire/ProtoAdapterKt$commonUint32$1;

    .line 62
    .line 63
    new-instance v0, Lcom/squareup/wire/IntArrayProtoAdapter;

    .line 64
    .line 65
    invoke-direct {v0, v14}, Lcom/squareup/wire/IntArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonSint32$1;

    .line 73
    .line 74
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/squareup/wire/IntArrayProtoAdapter;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/squareup/wire/IntArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 80
    .line 81
    .line 82
    move-object v7, v4

    .line 83
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->n:Lcom/squareup/wire/FieldEncoding;

    .line 84
    .line 85
    move-object v8, v5

    .line 86
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    new-instance v3, Lcom/squareup/wire/ProtoAdapterKt$commonFixed32$1;

    .line 91
    .line 92
    const/16 v9, 0x20

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    move-object v0, v4

    .line 100
    move-object v4, v7

    .line 101
    move-object v5, v8

    .line 102
    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->j:Lcom/squareup/wire/ProtoAdapterKt$commonFixed32$1;

    .line 103
    .line 104
    new-instance v2, Lcom/squareup/wire/IntArrayProtoAdapter;

    .line 105
    .line 106
    invoke-direct {v2, v3}, Lcom/squareup/wire/IntArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v3, Lcom/squareup/wire/ProtoAdapterKt$commonFixed32$1;

    .line 114
    .line 115
    move-object v4, v0

    .line 116
    move-object v5, v2

    .line 117
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    move-object v12, v4

    .line 121
    move-object v4, v7

    .line 122
    new-instance v0, Lcom/squareup/wire/IntArrayProtoAdapter;

    .line 123
    .line 124
    invoke-direct {v0, v3}, Lcom/squareup/wire/IntArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 125
    .line 126
    .line 127
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 128
    .line 129
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    .line 134
    .line 135
    const-wide/16 v5, 0x0

    .line 136
    .line 137
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/16 v6, 0x20

    .line 142
    .line 143
    const/4 v7, 0x0

    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    move-object v8, v0

    .line 149
    sput-object v8, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    .line 150
    .line 151
    new-instance v0, Lcom/squareup/wire/LongArrayProtoAdapter;

    .line 152
    .line 153
    invoke-direct {v0, v8}, Lcom/squareup/wire/LongArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 161
    .line 162
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 163
    .line 164
    .line 165
    move-object v9, v0

    .line 166
    sput-object v9, Lcom/squareup/wire/ProtoAdapter;->l:Lcom/squareup/wire/ProtoAdapterKt$commonUint64$1;

    .line 167
    .line 168
    new-instance v0, Lcom/squareup/wire/LongArrayProtoAdapter;

    .line 169
    .line 170
    invoke-direct {v0, v9}, Lcom/squareup/wire/LongArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonSint64$1;

    .line 178
    .line 179
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 180
    .line 181
    .line 182
    new-instance v2, Lcom/squareup/wire/LongArrayProtoAdapter;

    .line 183
    .line 184
    invoke-direct {v2, v0}, Lcom/squareup/wire/LongArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 185
    .line 186
    .line 187
    move-object v7, v4

    .line 188
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->l:Lcom/squareup/wire/FieldEncoding;

    .line 189
    .line 190
    move-object v0, v8

    .line 191
    move-object v8, v5

    .line 192
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    new-instance v3, Lcom/squareup/wire/ProtoAdapterKt$commonFixed64$1;

    .line 197
    .line 198
    move-object v2, v9

    .line 199
    const/16 v9, 0x20

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 203
    .line 204
    .line 205
    move-object v6, v3

    .line 206
    move-object v3, v4

    .line 207
    move-object v4, v7

    .line 208
    move-object v5, v8

    .line 209
    sput-object v6, Lcom/squareup/wire/ProtoAdapter;->m:Lcom/squareup/wire/ProtoAdapterKt$commonFixed64$1;

    .line 210
    .line 211
    new-instance v7, Lcom/squareup/wire/LongArrayProtoAdapter;

    .line 212
    .line 213
    invoke-direct {v7, v6}, Lcom/squareup/wire/LongArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    move-object v7, v4

    .line 221
    move-object v4, v3

    .line 222
    new-instance v3, Lcom/squareup/wire/ProtoAdapterKt$commonFixed64$1;

    .line 223
    .line 224
    move-object v5, v6

    .line 225
    const/4 v6, 0x0

    .line 226
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 227
    .line 228
    .line 229
    move-object v15, v4

    .line 230
    move-object v4, v7

    .line 231
    new-instance v5, Lcom/squareup/wire/LongArrayProtoAdapter;

    .line 232
    .line 233
    invoke-direct {v5, v3}, Lcom/squareup/wire/LongArrayProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 234
    .line 235
    .line 236
    new-instance v3, Lcom/squareup/wire/FloatProtoAdapter;

    .line 237
    .line 238
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 239
    .line 240
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    const/4 v6, 0x0

    .line 245
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    const/4 v6, 0x0

    .line 250
    move-object v4, v12

    .line 251
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 252
    .line 253
    .line 254
    move-object v12, v3

    .line 255
    move-object v4, v7

    .line 256
    new-instance v3, Lcom/squareup/wire/FloatArrayProtoAdapter;

    .line 257
    .line 258
    invoke-direct {v3, v12}, Lcom/squareup/wire/FloatArrayProtoAdapter;-><init>(Lcom/squareup/wire/FloatProtoAdapter;)V

    .line 259
    .line 260
    .line 261
    new-instance v3, Lcom/squareup/wire/DoubleProtoAdapter;

    .line 262
    .line 263
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 264
    .line 265
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    const-wide/16 v6, 0x0

    .line 270
    .line 271
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    const/4 v6, 0x0

    .line 276
    move-object v7, v4

    .line 277
    move-object v4, v15

    .line 278
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 279
    .line 280
    .line 281
    move-object v15, v3

    .line 282
    move-object v4, v7

    .line 283
    sput-object v15, Lcom/squareup/wire/ProtoAdapter;->n:Lcom/squareup/wire/DoubleProtoAdapter;

    .line 284
    .line 285
    new-instance v3, Lcom/squareup/wire/DoubleArrayProtoAdapter;

    .line 286
    .line 287
    invoke-direct {v3, v15}, Lcom/squareup/wire/DoubleArrayProtoAdapter;-><init>(Lcom/squareup/wire/DoubleProtoAdapter;)V

    .line 288
    .line 289
    .line 290
    sget-object v17, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 291
    .line 292
    const-class v3, Lokio/ByteString;

    .line 293
    .line 294
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    sget-object v8, Lokio/ByteString;->m:Lokio/ByteString;

    .line 299
    .line 300
    new-instance v3, Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 301
    .line 302
    move-object/from16 v4, v17

    .line 303
    .line 304
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 305
    .line 306
    .line 307
    move-object v4, v7

    .line 308
    sput-object v3, Lcom/squareup/wire/ProtoAdapter;->o:Lcom/squareup/wire/ProtoAdapterKt$commonBytes$1;

    .line 309
    .line 310
    const-class v5, Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    move-object v6, v3

    .line 317
    new-instance v3, Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 318
    .line 319
    move-object v7, v6

    .line 320
    const/4 v6, 0x0

    .line 321
    const-string v8, ""

    .line 322
    .line 323
    move-object/from16 v24, v7

    .line 324
    .line 325
    move-object v7, v4

    .line 326
    move-object/from16 v4, v17

    .line 327
    .line 328
    invoke-direct/range {v3 .. v10}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 329
    .line 330
    .line 331
    move-object v8, v3

    .line 332
    sput-object v8, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    .line 333
    .line 334
    const-class v3, Lkotlin/Unit;

    .line 335
    .line 336
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 337
    .line 338
    .line 339
    move-result-object v18

    .line 340
    sget-object v20, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 341
    .line 342
    new-instance v16, Lcom/squareup/wire/ProtoAdapterKt$commonEmpty$1;

    .line 343
    .line 344
    const/16 v22, 0x30

    .line 345
    .line 346
    const/16 v23, 0x0

    .line 347
    .line 348
    const-string v19, "type.googleapis.com/google.protobuf.Empty"

    .line 349
    .line 350
    const/16 v21, 0x0

    .line 351
    .line 352
    invoke-direct/range {v16 .. v23}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 353
    .line 354
    .line 355
    const-class v3, Ljava/util/Map;

    .line 356
    .line 357
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 358
    .line 359
    .line 360
    move-result-object v18

    .line 361
    new-instance v16, Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    .line 362
    .line 363
    const-string v19, "type.googleapis.com/google.protobuf.Struct"

    .line 364
    .line 365
    invoke-direct/range {v16 .. v23}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 366
    .line 367
    .line 368
    sput-object v16, Lcom/squareup/wire/ProtoAdapter;->q:Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;

    .line 369
    .line 370
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 371
    .line 372
    .line 373
    move-result-object v18

    .line 374
    new-instance v16, Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    .line 375
    .line 376
    const-string v19, "type.googleapis.com/google.protobuf.ListValue"

    .line 377
    .line 378
    invoke-direct/range {v16 .. v23}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 379
    .line 380
    .line 381
    sput-object v16, Lcom/squareup/wire/ProtoAdapter;->r:Lcom/squareup/wire/ProtoAdapterKt$commonStructList$1;

    .line 382
    .line 383
    const-class v3, Ljava/lang/Void;

    .line 384
    .line 385
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    move-object v4, v0

    .line 390
    new-instance v0, Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    .line 391
    .line 392
    const/16 v6, 0x30

    .line 393
    .line 394
    const/4 v7, 0x0

    .line 395
    move-object v9, v2

    .line 396
    move-object v2, v3

    .line 397
    const-string v3, "type.googleapis.com/google.protobuf.NullValue"

    .line 398
    .line 399
    const/4 v5, 0x0

    .line 400
    move-object v10, v9

    .line 401
    move-object v9, v4

    .line 402
    move-object/from16 v4, v20

    .line 403
    .line 404
    invoke-direct/range {v0 .. v7}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 405
    .line 406
    .line 407
    sput-object v0, Lcom/squareup/wire/ProtoAdapter;->s:Lcom/squareup/wire/ProtoAdapterKt$commonStructNull$1;

    .line 408
    .line 409
    const-class v0, Ljava/lang/Object;

    .line 410
    .line 411
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 412
    .line 413
    .line 414
    move-result-object v18

    .line 415
    new-instance v16, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

    .line 416
    .line 417
    const-string v19, "type.googleapis.com/google.protobuf.Value"

    .line 418
    .line 419
    invoke-direct/range {v16 .. v23}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V

    .line 420
    .line 421
    .line 422
    sput-object v16, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

    .line 423
    .line 424
    const-string v0, "type.googleapis.com/google.protobuf.DoubleValue"

    .line 425
    .line 426
    invoke-static {v15, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const-string v0, "type.googleapis.com/google.protobuf.FloatValue"

    .line 430
    .line 431
    invoke-static {v12, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const-string v0, "type.googleapis.com/google.protobuf.Int64Value"

    .line 435
    .line 436
    invoke-static {v9, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string v0, "type.googleapis.com/google.protobuf.UInt64Value"

    .line 440
    .line 441
    invoke-static {v10, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    const-string v0, "type.googleapis.com/google.protobuf.Int32Value"

    .line 445
    .line 446
    invoke-static {v13, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const-string v0, "type.googleapis.com/google.protobuf.UInt32Value"

    .line 450
    .line 451
    invoke-static {v14, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    const-string v0, "type.googleapis.com/google.protobuf.BoolValue"

    .line 455
    .line 456
    invoke-static {v11, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    const-string v0, "type.googleapis.com/google.protobuf.StringValue"

    .line 460
    .line 461
    invoke-static {v8, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    const-string v0, "type.googleapis.com/google.protobuf.BytesValue"

    .line 465
    .line 466
    move-object/from16 v3, v24

    .line 467
    .line 468
    invoke-static {v3, v0}, Lcom/squareup/wire/ProtoAdapterKt;->a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    :try_start_0
    const-class v0, Ljava/time/Duration;

    .line 472
    .line 473
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 474
    .line 475
    .line 476
    move-result-object v18

    .line 477
    new-instance v16, Lcom/squareup/wire/ProtoAdapterKt$commonDuration$1;

    .line 478
    .line 479
    const-string v19, "type.googleapis.com/google.protobuf.Duration"

    .line 480
    .line 481
    const/16 v22, 0x30

    .line 482
    .line 483
    const/16 v23, 0x0

    .line 484
    .line 485
    const/16 v21, 0x0

    .line 486
    .line 487
    invoke-direct/range {v16 .. v23}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .line 489
    .line 490
    goto :goto_0

    .line 491
    :catch_0
    new-instance v0, Lcom/squareup/wire/ProtoAdapter$Companion$UnsupportedTypeProtoAdapter;

    .line 492
    .line 493
    invoke-direct {v0}, Lcom/squareup/wire/ProtoAdapter$Companion$UnsupportedTypeProtoAdapter;-><init>()V

    .line 494
    .line 495
    .line 496
    :goto_0
    :try_start_1
    sget-object v2, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 497
    .line 498
    const-class v0, Ljava/time/Instant;

    .line 499
    .line 500
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    sget-object v5, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 505
    .line 506
    new-instance v1, Lcom/squareup/wire/ProtoAdapterKt$commonInstant$1;

    .line 507
    .line 508
    const-string v4, "type.googleapis.com/google.protobuf.Timestamp"

    .line 509
    .line 510
    const/16 v7, 0x30

    .line 511
    .line 512
    const/4 v8, 0x0

    .line 513
    const/4 v6, 0x0

    .line 514
    invoke-direct/range {v1 .. v8}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    .line 516
    .line 517
    goto :goto_1

    .line 518
    :catch_1
    new-instance v1, Lcom/squareup/wire/ProtoAdapter$Companion$UnsupportedTypeProtoAdapter;

    .line 519
    .line 520
    invoke-direct {v1}, Lcom/squareup/wire/ProtoAdapter$Companion$UnsupportedTypeProtoAdapter;-><init>()V

    .line 521
    .line 522
    .line 523
    :goto_1
    sput-object v1, Lcom/squareup/wire/ProtoAdapter;->u:Lcom/squareup/wire/ProtoAdapter;

    .line 524
    .line 525
    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/squareup/wire/ProtoAdapter;->b:Lkotlin/reflect/KClass;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/squareup/wire/ProtoAdapter;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/squareup/wire/ProtoAdapter;->d:Lcom/squareup/wire/Syntax;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/squareup/wire/ProtoAdapter;->e:Ljava/lang/Object;

    .line 19
    .line 20
    instance-of p2, p0, Lcom/squareup/wire/PackedProtoAdapter;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    if-nez p2, :cond_3

    .line 24
    .line 25
    instance-of p4, p0, Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 26
    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p4, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 31
    .line 32
    if-ne p1, p4, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eq p1, p4, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/squareup/wire/PackedProtoAdapter;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/squareup/wire/PackedProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p0, "Unable to pack a length-delimited type."

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p3

    .line 49
    :cond_3
    :goto_0
    instance-of p1, p0, Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 50
    .line 51
    if-nez p1, :cond_5

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    new-instance p3, Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 57
    .line 58
    invoke-direct {p3, p0}, Lcom/squareup/wire/RepeatedProtoAdapter;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_1
    iput-object p3, p0, Lcom/squareup/wire/ProtoAdapter;->f:Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 62
    .line 63
    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;II)V
    .locals 7

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/wire/RepeatedProtoAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapter;->f:Lcom/squareup/wire/RepeatedProtoAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Can\'t create a repeated adapter from a repeated or packed adapter."

    .line 7
    .line 8
    invoke-static {p0}, Lfe;->t(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/squareup/wire/ByteArrayProtoReader32;->j:Lcom/squareup/wire/ProtoReader32AsProtoReader;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/squareup/wire/ProtoReader32AsProtoReader;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/squareup/wire/ProtoReader32AsProtoReader;-><init>(Lcom/squareup/wire/ProtoReader32;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p1, Lcom/squareup/wire/ByteArrayProtoReader32;->j:Lcom/squareup/wire/ProtoReader32AsProtoReader;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoAdapter;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public abstract c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
.end method

.method public abstract d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
.end method

.method public abstract e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
.end method

.method public f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    shl-int/lit8 p2, p2, 0x3

    .line 12
    .line 13
    iget v1, v0, Lcom/squareup/wire/FieldEncoding;->j:I

    .line 14
    .line 15
    or-int/2addr p2, v1

    .line 16
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 20
    .line 21
    if-ne v0, p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/squareup/wire/ProtoAdapter;->h(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    sub-int/2addr p0, v0

    .line 24
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    shl-int/lit8 p0, p2, 0x3

    .line 35
    .line 36
    iget p2, v1, Lcom/squareup/wire/FieldEncoding;->j:I

    .line 37
    .line 38
    or-int/2addr p0, p2

    .line 39
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public abstract h(Ljava/lang/Object;)I
.end method

.method public i(ILjava/lang/Object;)I
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/squareup/wire/ProtoAdapter;->h(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/squareup/wire/ProtoAdapter;->a:Lcom/squareup/wire/FieldEncoding;

    .line 10
    .line 11
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    invoke-static {p2}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/2addr p2, p0

    .line 20
    :cond_1
    shl-int/lit8 p0, p1, 0x3

    .line 21
    .line 22
    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    add-int/2addr p0, p2

    .line 27
    return p0
.end method
