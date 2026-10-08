.class public final synthetic Lcom/google/firebase/concurrent/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/concurrent/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/concurrent/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/firebase/concurrent/a;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/firebase/concurrent/a;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/concurrent/a;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/firebase/concurrent/a;->k:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 11
    .line 12
    check-cast v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;

    .line 13
    .line 14
    iget-object v0, v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->a:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->r:I

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    sget v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->r:I

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->k(Ljava/lang/Throwable;)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_0
    check-cast p0, Lcom/google/firebase/concurrent/CustomThreadFactory;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Runnable;

    .line 36
    .line 37
    iget v0, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->c:I

    .line 38
    .line 39
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/firebase/concurrent/CustomThreadFactory;->d:Landroid/os/StrictMode$ThreadPolicy;

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
