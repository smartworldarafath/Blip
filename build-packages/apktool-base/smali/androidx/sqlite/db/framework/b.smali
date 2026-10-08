.class public final synthetic Landroidx/sqlite/db/framework/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic a:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field public final synthetic b:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/sqlite/db/framework/b;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/sqlite/db/framework/b;->b:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    sget v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->q:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/sqlite/db/framework/b;->b:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->a:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, v1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    :cond_0
    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->a:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 26
    .line 27
    :cond_1
    iget-object p1, v1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->j:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/sqlite/db/framework/b;->a:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Corruption reported by sqlite on database: "

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ".path"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "SupportSQLite"

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_6

    .line 69
    .line 70
    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->a(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    const/4 p0, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_1

    .line 82
    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_1
    if-eqz p0, :cond_3

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/util/Pair;

    .line 103
    .line 104
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    check-cast p1, Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->a(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    if-eqz p0, :cond_4

    .line 120
    .line 121
    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->a(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    throw v0

    .line 125
    :catch_1
    :goto_3
    if-eqz p0, :cond_5

    .line 126
    .line 127
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/util/Pair;

    .line 142
    .line 143
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    check-cast p1, Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->a(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-eqz p0, :cond_6

    .line 159
    .line 160
    invoke-static {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->a(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_6
    return-void
.end method
