.class final Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/EnterExitState;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/EnterTransition;

.field public final synthetic l:Landroidx/compose/animation/ExitTransition;

.field public final synthetic m:Landroidx/compose/animation/SharedMutableTransformState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedMutableTransformState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;->k:Landroidx/compose/animation/EnterTransition;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;->l:Landroidx/compose/animation/ExitTransition;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;->m:Landroidx/compose/animation/SharedMutableTransformState;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_3

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;->l:Landroidx/compose/animation/ExitTransition;

    .line 18
    .line 19
    check-cast p1, Landroidx/compose/animation/ExitTransitionImpl;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/compose/animation/TransitionData;->a:Landroidx/compose/animation/Fade;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget v0, p1, Landroidx/compose/animation/Fade;->a:F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;->m:Landroidx/compose/animation/SharedMutableTransformState;

    .line 31
    .line 32
    iget v0, p0, Landroidx/compose/animation/SharedMutableTransformState;->f:F

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_2
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;->k:Landroidx/compose/animation/EnterTransition;

    .line 41
    .line 42
    check-cast p0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->a:Landroidx/compose/animation/Fade;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    iget v0, p0, Landroidx/compose/animation/Fade;->a:F

    .line 51
    .line 52
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
