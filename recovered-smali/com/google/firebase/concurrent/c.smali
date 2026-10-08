.class public final synthetic Lcom/google/firebase/concurrent/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Runnable;

.field public final synthetic l:Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/firebase/concurrent/c;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/concurrent/c;->k:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/firebase/concurrent/c;->l:Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;

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
    iget v0, p0, Lcom/google/firebase/concurrent/c;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/concurrent/c;->l:Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/firebase/concurrent/c;->k:Ljava/lang/Runnable;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->a:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    .line 11
    .line 12
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    sget p0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->r:I

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    sget v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->r:I

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->k(Ljava/lang/Throwable;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_0
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception p0

    .line 34
    iget-object v0, v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->a:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    .line 35
    .line 36
    sget v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->r:I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->k(Ljava/lang/Throwable;)Z

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :pswitch_1
    :try_start_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_2
    move-exception p0

    .line 47
    iget-object v0, v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->a:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    .line 48
    .line 49
    sget v1, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->r:I

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->k(Ljava/lang/Throwable;)Z

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
