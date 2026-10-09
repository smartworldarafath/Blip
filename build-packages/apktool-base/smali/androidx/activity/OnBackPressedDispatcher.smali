.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    new-instance p1, Landroidx/activity/d;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Landroidx/activity/d;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Lkotlin/Lazy;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/OnBackPressedCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/activity/OnBackPressedCallbackInfo;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    .line 11
    .line 12
    invoke-direct {v1, p1, v0}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/navigationevent/NavigationEventInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroidx/activity/OnBackPressedCallback;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->c()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->c:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 25
    .line 26
    invoke-static {p0, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedDispatcherKt$addCallback$callback$1;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    .line 10
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->j:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Landroidx/activity/OnBackPressedCallbackInfo;

    .line 16
    .line 17
    invoke-direct {v1, p2, p1}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    .line 21
    .line 22
    invoke-direct {p1, p2, v1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;-><init>(Landroidx/activity/OnBackPressedCallback;Landroidx/navigationevent/NavigationEventInfo;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p2, Landroidx/activity/OnBackPressedCallback;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->g(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->c()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->c:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroidx/navigationevent/NavigationEventDispatcher;->a(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;

    .line 44
    .line 45
    invoke-direct {v1, p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;-><init>(Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Lgc;

    .line 52
    .line 53
    invoke-direct {p0, v0, v1}, Lgc;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedDispatcher$addCallback$observer$1;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p2, Landroidx/activity/OnBackPressedCallback;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final c()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 8
    .line 9
    return-object p0
.end method

.method public final d(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->c()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->c:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 6
    .line 7
    new-instance v1, Landroidx/navigationevent/OnBackInvokedDefaultInput;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p1, v2}, Landroidx/navigationevent/OnBackInvokedInput;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v1, v3}, Landroidx/navigationevent/NavigationEventDispatcher;->c(Landroidx/navigationevent/OnBackInvokedInput;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->c()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->c:Landroidx/navigationevent/NavigationEventDispatcher;

    .line 22
    .line 23
    new-instance v0, Landroidx/navigationevent/OnBackInvokedOverlayInput;

    .line 24
    .line 25
    const v1, 0xf4240

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Landroidx/navigationevent/OnBackInvokedInput;-><init>(Landroid/window/OnBackInvokedDispatcher;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v2}, Landroidx/navigationevent/NavigationEventDispatcher;->c(Landroidx/navigationevent/OnBackInvokedInput;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
