.class public final Lnet/blip/android/MainActivity;
.super Landroidx/activity/ComponentActivity;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/android/MainActivity$Companion;
    }
.end annotation


# static fields
.field public static final G:Ljava/lang/String;

.field public static final H:Ljava/lang/String;

.field public static final I:Ljava/lang/String;

.field public static final J:Ljava/lang/String;


# instance fields
.field public E:Z

.field public final F:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lnet/blip/android/MainActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ".ACTION_OPEN_GALLERY"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lnet/blip/android/MainActivity;->G:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, ".ACTION_OPEN_PEER"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lnet/blip/android/MainActivity;->H:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, ".KEY_TRANSFER_ID"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lnet/blip/android/MainActivity;->I:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, ".KEY_PEER_ID"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lnet/blip/android/MainActivity;->J:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lva;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lva;-><init>(Lnet/blip/android/MainActivity;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lnet/blip/android/MainActivity;->F:Lkotlin/Lazy;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final j(Landroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Lnet/blip/android/App;

    .line 10
    .line 11
    new-instance v1, Ld4;

    .line 12
    .line 13
    const/4 v6, 0x3

    .line 14
    move-object v5, p0

    .line 15
    move-object v3, p0

    .line 16
    move-object v4, p1

    .line 17
    invoke-direct/range {v1 .. v6}, Ld4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 21
    .line 22
    const p1, -0x292f0703

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Landroidx/activity/compose/ComponentActivityKt;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const v0, 0x1020002

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/view/ViewGroup;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    instance-of v0, p1, Landroidx/compose/ui/platform/ComposeView;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    check-cast p1, Landroidx/compose/ui/platform/ComposeView;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object p1, v1

    .line 62
    :goto_0
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    new-instance p1, Landroidx/compose/ui/platform/ComposeView;

    .line 72
    .line 73
    invoke-direct {p1, v3}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    const v0, 0x7f0a0206

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->a(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    const v0, 0x7f0a020a

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-static {p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->a(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    const v0, 0x7f0a0209

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    sget-object p0, Landroidx/activity/compose/ComponentActivityKt;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 127
    .line 128
    invoke-virtual {v3, p1, p0}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v2

    .line 19
    :goto_0
    new-instance v3, Lkotlin/Pair;

    .line 20
    .line 21
    const-string v4, "intent_action"

    .line 22
    .line 23
    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v1, v2

    .line 38
    :goto_1
    new-instance v4, Lkotlin/Pair;

    .line 39
    .line 40
    const-string v5, "intent_type"

    .line 41
    .line 42
    invoke-direct {v4, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    filled-new-array {v3, v4}, [Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v0, "onCreate"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->a(Lnet/blip/android/MainActivity;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x1

    .line 69
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    const-string v0, "CURRENT_INTENT_HANDLED"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_2
    iput-boolean p1, p0, Lnet/blip/android/MainActivity;->E:Z

    .line 82
    .line 83
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/activity/ComponentActivity;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Lnet/blip/android/MainActivity$onCreate$1;

    .line 88
    .line 89
    invoke-direct {v0, p0, v2}, Lnet/blip/android/MainActivity$onCreate$1;-><init>(Lnet/blip/android/MainActivity;Lkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 94
    .line 95
    .line 96
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/activity/ComponentActivity;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v0, Lnet/blip/android/MainActivity$onCreate$2;

    .line 101
    .line 102
    invoke-direct {v0, p0, v2}, Lnet/blip/android/MainActivity$onCreate$2;-><init>(Lnet/blip/android/MainActivity;Lkotlin/coroutines/Continuation;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    iget-boolean v0, p0, Lnet/blip/android/MainActivity;->E:Z

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    move-object v2, p1

    .line 119
    :cond_3
    invoke-virtual {p0, v2}, Lnet/blip/android/MainActivity;->j(Landroid/content/Intent;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lnet/blip/android/MainActivity;->E:Z

    .line 12
    .line 13
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lkotlin/Pair;

    .line 20
    .line 21
    const-string v3, "intent_action"

    .line 22
    .line 23
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v3, Lkotlin/Pair;

    .line 31
    .line 32
    const-string v4, "intent_type"

    .line 33
    .line 34
    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    filled-new-array {v2, v3}, [Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v0, "onNewIntent"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lnet/blip/android/MainActivity;->j(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "CURRENT_INTENT_HANDLED"

    .line 8
    .line 9
    iget-boolean p0, p0, Lnet/blip/android/MainActivity;->E:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
