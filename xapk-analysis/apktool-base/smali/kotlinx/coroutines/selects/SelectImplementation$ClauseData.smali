.class public final Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/SelectImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClauseData"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final b:Lkotlin/jvm/functions/Function3;

.field public final c:Lkotlin/jvm/functions/Function3;

.field public final d:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public final e:Lkotlin/jvm/functions/Function3;

.field public f:Lkotlinx/coroutines/internal/Segment;

.field public g:I

.field public final synthetic h:Lkotlinx/coroutines/selects/SelectImplementation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->h:Lkotlinx/coroutines/selects/SelectImplementation;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->b:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->c:Lkotlin/jvm/functions/Function3;

    .line 11
    .line 12
    iput-object p5, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->d:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 13
    .line 14
    iput-object p6, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->e:Lkotlin/jvm/functions/Function3;

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->g:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->f:Lkotlinx/coroutines/internal/Segment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->g:I

    .line 6
    .line 7
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->h:Lkotlinx/coroutines/selects/SelectImplementation;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->j:Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Lkotlinx/coroutines/internal/Segment;->h(ILkotlin/coroutines/CoroutineContext;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    instance-of p0, v0, Lkotlinx/coroutines/DisposableHandle;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->a()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method
