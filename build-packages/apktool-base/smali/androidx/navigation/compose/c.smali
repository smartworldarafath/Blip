.class public final synthetic Landroidx/navigation/compose/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic k:Landroidx/compose/animation/core/SeekableTransitionState;

.field public final synthetic l:Landroidx/navigation/NavBackStackEntry;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation/compose/c;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/compose/c;->k:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation/compose/c;->l:Landroidx/navigation/NavBackStackEntry;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance p2, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/navigation/compose/c;->k:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/navigation/compose/c;->l:Landroidx/navigation/NavBackStackEntry;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {p2, p1, v0, v1, v2}, Landroidx/navigation/compose/NavHostKt$NavHost$21$1$1$1;-><init>(FLandroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    iget-object p0, p0, Landroidx/navigation/compose/c;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    invoke-static {p0, v2, v2, p2, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
