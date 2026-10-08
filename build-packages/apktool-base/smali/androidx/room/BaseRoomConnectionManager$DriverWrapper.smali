.class public final Landroidx/room/BaseRoomConnectionManager$DriverWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/sqlite/SQLiteDriver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/BaseRoomConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DriverWrapper"
.end annotation


# instance fields
.field public final a:Landroidx/sqlite/SQLiteDriver;

.field public final synthetic b:Landroidx/room/RoomConnectionManager;


# direct methods
.method public constructor <init>(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->b:Landroidx/room/RoomConnectionManager;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a:Landroidx/sqlite/SQLiteDriver;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, ":memory:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->b:Landroidx/room/RoomConnectionManager;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, v2, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v1, Landroidx/room/concurrent/ExclusiveLock;

    .line 30
    .line 31
    iget-boolean v3, v2, Landroidx/room/BaseRoomConnectionManager;->a:Z

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    iget-boolean v3, v2, Landroidx/room/BaseRoomConnectionManager;->b:Z

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    move v0, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v5

    .line 50
    :goto_0
    invoke-direct {v1, p1, v0}, Landroidx/room/concurrent/ExclusiveLock;-><init>(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$openLocked$2;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$openLocked$2;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v1, Landroidx/room/concurrent/ExclusiveLock;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    iget-object v1, v1, Landroidx/room/concurrent/ExclusiveLock;->b:Landroidx/room/concurrent/FileLock;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v1}, Landroidx/room/concurrent/FileLock;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    move v4, v5

    .line 74
    goto :goto_6

    .line 75
    :cond_2
    :goto_1
    :try_start_1
    iget-boolean v7, v2, Landroidx/room/BaseRoomConnectionManager;->b:Z

    .line 76
    .line 77
    if-nez v7, :cond_7

    .line 78
    .line 79
    iget-object p0, p0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a:Landroidx/sqlite/SQLiteDriver;

    .line 80
    .line 81
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->a(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    iget-boolean p1, v2, Landroidx/room/BaseRoomConnectionManager;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 86
    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    :try_start_2
    iput-boolean v4, v2, Landroidx/room/BaseRoomConnectionManager;->b:Z

    .line 90
    .line 91
    invoke-static {v2, p0}, Landroidx/room/BaseRoomConnectionManager;->a(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .line 93
    .line 94
    :try_start_3
    iput-boolean v5, v2, Landroidx/room/BaseRoomConnectionManager;->b:Z

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    iput-boolean v5, v2, Landroidx/room/BaseRoomConnectionManager;->b:Z

    .line 99
    .line 100
    throw p0

    .line 101
    :cond_3
    iget-object p1, v2, Landroidx/room/RoomConnectionManager;->c:Landroidx/room/DatabaseConfiguration;

    .line 102
    .line 103
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 104
    .line 105
    sget-object v5, Landroidx/room/RoomDatabase$JournalMode;->l:Landroidx/room/RoomDatabase$JournalMode;

    .line 106
    .line 107
    if-ne p1, v5, :cond_4

    .line 108
    .line 109
    const-string p1, "PRAGMA synchronous = NORMAL"

    .line 110
    .line 111
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    const-string p1, "PRAGMA synchronous = FULL"

    .line 116
    .line 117
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->a(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-static {p0}, Landroidx/room/BaseRoomConnectionManager;->b(Landroidx/sqlite/SQLiteConnection;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, v2, Landroidx/room/RoomConnectionManager;->d:Landroidx/room/RoomOpenDelegate;

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Landroidx/room/RoomOpenDelegate;->d(Landroidx/sqlite/SQLiteConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 126
    .line 127
    .line 128
    :goto_3
    if-eqz v1, :cond_6

    .line 129
    .line 130
    :try_start_4
    iget-object p1, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 131
    .line 132
    if-nez p1, :cond_5

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 136
    .line 137
    .line 138
    :try_start_6
    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :catchall_2
    move-exception p0

    .line 142
    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    .line 143
    .line 144
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 145
    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :cond_7
    :try_start_7
    const-string p0, "Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?"

    .line 150
    .line 151
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 157
    :catchall_3
    move-exception p0

    .line 158
    if-eqz v1, :cond_9

    .line 159
    .line 160
    :try_start_8
    iget-object p1, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 161
    .line 162
    if-nez p1, :cond_8

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_8
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 166
    .line 167
    .line 168
    :try_start_a
    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :catchall_4
    move-exception p0

    .line 172
    iput-object v6, v1, Landroidx/room/concurrent/FileLock;->b:Ljava/nio/channels/FileChannel;

    .line 173
    .line 174
    throw p0

    .line 175
    :cond_9
    :goto_5
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 176
    :catchall_5
    move-exception p0

    .line 177
    :goto_6
    if-eqz v4, :cond_a

    .line 178
    .line 179
    :try_start_b
    throw p0

    .line 180
    :catchall_6
    move-exception p0

    .line 181
    goto :goto_7

    .line 182
    :cond_a
    invoke-virtual {v0, p0}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper$openLocked$2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 186
    :goto_7
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    .line 188
    .line 189
    throw p0
.end method
