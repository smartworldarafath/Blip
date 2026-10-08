.class final Landroidx/room/driver/SupportSQLitePooledConnection;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/room/Transactor;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;
    }
.end annotation


# instance fields
.field public final a:Landroidx/room/driver/SupportSQLiteConnection;


# direct methods
.method public constructor <init>(Landroidx/room/driver/SupportSQLiteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/driver/SupportSQLitePooledConnection;->a:Landroidx/room/driver/SupportSQLiteConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/driver/SupportSQLitePooledConnection;->e(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLitePooledConnection;->a:Landroidx/room/driver/SupportSQLiteConnection;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteConnection;->j:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->F0()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLitePooledConnection;->a:Landroidx/room/driver/SupportSQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/room/driver/SupportSQLiteConnection;->a(Ljava/lang/String;)Landroidx/room/driver/SupportSQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-static {p0, p2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :catchall_1
    move-exception p2

    .line 19
    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p2
.end method

.method public final d()Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/driver/SupportSQLitePooledConnection;->a:Landroidx/room/driver/SupportSQLiteConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->q:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;-><init>(Landroidx/room/driver/SupportSQLitePooledConnection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->n:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->m:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/room/driver/SupportSQLitePooledConnection;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v3

    .line 55
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Landroidx/room/driver/SupportSQLitePooledConnection;->a:Landroidx/room/driver/SupportSQLiteConnection;

    .line 59
    .line 60
    iget-object p3, p3, Landroidx/room/driver/SupportSQLiteConnection;->j:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 61
    .line 62
    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->F0()Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    if-eq p1, v4, :cond_4

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    if-ne p1, v2, :cond_3

    .line 75
    .line 76
    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->o()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {}, Lk8;->e()V

    .line 81
    .line 82
    .line 83
    return-object v3

    .line 84
    :cond_4
    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->Y()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    invoke-interface {p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->G()V

    .line 89
    .line 90
    .line 91
    :goto_1
    :try_start_1
    new-instance p1, Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;

    .line 92
    .line 93
    invoke-direct {p1, p0}, Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;-><init>(Landroidx/room/driver/SupportSQLitePooledConnection;)V

    .line 94
    .line 95
    .line 96
    iput-object p0, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->m:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object p3, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->n:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 99
    .line 100
    iput v4, v0, Landroidx/room/driver/SupportSQLitePooledConnection$transaction$1;->q:I

    .line 101
    .line 102
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    if-ne p1, v1, :cond_6

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_6
    move-object v5, p1

    .line 110
    move-object p1, p0

    .line 111
    move-object p0, p3

    .line 112
    move-object p3, v5

    .line 113
    :goto_2
    :try_start_2
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->W()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->m0()V

    .line 117
    .line 118
    .line 119
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->F0()Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_7

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    :cond_7
    return-object p3

    .line 129
    :catchall_1
    move-exception p2

    .line 130
    move-object p1, p0

    .line 131
    move-object p0, p3

    .line 132
    :goto_3
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->m0()V

    .line 133
    .line 134
    .line 135
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->F0()Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-nez p0, :cond_8

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    :cond_8
    throw p2
.end method
