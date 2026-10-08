.class public final Lcoil3/util/LifecyclesKt$awaitStarted$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/util/LifecyclesKt$awaitStarted$2$1;->j:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/util/LifecyclesKt$awaitStarted$2$1;->j:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
