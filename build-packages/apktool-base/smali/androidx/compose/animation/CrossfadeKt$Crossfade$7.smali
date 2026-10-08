.class final Landroidx/compose/animation/CrossfadeKt$Crossfade$7;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/animation/core/TransitionInstance;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic p:I


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->k:Landroidx/compose/animation/core/TransitionInstance;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->l:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->m:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->n:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->p:I

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->p:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-object v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->k:Landroidx/compose/animation/core/TransitionInstance;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->l:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->m:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->n:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt;->a(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method
