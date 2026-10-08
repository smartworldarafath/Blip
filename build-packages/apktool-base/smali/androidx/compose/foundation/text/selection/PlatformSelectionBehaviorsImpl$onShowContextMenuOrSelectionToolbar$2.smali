.class final Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/textclassifier/TextClassifier;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2"
    f = "PlatformSelectionBehaviors.android.kt"
    l = {
        0xae
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

.field public final synthetic q:Ljava/lang/CharSequence;

.field public final synthetic r:J


# direct methods
.method public constructor <init>(JLandroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->p:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 2
    .line 3
    iput-object p4, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->q:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->r:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/textclassifier/TextClassifier;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;

    .line 2
    .line 3
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->q:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-wide v1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->r:J

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->p:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;-><init>(JLandroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->o:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->o:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v7, p1

    .line 27
    check-cast v7, Landroid/view/textclassifier/TextClassifier;

    .line 28
    .line 29
    iput v2, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->n:I

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->p:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 32
    .line 33
    iget-object v4, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->q:Ljava/lang/CharSequence;

    .line 34
    .line 35
    iget-wide v5, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;->r:J

    .line 36
    .line 37
    move-object v8, p0

    .line 38
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->a(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-ne p0, v0, :cond_2

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method
