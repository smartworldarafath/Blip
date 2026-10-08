.class public final Lcoil3/compose/AsyncImagePainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/compose/AsyncImagePainter$Input;,
        Lcoil3/compose/AsyncImagePainter$State;
    }
.end annotation


# static fields
.field public static final E:Lh;


# instance fields
.field public A:Lcoil3/compose/AsyncImagePainter$Input;

.field public final B:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final D:Lkotlinx/coroutines/flow/StateFlow;

.field public final o:Landroidx/compose/runtime/MutableState;

.field public p:F

.field public q:Landroidx/compose/ui/graphics/ColorFilter;

.field public r:Z

.field public s:Lkotlinx/coroutines/Job;

.field public t:J

.field public u:Lkotlinx/coroutines/CoroutineScope;

.field public v:Lkotlin/jvm/functions/Function1;

.field public w:Lkotlin/jvm/functions/Function1;

.field public x:Landroidx/compose/ui/layout/ContentScale;

.field public y:I

.field public z:Lcoil3/compose/AsyncImagePreviewHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lh;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcoil3/compose/AsyncImagePainter;->E:Lh;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcoil3/compose/AsyncImagePainter$Input;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->o:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v0, p0, Lcoil3/compose/AsyncImagePainter;->p:F

    .line 14
    .line 15
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide v0, p0, Lcoil3/compose/AsyncImagePainter;->t:J

    .line 21
    .line 22
    sget-object v0, Lcoil3/compose/AsyncImagePainter;->E:Lh;

    .line 23
    .line 24
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->v:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 27
    .line 28
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->x:Landroidx/compose/ui/layout/ContentScale;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcoil3/compose/AsyncImagePainter;->y:I

    .line 32
    .line 33
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->A:Lcoil3/compose/AsyncImagePainter$Input;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 40
    .line 41
    sget-object p1, Lcoil3/compose/AsyncImagePainter$State$Empty;->a:Lcoil3/compose/AsyncImagePainter$State$Empty;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->D:Lkotlinx/coroutines/flow/StateFlow;

    .line 54
    .line 55
    return-void
.end method

