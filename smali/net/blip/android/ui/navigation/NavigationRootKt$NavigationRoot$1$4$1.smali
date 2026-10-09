.class final Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.navigation.NavigationRootKt$NavigationRoot$1$4$1"
    f = "NavigationRoot.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->n:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->o:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->p:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->o:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->p:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->n:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;-><init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "gallery/{urls}"

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/SetsKt;->e(Ljava/lang/Object;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    iget-object v0, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->o:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->n:Ljava/lang/String;

    .line 23
    .line 24
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_0
    const/4 v5, 0x2

    .line 35
    if-ge v4, v5, :cond_1

    .line 36
    .line 37
    aget-object v5, v1, v4

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 48
    .line 49
    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->g:J

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-object p1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->c:Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 63
    .line 64
    iget-wide v3, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->p:J

    .line 65
    .line 66
    :goto_1
    new-instance p1, Landroidx/compose/ui/graphics/Color;

    .line 67
    .line 68
    invoke-direct {p1, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lnet/blip/android/ui/navigation/NavigationRootKt$NavigationRoot$1$4$1;->p:Landroidx/compose/runtime/MutableState;

    .line 72
    .line 73
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method
