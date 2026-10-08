.class public abstract Landroidx/room/BaseRoomConnectionManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/BaseRoomConnectionManager$DriverWrapper;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public static final a(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 2
    .line 3
    const-string v1, "PRAGMA user_version = "

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 8
    .line 9
    sget-object v4, Landroidx/room/RoomDatabase$JournalMode;->l:Landroidx/room/RoomDatabase$JournalMode;

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    const-string v3, "PRAGMA journal_mode = WAL"

    .line 14
    .line 15
    invoke-static {p1, v3}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v3, "PRAGMA journal_mode = TRUNCATE"

    .line 20
    .line 21
    invoke-static {p1, v3}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v2, v2, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 25
    .line 26
    if-ne v2, v4, :cond_1

    .line 27
    .line 28
    const-string v2, "PRAGMA synchronous = NORMAL"

    .line 29
    .line 30
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v2, "PRAGMA synchronous = FULL"

    .line 35
    .line 36
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-static {p1}, Landroidx/room/BaseRoomConnectionManager;->b(Landroidx/sqlite/SQLiteConnection;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "PRAGMA user_version"

    .line 43
    .line 44
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    long-to-int v3, v3

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static {v2, v4}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    iget v2, v0, Landroidx/room/RoomOpenDelegate;->a:I

    .line 62
    .line 63
    if-eq v3, v2, :cond_5

    .line 64
    .line 65
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    .line 66
    .line 67
    invoke-static {p1, v2}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->c(Landroidx/sqlite/SQLiteConnection;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    iget v2, v0, Landroidx/room/RoomOpenDelegate;->a:I

    .line 79
    .line 80
    invoke-virtual {p0, p1, v3, v2}, Landroidx/room/BaseRoomConnectionManager;->d(Landroidx/sqlite/SQLiteConnection;II)V

    .line 81
    .line 82
    .line 83
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v0, v0, Landroidx/room/RoomOpenDelegate;->a:I

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    new-instance v1, Lkotlin/Result$Failure;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    move-object v0, v1

    .line 109
    :goto_4
    nop

    .line 110
    instance-of v1, v0, Lkotlin/Result$Failure;

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    check-cast v1, Lkotlin/Unit;

    .line 116
    .line 117
    const-string v1, "END TRANSACTION"

    .line 118
    .line 119
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-nez v0, :cond_4

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_4
    const-string p0, "ROLLBACK TRANSACTION"

    .line 130
    .line 131
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_5
    :goto_5
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->e(Landroidx/sqlite/SQLiteConnection;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    :catchall_2
    move-exception p1

    .line 142
    invoke-static {v2, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p1
.end method

.method public static b(Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    .line 1
    const-string v0, "PRAGMA busy_timeout"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0xbb8

    .line 20
    .line 21
    cmp-long v0, v1, v3

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "PRAGMA busy_timeout = 3000"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception v1

    .line 34
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method


# virtual methods
.method public final c(Landroidx/sqlite/SQLiteConnection;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    move-object v0, p0

    .line 36
    check-cast v0, Landroidx/room/RoomConnectionManager;

    .line 37
    .line 38
    iget-object v1, v0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->a(Landroidx/sqlite/SQLiteConnection;)V

    .line 41
    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->g(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-boolean v3, v2, Landroidx/room/RoomOpenDelegate$ValidationResult;->a:Z

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    iget-object p1, v2, Landroidx/room/RoomOpenDelegate$ValidationResult;->b:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "Pre-packaged database has an invalid schema: "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->f(Landroidx/sqlite/SQLiteConnection;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->c(Landroidx/sqlite/SQLiteConnection;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, v0, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroidx/room/RoomDatabase$Callback;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    instance-of v0, p1, Landroidx/room/driver/SupportSQLiteConnection;

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    move-object v0, p1

    .line 112
    check-cast v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 113
    .line 114
    iget-object v0, v0, Landroidx/room/driver/SupportSQLiteConnection;->j:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    return-void

    .line 121
    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :catchall_1
    move-exception p1

    .line 123
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public final d(Landroidx/sqlite/SQLiteConnection;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v3, p0

    .line 11
    .line 12
    check-cast v3, Landroidx/room/RoomConnectionManager;

    .line 13
    .line 14
    iget-object v4, v3, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    .line 15
    .line 16
    iget-object v5, v4, Landroidx/room/DatabaseConfiguration;->d:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    sget-object v5, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_0
    if-le v2, v1, :cond_1

    .line 31
    .line 32
    move v9, v8

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v9, v7

    .line 35
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    move v11, v1

    .line 41
    :cond_2
    if-eqz v9, :cond_3

    .line 42
    .line 43
    if-ge v11, v2, :cond_b

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    if-le v11, v2, :cond_b

    .line 47
    .line 48
    :goto_1
    iget-object v12, v5, Landroidx/room/RoomDatabase$MigrationContainer;->a:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    if-eqz v9, :cond_5

    .line 51
    .line 52
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    check-cast v12, Ljava/util/TreeMap;

    .line 61
    .line 62
    if-nez v12, :cond_4

    .line 63
    .line 64
    :goto_2
    move-object v14, v6

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    invoke-virtual {v12}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    new-instance v14, Lkotlin/Pair;

    .line 71
    .line 72
    invoke-direct {v14, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    check-cast v12, Ljava/util/TreeMap;

    .line 85
    .line 86
    if-nez v12, :cond_6

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    invoke-virtual {v12}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    new-instance v14, Lkotlin/Pair;

    .line 94
    .line 95
    invoke-direct {v14, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_3
    if-nez v14, :cond_7

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_7
    iget-object v12, v14, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v12, Ljava/util/Map;

    .line 104
    .line 105
    iget-object v13, v14, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v13, Ljava/lang/Iterable;

    .line 108
    .line 109
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-eqz v14, :cond_a

    .line 118
    .line 119
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    check-cast v14, Ljava/lang/Number;

    .line 124
    .line 125
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v9, :cond_9

    .line 130
    .line 131
    add-int/lit8 v15, v11, 0x1

    .line 132
    .line 133
    if-gt v15, v14, :cond_8

    .line 134
    .line 135
    if-gt v14, v2, :cond_8

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_9
    if-gt v2, v14, :cond_8

    .line 139
    .line 140
    if-ge v14, v11, :cond_8

    .line 141
    .line 142
    :goto_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move v12, v8

    .line 157
    move v11, v14

    .line 158
    goto :goto_5

    .line 159
    :cond_a
    move v12, v7

    .line 160
    :goto_5
    if-nez v12, :cond_2

    .line 161
    .line 162
    :goto_6
    move-object v5, v6

    .line 163
    goto :goto_7

    .line 164
    :cond_b
    move-object v5, v10

    .line 165
    :goto_7
    iget-object v9, v3, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 166
    .line 167
    if-eqz v5, :cond_e

    .line 168
    .line 169
    invoke-virtual {v9, v0}, Landroidx/room/RoomOpenDelegate;->f(Landroidx/sqlite/SQLiteConnection;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_c

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Landroidx/room/migration/Migration;

    .line 187
    .line 188
    invoke-virtual {v2, v0}, Landroidx/room/migration/Migration;->a(Landroidx/sqlite/SQLiteConnection;)V

    .line 189
    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_c
    invoke-virtual {v9, v0}, Landroidx/room/RoomOpenDelegate;->g(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-boolean v2, v1, Landroidx/room/RoomOpenDelegate$ValidationResult;->a:Z

    .line 197
    .line 198
    if-eqz v2, :cond_d

    .line 199
    .line 200
    invoke-virtual {v9, v0}, Landroidx/room/RoomOpenDelegate;->e(Landroidx/sqlite/SQLiteConnection;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p0 .. p1}, Landroidx/room/BaseRoomConnectionManager;->f(Landroidx/sqlite/SQLiteConnection;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 208
    .line 209
    iget-object v1, v1, Landroidx/room/RoomOpenDelegate$ValidationResult;->b:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v3, "Migration didn\'t properly handle: "

    .line 214
    .line 215
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_e
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    if-le v1, v2, :cond_10

    .line 237
    .line 238
    iget-boolean v5, v4, Landroidx/room/DatabaseConfiguration;->l:Z

    .line 239
    .line 240
    if-eqz v5, :cond_10

    .line 241
    .line 242
    :cond_f
    move v5, v7

    .line 243
    goto :goto_9

    .line 244
    :cond_10
    iget-object v5, v4, Landroidx/room/DatabaseConfiguration;->m:Ljava/util/Set;

    .line 245
    .line 246
    iget-boolean v10, v4, Landroidx/room/DatabaseConfiguration;->k:Z

    .line 247
    .line 248
    if-eqz v10, :cond_f

    .line 249
    .line 250
    if-eqz v5, :cond_11

    .line 251
    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-nez v5, :cond_f

    .line 261
    .line 262
    :cond_11
    move v5, v8

    .line 263
    :goto_9
    if-nez v5, :cond_1a

    .line 264
    .line 265
    iget-boolean v1, v4, Landroidx/room/DatabaseConfiguration;->s:Z

    .line 266
    .line 267
    if-eqz v1, :cond_16

    .line 268
    .line 269
    const-string v1, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    .line 270
    .line 271
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    :try_start_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->o()Lkotlin/collections/builders/ListBuilder;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    :cond_12
    :goto_a
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_14

    .line 284
    .line 285
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    const-string v5, "sqlite_"

    .line 290
    .line 291
    invoke-static {v4, v5, v7}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-nez v5, :cond_12

    .line 296
    .line 297
    const-string v5, "android_metadata"

    .line 298
    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_13

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_13
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    const-string v10, "view"

    .line 311
    .line 312
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    new-instance v10, Lkotlin/Pair;

    .line 321
    .line 322
    invoke-direct {v10, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v10}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    goto :goto_a

    .line 329
    :catchall_0
    move-exception v0

    .line 330
    move-object v2, v0

    .line 331
    goto :goto_c

    .line 332
    :cond_14
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->l(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 333
    .line 334
    .line 335
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-static {v1, v6}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v7}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_17

    .line 348
    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    check-cast v2, Lkotlin/Pair;

    .line 354
    .line 355
    iget-object v4, v2, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v4, Ljava/lang/String;

    .line 358
    .line 359
    iget-object v2, v2, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v2, Ljava/lang/Boolean;

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_15

    .line 368
    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v5, "DROP VIEW IF EXISTS "

    .line 372
    .line 373
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-static {v0, v2}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v5, "DROP TABLE IF EXISTS "

    .line 390
    .line 391
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-static {v0, v2}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_b

    .line 405
    :goto_c
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 406
    :catchall_1
    move-exception v0

    .line 407
    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :cond_16
    invoke-virtual {v9, v0}, Landroidx/room/RoomOpenDelegate;->b(Landroidx/sqlite/SQLiteConnection;)V

    .line 412
    .line 413
    .line 414
    :cond_17
    iget-object v1, v3, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    .line 415
    .line 416
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    :cond_18
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eqz v2, :cond_19

    .line 425
    .line 426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    instance-of v2, v0, Landroidx/room/driver/SupportSQLiteConnection;

    .line 436
    .line 437
    if-eqz v2, :cond_18

    .line 438
    .line 439
    move-object v2, v0

    .line 440
    check-cast v2, Landroidx/room/driver/SupportSQLiteConnection;

    .line 441
    .line 442
    iget-object v2, v2, Landroidx/room/driver/SupportSQLiteConnection;->j:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    goto :goto_d

    .line 448
    :cond_19
    invoke-virtual {v9, v0}, Landroidx/room/RoomOpenDelegate;->a(Landroidx/sqlite/SQLiteConnection;)V

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 453
    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v4, "A migration from "

    .line 457
    .line 458
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v1, " to "

    .line 465
    .line 466
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v1, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    .line 473
    .line 474
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v0
.end method

.method public final e(Landroidx/sqlite/SQLiteConnection;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Pre-packaged database has an invalid schema: "

    .line 5
    .line 6
    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    cmp-long v2, v5, v7

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    move v2, v4

    .line 36
    :goto_0
    const/4 v5, 0x0

    .line 37
    invoke-static {v1, v5}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    const-string v0, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    .line 43
    .line 44
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->a1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->V0()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-interface {v0, v4}, Landroidx/sqlite/SQLiteStatement;->r0(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move-object v1, v5

    .line 62
    :goto_1
    invoke-static {v0, v5}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    move-object v0, p0

    .line 66
    check-cast v0, Landroidx/room/RoomConnectionManager;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/room/RoomOpenDelegate;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_6

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/room/RoomOpenDelegate;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    iget-object p1, v0, Landroidx/room/RoomOpenDelegate;->b:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    .line 95
    .line 96
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, ", found: "

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    :catchall_2
    move-exception p1

    .line 124
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_3
    const-string v1, "BEGIN EXCLUSIVE TRANSACTION"

    .line 129
    .line 130
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :try_start_3
    move-object v1, p0

    .line 134
    check-cast v1, Landroidx/room/RoomConnectionManager;

    .line 135
    .line 136
    iget-object v1, v1, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 137
    .line 138
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->g(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-boolean v2, v1, Landroidx/room/RoomOpenDelegate$ValidationResult;->a:Z

    .line 143
    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    move-object v0, p0

    .line 147
    check-cast v0, Landroidx/room/RoomConnectionManager;

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->e(Landroidx/sqlite/SQLiteConnection;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->f(Landroidx/sqlite/SQLiteConnection;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :catchall_3
    move-exception v0

    .line 161
    goto :goto_3

    .line 162
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v1, Landroidx/room/RoomOpenDelegate$ValidationResult;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 186
    :goto_3
    new-instance v1, Lkotlin/Result$Failure;

    .line 187
    .line 188
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    move-object v0, v1

    .line 192
    :goto_4
    nop

    .line 193
    instance-of v1, v0, Lkotlin/Result$Failure;

    .line 194
    .line 195
    if-nez v1, :cond_5

    .line 196
    .line 197
    move-object v1, v0

    .line 198
    check-cast v1, Lkotlin/Unit;

    .line 199
    .line 200
    const-string v1, "END TRANSACTION"

    .line 201
    .line 202
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-nez v0, :cond_9

    .line 210
    .line 211
    :cond_6
    :goto_5
    move-object v0, p0

    .line 212
    check-cast v0, Landroidx/room/RoomConnectionManager;

    .line 213
    .line 214
    iget-object v1, v0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 215
    .line 216
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->d(Landroidx/sqlite/SQLiteConnection;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v0, Landroidx/room/RoomConnectionManager;->e:Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_8

    .line 230
    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    instance-of v2, p1, Landroidx/room/driver/SupportSQLiteConnection;

    .line 241
    .line 242
    if-eqz v2, :cond_7

    .line 243
    .line 244
    move-object v2, p1

    .line 245
    check-cast v2, Landroidx/room/driver/SupportSQLiteConnection;

    .line 246
    .line 247
    iget-object v2, v2, Landroidx/room/driver/SupportSQLiteConnection;->j:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Callback;->a(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_8
    iput-boolean v3, p0, Landroidx/room/BaseRoomConnectionManager;->a:Z

    .line 254
    .line 255
    return-void

    .line 256
    :cond_9
    const-string p0, "ROLLBACK TRANSACTION"

    .line 257
    .line 258
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :goto_7
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 263
    :catchall_4
    move-exception p1

    .line 264
    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    throw p1
.end method

.method public final f(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/room/RoomConnectionManager;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/room/RoomOpenDelegate;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "\')"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
