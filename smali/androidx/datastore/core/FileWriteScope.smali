.class public final Landroidx/datastore/core/FileWriteScope;
.super Landroidx/datastore/core/FileReadScope;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/datastore/core/WriteScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/FileReadScope<",
        "TT;>;",
        "Landroidx/datastore/core/WriteScope<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final b(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/FileWriteScope$writeData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/FileWriteScope$writeData$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->q:I

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
    iput v1, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/FileWriteScope$writeData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/FileWriteScope$writeData$1;-><init>(Landroidx/datastore/core/FileWriteScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->q:I

    .line 30
    .line 31
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->n:Ljava/io/FileOutputStream;

    .line 40
    .line 41
    iget-object p1, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->m:Ljava/io/FileOutputStream;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v5

    .line 55
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Landroidx/datastore/core/FileReadScope;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_4

    .line 65
    .line 66
    new-instance p2, Ljava/io/FileOutputStream;

    .line 67
    .line 68
    iget-object p0, p0, Landroidx/datastore/core/FileReadScope;->a:Ljava/io/File;

    .line 69
    .line 70
    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    :try_start_1
    sget-object p0, Landroidx/datastore/preferences/core/PreferencesFileSerializer;->a:Landroidx/datastore/preferences/core/PreferencesFileSerializer;

    .line 74
    .line 75
    new-instance v2, Landroidx/datastore/core/UncloseableOutputStream;

    .line 76
    .line 77
    invoke-direct {v2, p2}, Landroidx/datastore/core/UncloseableOutputStream;-><init>(Ljava/io/FileOutputStream;)V

    .line 78
    .line 79
    .line 80
    iput-object p2, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->m:Ljava/io/FileOutputStream;

    .line 81
    .line 82
    iput-object p2, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->n:Ljava/io/FileOutputStream;

    .line 83
    .line 84
    iput v4, v0, Landroidx/datastore/core/FileWriteScope$writeData$1;->q:I

    .line 85
    .line 86
    invoke-virtual {p0, p1, v2}, Landroidx/datastore/preferences/core/PreferencesFileSerializer;->b(Ljava/lang/Object;Landroidx/datastore/core/UncloseableOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    .line 89
    if-ne v3, v1, :cond_3

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_3
    move-object p0, p2

    .line 93
    move-object p1, p0

    .line 94
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    return-object v3

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    move-object p1, p2

    .line 107
    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    :catchall_2
    move-exception p2

    .line 109
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p2

    .line 113
    :cond_4
    const-string p0, "This scope has already been closed."

    .line 114
    .line 115
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v5
.end method