.method public static final k(Lcoil3/compose/AsyncImagePainter;Lcoil3/request/ImageRequest;Z)Lcoil3/request/ImageRequest;
    .locals 2

    .line 1
    invoke-static {p1}, Lcoil3/request/ImageRequest;->a(Lcoil3/request/ImageRequest;)Lcoil3/request/ImageRequest$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;

    .line 6
    .line 7
    invoke-direct {v1, p1, p0}, Lcoil3/compose/AsyncImagePainter$updateRequest$$inlined$target$default$1;-><init>(Lcoil3/request/ImageRequest;Lcoil3/compose/AsyncImagePainter;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcoil3/request/ImageRequest$Builder;->d:Lcoil3/target/Target;

    .line 11
    .line 12
    iget-object p1, p1, Lcoil3/request/ImageRequest;->s:Lcoil3/request/ImageRequest$Defined;

    .line 13
    .line 14
    iget-object v1, p1, Lcoil3/request/ImageRequest$Defined;->g:Lcoil3/size/SizeResolver;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    .line 19
    .line 20
    iput-object v1, v0, Lcoil3/request/ImageRequest$Builder;->l:Lcoil3/size/SizeResolver;

    .line 21
    .line 22
    :cond_0
    iget-object v1, p1, Lcoil3/request/ImageRequest$Defined;->h:Lcoil3/size/Scale;

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter;->x:Landroidx/compose/ui/layout/ContentScale;

    .line 27
    .line 28
    sget v1, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 29
    .line 30
    sget-object v1, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 31
    .line 32
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    sget-object v1, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

    .line 39
    .line 40
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lcoil3/size/Scale;->j:Lcoil3/size/Scale;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    sget-object p0, Lcoil3/size/Scale;->k:Lcoil3/size/Scale;

    .line 51
    .line 52
    :goto_1
    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->m:Lcoil3/size/Scale;

    .line 53
    .line 54
    :cond_3
    iget-object p0, p1, Lcoil3/request/ImageRequest$Defined;->i:Lcoil3/size/Precision;

    .line 55
    .line 56
    if-nez p0, :cond_4

    .line 57
    .line 58
    sget-object p0, Lcoil3/size/Precision;->k:Lcoil3/size/Precision;

    .line 59
    .line 60
    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->n:Lcoil3/size/Precision;

    .line 61
    .line 62
    :cond_4
    if-eqz p2, :cond_5

    .line 63
    .line 64
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 65
    .line 66
    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->f:Lkotlin/coroutines/CoroutineContext;

    .line 67
    .line 68
    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->g:Lkotlin/coroutines/CoroutineContext;

    .line 69
    .line 70
    iput-object p0, v0, Lcoil3/request/ImageRequest$Builder;->h:Lkotlin/coroutines/CoroutineContext;

    .line 71
    .line 72
    :cond_5
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public static final l(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$State;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcoil3/compose/AsyncImagePainter$State;

    .line 8
    .line 9
    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter;->v:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcoil3/compose/AsyncImagePainter$State;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    instance-of v0, p1, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 26
    .line 27
    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter$State$Success;->a:Lcoil3/request/SuccessResult;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p1, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move-object v0, p1

    .line 35
    check-cast v0, Lcoil3/compose/AsyncImagePainter$State$Error;

    .line 36
    .line 37
    iget-object v0, v0, Lcoil3/compose/AsyncImagePainter$State$Error;->a:Lcoil3/request/ErrorResult;

    .line 38
    .line 39
    :goto_0
    invoke-interface {v0}, Lcoil3/request/ImageResult;->d()Lcoil3/request/ImageRequest;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcoil3/transition/Transition$Factory;

    .line 50
    .line 51
    check-cast v0, Lcoil3/transition/NoneTransition$Factory;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-interface {p1}, Lcoil3/compose/AsyncImagePainter$State;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter;->o:Landroidx/compose/runtime/MutableState;

    .line 61
    .line 62
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Lcoil3/compose/AsyncImagePainter$State;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p1}, Lcoil3/compose/AsyncImagePainter$State;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eq v0, v2, :cond_5

    .line 76
    .line 77
    invoke-interface {v1}, Lcoil3/compose/AsyncImagePainter$State;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v0, v2

    .line 90
    :goto_1
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->b()V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-interface {p1}, Lcoil3/compose/AsyncImagePainter$State;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    move-object v2, v0

    .line 104
    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    .line 105
    .line 106
    :cond_4
    if-eqz v2, :cond_5

    .line 107
    .line 108
    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->c()V

    .line 109
    .line 110
    .line 111
    :cond_5
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter;->w:Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->m()Landroidx/compose/ui/graphics/painter/Painter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v2, v0, Landroidx/compose/runtime/RememberObserver;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    .line 21
    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->a()V

    .line 25
    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcoil3/compose/AsyncImagePainter;->r:Z

    .line 29
    .line 30
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->m()Landroidx/compose/ui/graphics/painter/Painter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v2, v0, Landroidx/compose/runtime/RememberObserver;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    .line 21
    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Landroidx/compose/runtime/RememberObserver;->b()V

    .line 25
    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcoil3/compose/AsyncImagePainter;->r:Z

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    const-string v0, "AsyncImagePainter.onRemembered"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->m()Landroidx/compose/ui/graphics/painter/Painter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->c()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->A:Lcoil3/compose/AsyncImagePainter$Input;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->u:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    new-instance v3, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    .line 34
    .line 35
    invoke-direct {v3, p0, v0, v2}, Lcoil3/compose/AsyncImagePainter$launchJob$1;-><init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3}, Lcoil3/compose/internal/DeferredDispatchKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 50
    .line 51
    :goto_1
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcoil3/compose/AsyncImagePainter;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    :try_start_1
    const-string p0, "scope"

    .line 59
    .line 60
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final d(F)Z
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/compose/AsyncImagePainter;->p:F

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final e(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final i()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->m()Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    return-wide v0
.end method

.method public final j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, p0, Lcoil3/compose/AsyncImagePainter;->t:J

    .line 8
    .line 9
    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iput-wide v1, p0, Lcoil3/compose/AsyncImagePainter;->t:J

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcoil3/compose/AsyncImagePainter;->m()Landroidx/compose/ui/graphics/painter/Painter;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    iget v8, p0, Lcoil3/compose/AsyncImagePainter;->p:F

    .line 28
    .line 29
    iget-object v9, p0, Lcoil3/compose/AsyncImagePainter;->q:Landroidx/compose/ui/graphics/ColorFilter;

    .line 30
    .line 31
    move-object v5, p1

    .line 32
    invoke-virtual/range {v4 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->g(Landroidx/compose/ui/node/LayoutNodeDrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final m()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter;->o:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 10
    .line 11
    return-object p0
.end method

.method public final n(Lcoil3/compose/AsyncImagePainter$Input;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/compose/AsyncImagePainter;->A:Lcoil3/compose/AsyncImagePainter$Input;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iput-object p1, p0, Lcoil3/compose/AsyncImagePainter;->A:Lcoil3/compose/AsyncImagePainter$Input;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1, v0}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v0, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v1, p0, Lcoil3/compose/AsyncImagePainter;->r:Z

    .line 25
    .line 26
    if-eqz v1, :cond_5

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v1, p0, Lcoil3/compose/AsyncImagePainter;->u:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    new-instance v2, Lcoil3/compose/AsyncImagePainter$launchJob$1;

    .line 36
    .line 37
    invoke-direct {v2, p0, p1, v0}, Lcoil3/compose/AsyncImagePainter$launchJob$1;-><init>(Lcoil3/compose/AsyncImagePainter;Lcoil3/compose/AsyncImagePainter$Input;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lcoil3/compose/internal/DeferredDispatchKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iput-object v1, p0, Lcoil3/compose/AsyncImagePainter;->s:Lkotlinx/coroutines/Job;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    const-string p0, "scope"

    .line 55
    .line 56
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget-object p0, p0, Lcoil3/compose/AsyncImagePainter;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 63
    .line 64
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_6
    return-void
.end method
