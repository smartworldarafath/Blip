.class Landroidx/core/provider/CallbackWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 2

    .line 1
    iget v0, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/provider/CallbackWrapper;->b:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/core/provider/CallbackWrapper;->a:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->a:Landroid/graphics/Typeface;

    .line 10
    .line 11
    new-instance v0, Landroidx/core/provider/CallbackWrapper$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Landroidx/core/provider/CallbackWrapper$1;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;Landroid/graphics/Typeface;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroidx/core/provider/RequestExecutor$HandlerExecutor;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/core/provider/RequestExecutor$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Landroidx/core/provider/CallbackWrapper$2;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0}, Landroidx/core/provider/CallbackWrapper$2;-><init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;I)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Landroidx/core/provider/RequestExecutor$HandlerExecutor;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroidx/core/provider/RequestExecutor$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
