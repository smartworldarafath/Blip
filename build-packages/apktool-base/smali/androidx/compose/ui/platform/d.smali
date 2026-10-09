.class public final synthetic Landroidx/compose/ui/platform/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/platform/d;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/platform/d;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/ui/platform/d;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/platform/d;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/platform/d;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/d;->k:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 11
    .line 12
    check-cast v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 15
    .line 16
    iget-boolean v0, p0, Landroidx/compose/ui/platform/WrappedComposition;->l:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/platform/ComposeViewContext;->d()Landroidx/lifecycle/LifecycleOwner;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p1, Landroidx/compose/ui/platform/ComposeViewContext;->a:Landroid/view/View;

    .line 25
    .line 26
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/compose/ui/platform/WrappedComposition;->m:Landroidx/lifecycle/Lifecycle;

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    new-instance p1, Landroidx/compose/ui/platform/f;

    .line 55
    .line 56
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/platform/f;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Landroidx/lifecycle/Lifecycle;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/platform/WrappedComposition;->m:Landroidx/lifecycle/Lifecycle;

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 70
    .line 71
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->i:Landroidx/lifecycle/Lifecycle$State;

    .line 72
    .line 73
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->l:Landroidx/lifecycle/Lifecycle$State;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ltz v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/compose/ui/platform/WrappedComposition;->k:Landroidx/compose/runtime/CompositionImpl;

    .line 82
    .line 83
    new-instance v2, Landroidx/compose/ui/platform/g;

    .line 84
    .line 85
    invoke-direct {v2, p0, p1, v1}, Landroidx/compose/ui/platform/g;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Landroidx/compose/ui/platform/ComposeViewContext;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 89
    .line 90
    const p1, -0x66c1ecc8

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0, p1, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionImpl;->B(Lkotlin/jvm/functions/Function2;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    .line 104
    .line 105
    check-cast v1, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 106
    .line 107
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 108
    .line 109
    new-instance p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 110
    .line 111
    new-instance v0, Lr1;

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    invoke-direct {v0, v2, v1}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/platform/InputMethodSession;-><init>(Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;Lr1;)V

    .line 118
    .line 119
    .line 120
    return-object p1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
