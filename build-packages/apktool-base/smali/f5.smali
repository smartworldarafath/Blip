.class public final synthetic Lf5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf5;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lf5;->k:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lf5;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lf5;->k:Landroidx/activity/ComponentActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, Landroidx/activity/ComponentActivity;->D:I

    .line 10
    .line 11
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    .line 12
    .line 13
    new-instance v2, Le5;

    .line 14
    .line 15
    invoke-direct {v2, p0, v1}, Le5;-><init>(Landroidx/activity/ComponentActivity;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x21

    .line 24
    .line 25
    if-lt v2, v3, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    new-instance v1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lf3;

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    invoke-direct {v2, v3, p0, v0}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Landroidx/core/app/ComponentActivity;->j:Landroidx/lifecycle/LifecycleRegistry;

    .line 61
    .line 62
    new-instance v3, Lg5;

    .line 63
    .line 64
    invoke-direct {v3, v1, v0, p0}, Lg5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    sget v0, Landroidx/activity/ComponentActivity;->D:I

    .line 72
    .line 73
    new-instance v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v2, 0x0

    .line 95
    :goto_1
    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :pswitch_1
    sget v0, Landroidx/activity/ComponentActivity;->D:I

    .line 100
    .line 101
    new-instance v0, Landroidx/navigationevent/DirectNavigationEventInput;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->b()Landroidx/navigationevent/NavigationEventDispatcher;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0, v0}, Landroidx/navigationevent/NavigationEventDispatcher;->b(Landroidx/navigationevent/NavigationEventInput;)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :pswitch_2
    new-instance v0, Landroidx/activity/FullyDrawnReporter;

    .line 115
    .line 116
    iget-object v2, p0, Landroidx/activity/ComponentActivity;->o:Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;

    .line 117
    .line 118
    new-instance v3, Lf5;

    .line 119
    .line 120
    invoke-direct {v3, p0, v1}, Lf5;-><init>(Landroidx/activity/ComponentActivity;I)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v2, v3}, Landroidx/activity/FullyDrawnReporter;-><init>(Ljava/util/concurrent/Executor;Lf5;)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :pswitch_3
    sget v0, Landroidx/activity/ComponentActivity;->D:I

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->reportFullyDrawn()V

    .line 130
    .line 131
    .line 132
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
