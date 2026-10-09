.class final Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lbsarchive/Metadata;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.libblip.Transfer_DerivedKt$decodeArchive$2"
    f = "Transfer+Derived.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lnet/blip/libblip/frontend/Transfer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->n:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->o:Lnet/blip/libblip/frontend/Transfer;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->n:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->o:Lnet/blip/libblip/frontend/Transfer;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;-><init>(Ljava/lang/String;Lnet/blip/libblip/frontend/Transfer;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lokio/Path;->k:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->o:Lnet/blip/libblip/frontend/Transfer;

    .line 9
    .line 10
    iget-object p1, p1, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ".pb"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "TransferMetadata"

    .line 30
    .line 31
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p0, p0, Lnet/blip/libblip/Transfer_DerivedKt$decodeArchive$2;->n:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, p1}, Lnet/blip/libblip/PathUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object p1, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lokio/Path;->toFile()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Source;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Lokio/RealBufferedSource;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    :try_start_0
    sget-object v0, Lbsarchive/Metadata;->o:Lbsarchive/Metadata$Companion$ADAPTER$1;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/squareup/wire/ProtoReader;

    .line 70
    .line 71
    invoke-direct {v1, p1}, Lcom/squareup/wire/ProtoReader;-><init>(Lokio/BufferedSource;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lbsarchive/Metadata$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lbsarchive/Metadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    .line 80
    :try_start_1
    invoke-virtual {p1}, Lokio/RealBufferedSource;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    :goto_0
    move-object v2, v0

    .line 86
    move-object v0, p0

    .line 87
    move-object p0, v2

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    :try_start_2
    invoke-virtual {p1}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_2
    move-exception p1

    .line 95
    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    if-nez v0, :cond_0

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_0
    throw v0
.end method
