.class final Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.vinceglb.filekit.dialogs.FileKit_androidKt$awaitActivityResult$2"
    f = "FileKit.android.kt"
    l = {
        0x268
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Ljava/lang/Object;

.field public o:I

.field public final synthetic p:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic q:Landroidx/activity/result/contract/ActivityResultContract;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->p:Landroidx/activity/result/ActivityResultRegistry;

    .line 2
    .line 3
    iput-object p2, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->q:Landroidx/activity/result/contract/ActivityResultContract;

    .line 4
    .line 5
    iput-object p3, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->r:Ljava/lang/Object;

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

.method public static final x(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/activity/result/ActivityResultLauncher;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroidx/activity/result/ActivityResultLauncher;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    new-instance p1, Lkotlin/Result$Failure;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
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
    invoke-virtual {p0, p1, p2}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;

    .line 2
    .line 3
    iget-object v0, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->q:Landroidx/activity/result/contract/ActivityResultContract;

    .line 4
    .line 5
    iget-object v1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->r:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->p:Landroidx/activity/result/ActivityResultRegistry;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;-><init>(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->o:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->r:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->n:Ljava/lang/Object;

    .line 27
    .line 28
    iput v2, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->o:I

    .line 29
    .line 30
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v5, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;

    .line 65
    .line 66
    invoke-direct {v5, v1, v3, v2}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->p:Landroidx/activity/result/ActivityResultRegistry;

    .line 70
    .line 71
    iget-object p0, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->q:Landroidx/activity/result/contract/ActivityResultContract;

    .line 72
    .line 73
    invoke-virtual {v6, v4, p0, v5}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$register$3;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iput-object p0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 78
    .line 79
    new-instance p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$2;

    .line 80
    .line 81
    invoke-direct {p0, v3, v2}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->x(Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    iget-object p0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Landroidx/activity/result/ActivityResultLauncher;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    invoke-static {v3, v2}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->x(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->z()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    new-instance p1, Lkotlin/Result$Failure;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 118
    .line 119
    if-ne p0, v0, :cond_3

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_3
    return-object p0
.end method
