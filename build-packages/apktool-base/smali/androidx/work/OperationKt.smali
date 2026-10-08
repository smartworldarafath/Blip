.class public abstract Landroidx/work/OperationKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;Ljava/lang/String;Landroidx/work/impl/utils/SerialExecutorImpl;Lkotlin/jvm/functions/Function0;)Landroidx/work/Operation;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v5, v0}, Landroidx/lifecycle/LiveData;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lsc;

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move-object v3, p1

    .line 17
    move-object v1, p2

    .line 18
    move-object v4, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Lsc;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 23
    .line 24
    .line 25
    new-instance p0, Landroidx/work/OperationImpl;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method
