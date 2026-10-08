.class final Lnet/blip/shared/ScratchFileWriter$write$2;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.shared.ScratchFileWriter$write$2"
    f = "ScratchFile.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->n:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->o:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->p:[B

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/shared/ScratchFileWriter$write$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/shared/ScratchFileWriter$write$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/shared/ScratchFileWriter$write$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/shared/ScratchFileWriter$write$2;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->o:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->p:[B

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->n:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/shared/ScratchFileWriter$write$2;-><init>(Ljava/lang/String;Ljava/lang/String;[BLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 7
    .line 8
    sget-object v0, Lokio/Path;->k:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lokio/FileSystem;->n(Lokio/Path;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->o:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object p0, p0, Lnet/blip/shared/ScratchFileWriter$write$2;->p:[B

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, v0, v1}, Lokio/JvmSystemFileSystem;->S(Lokio/Path;Z)Lokio/Sink;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lokio/RealBufferedSink;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :try_start_0
    invoke-virtual {v0, p0}, Lokio/RealBufferedSink;->write([B)Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v0}, Lokio/RealBufferedSink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    :try_start_2
    invoke-virtual {v0}, Lokio/RealBufferedSink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_2
    move-exception v0

    .line 53
    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    move-object v0, p1

    .line 57
    move-object p1, p0

    .line 58
    :goto_1
    if-nez p1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Lokio/RealBufferedSink;->close()V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_0
    throw p1
.end method
