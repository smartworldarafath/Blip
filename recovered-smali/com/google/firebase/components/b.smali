.class public final synthetic Lcom/google/firebase/components/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lcom/google/firebase/inject/Provider;

.field public final synthetic l:Lcom/google/firebase/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/firebase/components/b;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/components/b;->l:Lcom/google/firebase/inject/Provider;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/firebase/components/b;->k:Lcom/google/firebase/inject/Provider;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/firebase/components/b;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/components/b;->l:Lcom/google/firebase/inject/Provider;

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/components/LazySet;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/firebase/components/b;->k:Lcom/google/firebase/inject/Provider;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->b:Ljava/util/Set;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->a:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->b:Ljava/util/Set;

    .line 26
    .line 27
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/components/b;->l:Lcom/google/firebase/inject/Provider;

    .line 39
    .line 40
    check-cast v0, Lcom/google/firebase/components/OptionalProvider;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/firebase/components/b;->k:Lcom/google/firebase/inject/Provider;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->b:Lcom/google/firebase/inject/Provider;

    .line 45
    .line 46
    sget-object v2, Lcom/google/firebase/components/OptionalProvider;->d:Lq5;

    .line 47
    .line 48
    if-ne v1, v2, :cond_1

    .line 49
    .line 50
    monitor-enter v0

    .line 51
    :try_start_2
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->a:Lf7;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    iput-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->a:Lf7;

    .line 55
    .line 56
    iput-object p0, v0, Lcom/google/firebase/components/OptionalProvider;->b:Lcom/google/firebase/inject/Provider;

    .line 57
    .line 58
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    throw p0

    .line 66
    :cond_1
    const-string p0, "provide() can be called only once."

    .line 67
    .line 68
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
