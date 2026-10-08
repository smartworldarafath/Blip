.class public final Landroidx/room/RoomConnectionManager;
.super Landroidx/room/BaseRoomConnectionManager;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;,
        Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;
    }
.end annotation


# instance fields
.field public final c:Landroidx/room/DatabaseConfiguration;

.field public final d:Landroidx/room/RoomOpenDelegate;

.field public final e:Ljava/util/List;

.field public final f:Landroidx/room/coroutines/ConnectionPool;

.field public g:Landroidx/sqlite/db/SupportSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 4
    .line 5
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 13
    .line 14
    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->e:Ljava/util/List;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    sget-object v3, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    :cond_0
    iput-object v3, p0, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    .line 21
    .line 22
    iget-object v3, p1, Landroidx/room/DatabaseConfiguration;->t:Landroidx/sqlite/SQLiteDriver;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 35
    .line 36
    invoke-direct {v3, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->b:Ljava/lang/String;

    .line 40
    .line 41
    new-instance p1, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;

    .line 42
    .line 43
    iget p2, p2, Landroidx/room/RoomOpenDelegate;->a:I

    .line 44
    .line 45
    invoke-direct {p1, p0, p2}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;-><init>(Landroidx/room/RoomConnectionManager;I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, v3, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->a()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 55
    .line 56
    new-instance v2, Landroidx/room/driver/SupportSQLiteDriver;

    .line 57
    .line 58
    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v2, p1}, Landroidx/room/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v2}, Landroidx/room/driver/SupportSQLiteConnectionPool;-><init>(Landroidx/room/driver/SupportSQLiteDriver;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_1
    const-string p0, "SQLiteManager was constructed with both null driver and open helper factory!"

    .line 73
    .line 74
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    throw p0

    .line 79
    :cond_2
    if-nez v2, :cond_3

    .line 80
    .line 81
    new-instance p1, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    .line 82
    .line 83
    invoke-direct {p1, p0, v3}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 87
    .line 88
    invoke-direct {p2, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    new-instance p1, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    .line 93
    .line 94
    invoke-direct {p1, p0, v3}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    const/16 v1, 0x27

    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    if-eq p2, v4, :cond_5

    .line 105
    .line 106
    if-ne p2, v3, :cond_4

    .line 107
    .line 108
    const/4 p2, 0x4

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p2, "Can\'t get max number of reader for journal mode \'"

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_5
    move p2, v4

    .line 138
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eq v5, v4, :cond_7

    .line 143
    .line 144
    if-ne v5, v3, :cond_6

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string p2, "Can\'t get max number of writers for journal mode \'"

    .line 152
    .line 153
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_7
    :goto_1
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl;

    .line 175
    .line 176
    invoke-direct {v1, p1, v2, p2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    move-object p2, v1

    .line 180
    :goto_2
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    .line 181
    .line 182
    :goto_3
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->l:Landroidx/room/RoomDatabase$JournalMode;

    .line 183
    .line 184
    if-ne v0, p1, :cond_8

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_8
    const/4 v4, 0x0

    .line 188
    :goto_4
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->g()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_9

    .line 193
    .line 194
    invoke-interface {p0, v4}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 195
    .line 196
    .line 197
    :cond_9
    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Lwc;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 198
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object v1, v0, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    .line 200
    new-instance v2, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;

    const/4 v3, -0x1

    .line 201
    const-string v4, ""

    invoke-direct {v2, v4, v3, v4}, Landroidx/room/RoomOpenDelegate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    iput-object v2, v0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 203
    iget-object v2, v1, Landroidx/room/DatabaseConfiguration;->e:Ljava/util/List;

    sget-object v3, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    iput-object v4, v0, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    .line 204
    new-instance v4, Lma;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v0}, Lma;-><init>(ILjava/lang/Object;)V

    if-nez v2, :cond_1

    move-object v2, v3

    .line 205
    :cond_1
    new-instance v0, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;

    invoke-direct {v0, v4}, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;-><init>(Lma;)V

    .line 206
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 207
    iget-object v6, v1, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    .line 208
    iget-object v7, v1, Landroidx/room/DatabaseConfiguration;->b:Ljava/lang/String;

    .line 209
    iget-object v8, v1, Landroidx/room/DatabaseConfiguration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 210
    iget-object v9, v1, Landroidx/room/DatabaseConfiguration;->d:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 211
    iget-boolean v11, v1, Landroidx/room/DatabaseConfiguration;->f:Z

    .line 212
    iget-object v12, v1, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 213
    iget-object v13, v1, Landroidx/room/DatabaseConfiguration;->h:Ljava/util/concurrent/Executor;

    .line 214
    iget-object v14, v1, Landroidx/room/DatabaseConfiguration;->i:Ljava/util/concurrent/Executor;

    .line 215
    iget-object v15, v1, Landroidx/room/DatabaseConfiguration;->j:Landroid/content/Intent;

    .line 216
    iget-boolean v0, v1, Landroidx/room/DatabaseConfiguration;->k:Z

    .line 217
    iget-boolean v2, v1, Landroidx/room/DatabaseConfiguration;->l:Z

    .line 218
    iget-object v3, v1, Landroidx/room/DatabaseConfiguration;->m:Ljava/util/Set;

    .line 219
    iget-object v4, v1, Landroidx/room/DatabaseConfiguration;->n:Ljava/lang/String;

    .line 220
    iget-object v5, v1, Landroidx/room/DatabaseConfiguration;->o:Ljava/io/File;

    move/from16 v16, v0

    .line 221
    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->p:Ljava/util/concurrent/Callable;

    move-object/from16 v21, v0

    .line 222
    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->q:Ljava/util/List;

    move-object/from16 v22, v0

    .line 223
    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->r:Ljava/util/List;

    move-object/from16 v23, v0

    .line 224
    iget-boolean v0, v1, Landroidx/room/DatabaseConfiguration;->s:Z

    move/from16 v24, v0

    .line 225
    iget-object v0, v1, Landroidx/room/DatabaseConfiguration;->t:Landroidx/sqlite/SQLiteDriver;

    .line 226
    iget-object v1, v1, Landroidx/room/DatabaseConfiguration;->u:Lkotlin/coroutines/CoroutineContext;

    .line 227
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v5

    .line 228
    new-instance v5, Landroidx/room/DatabaseConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v26, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v5 .. v26}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V

    move-object/from16 v0, p2

    .line 229
    invoke-virtual {v0, v5}, Lwc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final g()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->f:Landroidx/room/coroutines/ConnectionPool;

    .line 2
    .line 3
    instance-of v0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Landroidx/room/driver/SupportSQLiteConnectionPool;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p0, v1

    .line 12
    :goto_0
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnectionPool;->j:Landroidx/room/driver/SupportSQLiteDriver;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteDriver;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    return-object v1
.end method
