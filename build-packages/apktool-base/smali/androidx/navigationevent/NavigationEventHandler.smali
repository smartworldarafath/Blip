.class public abstract Landroidx/navigationevent/NavigationEventHandler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Landroidx/navigationevent/NavigationEventInfo;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Z

.field public e:Landroidx/navigationevent/NavigationEventDispatcher;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->a:Landroidx/navigationevent/NavigationEventInfo;

    .line 5
    .line 6
    sget-object p1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->b:Ljava/util/List;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/navigationevent/NavigationEventHandler;->c:Ljava/util/List;

    .line 11
    .line 12
    iput-boolean p2, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract c(Landroidx/navigationevent/NavigationEvent;)V
.end method

.method public abstract d(Landroidx/navigationevent/NavigationEvent;)V
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/NavigationEventHandler;->e:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventDispatcher;->c:Landroidx/collection/MutableOrderedScatterSet;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Landroidx/collection/MutableOrderedScatterSet;->i(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->f:Landroidx/navigationevent/NavigationEventHandler;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->g:I

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq v1, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->a()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iput-object v2, v0, Landroidx/navigationevent/NavigationEventProcessor;->f:Landroidx/navigationevent/NavigationEventHandler;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->g:I

    .line 40
    .line 41
    iput-object v2, v0, Landroidx/navigationevent/NavigationEventProcessor;->h:Landroidx/navigationevent/NavigationEventInput;

    .line 42
    .line 43
    :cond_1
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->d:Lkotlin/collections/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Landroidx/navigationevent/NavigationEventProcessor;->e:Lkotlin/collections/ArrayDeque;

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Landroidx/navigationevent/NavigationEventHandler;->e:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventProcessor;->b()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventHandler;->d:Z

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->e:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventDispatcher;->b:Landroidx/navigationevent/NavigationEventProcessor;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventProcessor;->b()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method
