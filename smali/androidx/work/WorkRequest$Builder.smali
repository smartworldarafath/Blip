.class public abstract Landroidx/work/WorkRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/WorkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/WorkRequest$Builder<",
        "TB;*>;W:",
        "Landroidx/work/WorkRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Landroidx/work/impl/model/WorkSpec;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Landroidx/work/WorkRequest$Builder;->a:Ljava/util/UUID;

    .line 14
    .line 15
    new-instance v2, Landroidx/work/impl/model/WorkSpec;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->a:Ljava/util/UUID;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/16 v34, 0x0

    .line 31
    .line 32
    const v35, 0x1fffffa

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-wide/16 v9, 0x0

    .line 40
    .line 41
    const-wide/16 v11, 0x0

    .line 42
    .line 43
    const-wide/16 v13, 0x0

    .line 44
    .line 45
    const/4 v15, 0x0

    .line 46
    const/16 v16, 0x0

    .line 47
    .line 48
    const/16 v17, 0x0

    .line 49
    .line 50
    const-wide/16 v18, 0x0

    .line 51
    .line 52
    const-wide/16 v20, 0x0

    .line 53
    .line 54
    const-wide/16 v22, 0x0

    .line 55
    .line 56
    const-wide/16 v24, 0x0

    .line 57
    .line 58
    const/16 v26, 0x0

    .line 59
    .line 60
    const/16 v27, 0x0

    .line 61
    .line 62
    const/16 v28, 0x0

    .line 63
    .line 64
    const-wide/16 v29, 0x0

    .line 65
    .line 66
    const/16 v31, 0x0

    .line 67
    .line 68
    const/16 v32, 0x0

    .line 69
    .line 70
    const/16 v33, 0x0

    .line 71
    .line 72
    invoke-direct/range {v2 .. v35}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 73
    .line 74
    .line 75
    iput-object v2, v0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    filled-new-array {v1}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-static {v3}, Lkotlin/collections/MapsKt;->d(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 93
    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    aget-object v1, v1, v3

    .line 97
    .line 98
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iput-object v2, v0, Landroidx/work/WorkRequest$Builder;->c:Ljava/util/LinkedHashSet;

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/OneTimeWorkRequest;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 5
    .line 6
    new-instance v2, Landroidx/work/OneTimeWorkRequest;

    .line 7
    .line 8
    iget-object v3, v1, Landroidx/work/WorkRequest$Builder;->a:Ljava/util/UUID;

    .line 9
    .line 10
    iget-object v4, v1, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/work/WorkRequest$Builder;->c:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-direct {v2, v3, v4, v1}, Landroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 20
    .line 21
    iget-object v3, v1, Landroidx/work/Constraints;->i:Ljava/util/Set;

    .line 22
    .line 23
    check-cast v3, Ljava/util/Collection;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-boolean v3, v1, Landroidx/work/Constraints;->e:Z

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    iget-boolean v3, v1, Landroidx/work/Constraints;->c:Z

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iget-boolean v1, v1, Landroidx/work/Constraints;->d:Z

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v1, v5

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    move v1, v4

    .line 49
    :goto_1
    iget-object v3, v0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 50
    .line 51
    iget-boolean v6, v3, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 52
    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    iget-wide v7, v3, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 59
    .line 60
    const-wide/16 v9, 0x0

    .line 61
    .line 62
    cmp-long v1, v7, v9

    .line 63
    .line 64
    if-gtz v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const-string v0, "Expedited jobs cannot be delayed"

    .line 68
    .line 69
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v6

    .line 73
    :cond_3
    const-string v0, "Expedited jobs only support network and storage constraints"

    .line 74
    .line 75
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v6

    .line 79
    :cond_4
    :goto_2
    iget-object v1, v3, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 80
    .line 81
    const/16 v6, 0x7f

    .line 82
    .line 83
    if-nez v1, :cond_7

    .line 84
    .line 85
    iget-object v1, v3, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 86
    .line 87
    const-string v7, "."

    .line 88
    .line 89
    filled-new-array {v7}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const/4 v8, 0x6

    .line 94
    invoke-static {v1, v7, v8}, Lkotlin/text/StringsKt;->G(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ne v7, v4, :cond_5

    .line 103
    .line 104
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/String;

    .line 116
    .line 117
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-gt v4, v6, :cond_6

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    invoke-static {v6, v1}, Lkotlin/text/StringsKt;->Q(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :goto_4
    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-le v3, v6, :cond_8

    .line 136
    .line 137
    iget-object v3, v0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 138
    .line 139
    invoke-static {v6, v1}, Lkotlin/text/StringsKt;->Q(ILjava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iput-object v1, v3, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 144
    .line 145
    :cond_8
    :goto_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iput-object v1, v0, Landroidx/work/WorkRequest$Builder;->a:Ljava/util/UUID;

    .line 153
    .line 154
    new-instance v3, Landroidx/work/impl/model/WorkSpec;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object v6, v1, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v5, v1, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 171
    .line 172
    iget-object v7, v1, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v8, Landroidx/work/Data;

    .line 175
    .line 176
    iget-object v9, v1, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 177
    .line 178
    invoke-direct {v8, v9}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 179
    .line 180
    .line 181
    new-instance v9, Landroidx/work/Data;

    .line 182
    .line 183
    iget-object v10, v1, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    .line 184
    .line 185
    invoke-direct {v9, v10}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 186
    .line 187
    .line 188
    iget-wide v10, v1, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 189
    .line 190
    iget-wide v12, v1, Landroidx/work/impl/model/WorkSpec;->h:J

    .line 191
    .line 192
    iget-wide v14, v1, Landroidx/work/impl/model/WorkSpec;->i:J

    .line 193
    .line 194
    move-object/from16 v37, v2

    .line 195
    .line 196
    new-instance v2, Landroidx/work/Constraints;

    .line 197
    .line 198
    move-object/from16 v16, v3

    .line 199
    .line 200
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 201
    .line 202
    invoke-direct {v2, v3}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    .line 203
    .line 204
    .line 205
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 206
    .line 207
    move-object/from16 v17, v2

    .line 208
    .line 209
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 210
    .line 211
    move-object/from16 v19, v2

    .line 212
    .line 213
    move/from16 v18, v3

    .line 214
    .line 215
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 216
    .line 217
    move-wide/from16 v20, v2

    .line 218
    .line 219
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 220
    .line 221
    move-wide/from16 v22, v2

    .line 222
    .line 223
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->o:J

    .line 224
    .line 225
    move-wide/from16 v24, v2

    .line 226
    .line 227
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->p:J

    .line 228
    .line 229
    move-wide/from16 v26, v2

    .line 230
    .line 231
    iget-boolean v2, v1, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 232
    .line 233
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 234
    .line 235
    move/from16 v28, v2

    .line 236
    .line 237
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->s:I

    .line 238
    .line 239
    move/from16 v30, v2

    .line 240
    .line 241
    move-object/from16 v29, v3

    .line 242
    .line 243
    iget-wide v2, v1, Landroidx/work/impl/model/WorkSpec;->u:J

    .line 244
    .line 245
    move-wide/from16 v31, v2

    .line 246
    .line 247
    iget v2, v1, Landroidx/work/impl/model/WorkSpec;->v:I

    .line 248
    .line 249
    iget v3, v1, Landroidx/work/impl/model/WorkSpec;->w:I

    .line 250
    .line 251
    move/from16 v33, v2

    .line 252
    .line 253
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->x:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->y:Ljava/lang/Boolean;

    .line 256
    .line 257
    const/high16 v36, 0x80000

    .line 258
    .line 259
    move/from16 v34, v33

    .line 260
    .line 261
    move/from16 v33, v3

    .line 262
    .line 263
    move-object/from16 v3, v16

    .line 264
    .line 265
    move-object/from16 v16, v17

    .line 266
    .line 267
    move/from16 v17, v18

    .line 268
    .line 269
    move-object/from16 v18, v19

    .line 270
    .line 271
    move-wide/from16 v19, v20

    .line 272
    .line 273
    move-wide/from16 v21, v22

    .line 274
    .line 275
    move-wide/from16 v23, v24

    .line 276
    .line 277
    move-wide/from16 v25, v26

    .line 278
    .line 279
    move/from16 v27, v28

    .line 280
    .line 281
    move-object/from16 v28, v29

    .line 282
    .line 283
    move/from16 v29, v30

    .line 284
    .line 285
    move-wide/from16 v30, v31

    .line 286
    .line 287
    move/from16 v32, v34

    .line 288
    .line 289
    move-object/from16 v35, v1

    .line 290
    .line 291
    move-object/from16 v34, v2

    .line 292
    .line 293
    invoke-direct/range {v3 .. v36}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 294
    .line 295
    .line 296
    iput-object v3, v0, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    .line 297
    .line 298
    return-object v37
.end method
