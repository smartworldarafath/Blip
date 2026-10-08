.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$Companion;
    }
.end annotation


# static fields
.field public static final k:[Ljava/lang/String;

.field public static final l:[Ljava/lang/String;

.field public static final m:Lkotlin/Lazy;

.field public static final n:Lkotlin/Lazy;


# instance fields
.field public final j:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, " OR IGNORE "

    .line 2
    .line 3
    const-string v5, " OR REPLACE "

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    const-string v1, " OR ROLLBACK "

    .line 8
    .line 9
    const-string v2, " OR ABORT "

    .line 10
    .line 11
    const-string v3, " OR FAIL "

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->k:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->l:[Ljava/lang/String;

    .line 23
    .line 24
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 25
    .line 26
    new-instance v1, Lj6;

    .line 27
    .line 28
    const/16 v2, 0x15

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lj6;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->m:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v1, Lj6;

    .line 40
    .line 41
    const/16 v2, 0x16

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lj6;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->n:Lkotlin/Lazy;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final F0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final G()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->n:Lkotlin/Lazy;

    .line 7
    .line 8
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/reflect/Method;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    sget-object v2, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->m:Lkotlin/Lazy;

    .line 17
    .line 18
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/reflect/Method;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/reflect/Method;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/reflect/Method;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    filled-new-array {v0, v3, v0, v3}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    const-string p0, "Required value was null."

    .line 62
    .line 63
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->o()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final N0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final V([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final W()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final X0(Landroid/content/ContentValues;[Ljava/lang/Object;)I
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_10

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    array-length v2, p2

    .line 13
    add-int/2addr v2, v0

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v5, "UPDATE "

    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v5, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->k:[Ljava/lang/String;

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    aget-object v5, v5, v6

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, "WorkSpec SET "

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    move v6, v1

    .line 45
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/lang/String;

    .line 56
    .line 57
    if-lez v6, :cond_0

    .line 58
    .line 59
    const-string v8, ","

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    const-string v8, ""

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v8, v6, 0x1

    .line 71
    .line 72
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    aput-object v7, v3, v6

    .line 77
    .line 78
    const-string v6, "=?"

    .line 79
    .line 80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move v6, v8

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move p1, v0

    .line 86
    :goto_2
    if-ge p1, v2, :cond_2

    .line 87
    .line 88
    sub-int v5, p1, v0

    .line 89
    .line 90
    aget-object v5, p2, v5

    .line 91
    .line 92
    aput-object v5, v3, p1

    .line 93
    .line 94
    add-int/lit8 p1, p1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const-string p1, "last_enqueue_time = 0 AND interval_duration <> 0 "

    .line 98
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    const-string p1, " WHERE last_enqueue_time = 0 AND interval_duration <> 0 "

    .line 106
    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->z(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    :goto_3
    if-ge v1, v2, :cond_f

    .line 119
    .line 120
    aget-object p1, v3, v1

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    if-nez p1, :cond_4

    .line 125
    .line 126
    move-object p1, p0

    .line 127
    check-cast p1, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->l(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    instance-of p2, p1, [B

    .line 134
    .line 135
    if-eqz p2, :cond_5

    .line 136
    .line 137
    check-cast p1, [B

    .line 138
    .line 139
    move-object p2, p0

    .line 140
    check-cast p2, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 141
    .line 142
    iget-object p2, p2, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->j:Landroid/database/sqlite/SQLiteProgram;

    .line 143
    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    instance-of p2, p1, Ljava/lang/Float;

    .line 149
    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    check-cast p1, Ljava/lang/Number;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    float-to-double p1, p1

    .line 159
    move-object v0, p0

    .line 160
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 161
    .line 162
    invoke-virtual {v0, p1, p2, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->u0(DI)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    instance-of p2, p1, Ljava/lang/Double;

    .line 167
    .line 168
    if-eqz p2, :cond_7

    .line 169
    .line 170
    check-cast p1, Ljava/lang/Number;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 173
    .line 174
    .line 175
    move-result-wide p1

    .line 176
    move-object v0, p0

    .line 177
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 178
    .line 179
    invoke-virtual {v0, p1, p2, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->u0(DI)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    instance-of p2, p1, Ljava/lang/Long;

    .line 184
    .line 185
    if-eqz p2, :cond_8

    .line 186
    .line 187
    check-cast p1, Ljava/lang/Number;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide p1

    .line 193
    move-object v0, p0

    .line 194
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 195
    .line 196
    invoke-virtual {v0, v1, p1, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->j(IJ)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_8
    instance-of p2, p1, Ljava/lang/Integer;

    .line 201
    .line 202
    if-eqz p2, :cond_9

    .line 203
    .line 204
    check-cast p1, Ljava/lang/Number;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    int-to-long p1, p1

    .line 211
    move-object v0, p0

    .line 212
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 213
    .line 214
    invoke-virtual {v0, v1, p1, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->j(IJ)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_9
    instance-of p2, p1, Ljava/lang/Short;

    .line 219
    .line 220
    if-eqz p2, :cond_a

    .line 221
    .line 222
    check-cast p1, Ljava/lang/Number;

    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    int-to-long p1, p1

    .line 229
    move-object v0, p0

    .line 230
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 231
    .line 232
    invoke-virtual {v0, v1, p1, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->j(IJ)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_a
    instance-of p2, p1, Ljava/lang/Byte;

    .line 237
    .line 238
    if-eqz p2, :cond_b

    .line 239
    .line 240
    check-cast p1, Ljava/lang/Number;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    int-to-long p1, p1

    .line 247
    move-object v0, p0

    .line 248
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 249
    .line 250
    invoke-virtual {v0, v1, p1, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->j(IJ)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :cond_b
    instance-of p2, p1, Ljava/lang/String;

    .line 256
    .line 257
    if-eqz p2, :cond_c

    .line 258
    .line 259
    check-cast p1, Ljava/lang/String;

    .line 260
    .line 261
    move-object p2, p0

    .line 262
    check-cast p2, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 263
    .line 264
    iget-object p2, p2, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->j:Landroid/database/sqlite/SQLiteProgram;

    .line 265
    .line 266
    invoke-virtual {p2, v1, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_c
    instance-of p2, p1, Ljava/lang/Boolean;

    .line 272
    .line 273
    if-eqz p2, :cond_e

    .line 274
    .line 275
    check-cast p1, Ljava/lang/Boolean;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_d

    .line 282
    .line 283
    const-wide/16 p1, 0x1

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_d
    const-wide/16 p1, 0x0

    .line 287
    .line 288
    :goto_4
    move-object v0, p0

    .line 289
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 290
    .line 291
    invoke-virtual {v0, v1, p1, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;->j(IJ)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 297
    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v0, "Cannot bind "

    .line 301
    .line 302
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string p1, " at index "

    .line 309
    .line 310
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string p1, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    .line 317
    .line 318
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p0

    .line 329
    :cond_f
    check-cast p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    .line 330
    .line 331
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;->k:Landroid/database/sqlite/SQLiteStatement;

    .line 332
    .line 333
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    return p0

    .line 338
    :cond_10
    const-string p0, "Empty values"

    .line 339
    .line 340
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return v1
.end method

.method public final Y()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final m0()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final w0(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;)Landroid/database/Cursor;
    .locals 3

    .line 1
    new-instance v0, Lq8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lq8;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lr8;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lr8;-><init>(Lq8;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->a:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/room/driver/SupportSQLiteStatement;->k:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->l:[Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final z(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
