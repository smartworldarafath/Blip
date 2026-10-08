.class public final Landroidx/navigationevent/NavigationEventDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lp;

.field public final b:Landroidx/navigationevent/NavigationEventProcessor;

.field public final c:Landroidx/collection/MutableOrderedScatterSet;

.field public final d:Landroidx/collection/MutableOrderedScatterSet;


# direct methods
.method public constructor <init>(Lp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->a:Lp;

    .line 5
    .line 6
    new-instance p1, Landroidx/navigationevent/NavigationEventProcessor;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/navigationevent/NavigationEventProcessor;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 12
    .line 13
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->c:Landroidx/collection/MutableOrderedScatterSet;

    .line 21
    .line 22
    invoke-static {}, Landroidx/collection/OrderedScatterSetKt;->a()Landroidx/collection/MutableOrderedScatterSet;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventDispatcher;->d:Landroidx/collection/MutableOrderedScatterSet;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->c:Landroidx/collection/MutableOrderedScatterSet;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Landroidx/navigationevent/NavigationEventHandler;->e:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->e:Lkotlin/collections/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p0, p1, Landroidx/navigationevent/NavigationEventHandler;->e:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventProcessor;->b()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string p0, "Handler \'"

    .line 36
    .line 37
    const-string v0, "\' is already registered with a dispatcher"

    .line 38
    .line 39
    invoke-static {p0, p1, v0}, Lfe;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroidx/navigationevent/NavigationEventInput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->d:Landroidx/collection/MutableOrderedScatterSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, p0, p1, v1}, Landroidx/navigationevent/NavigationEventProcessor;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final c(Landroidx/navigationevent/OnBackInvokedInput;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "Unsupported priority value: "

    .line 8
    .line 9
    invoke-static {p2, p0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->d:Landroidx/collection/MutableOrderedScatterSet;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->b(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 26
    .line 27
    invoke-virtual {v0, p0, p1, p2}, Landroidx/navigationevent/NavigationEventProcessor;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventInput;I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public final d(Landroidx/navigationevent/NavigationEventInput;Landroidx/navigationevent/NavigationEvent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->g:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventProcessor;->c(I)Landroidx/navigationevent/NavigationEventHandler;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Landroidx/navigationevent/NavigationEventProcessor;->f:Landroidx/navigationevent/NavigationEventHandler;

    .line 17
    .line 18
    iput v0, p0, Landroidx/navigationevent/NavigationEventProcessor;->g:I

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventProcessor;->h:Landroidx/navigationevent/NavigationEventInput;

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    .line 27
    .line 28
    invoke-direct {p1, p2, v0}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Landroidx/navigationevent/NavigationEventHandler;->d(Landroidx/navigationevent/NavigationEvent;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventProcessor;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 35
    .line 36
    new-instance p1, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    .line 37
    .line 38
    invoke-direct {p1, p2, v0}, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;-><init>(Landroidx/navigationevent/NavigationEvent;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method
