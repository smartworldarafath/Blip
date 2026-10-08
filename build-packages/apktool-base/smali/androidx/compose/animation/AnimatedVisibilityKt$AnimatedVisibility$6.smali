.class final Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;
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
.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Landroidx/compose/animation/EnterTransition;

.field public final synthetic n:Landroidx/compose/animation/ExitTransition;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public constructor <init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->k:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->l:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->m:Landroidx/compose/animation/EnterTransition;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->n:Landroidx/compose/animation/ExitTransition;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->o:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

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
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    const p1, 0x186c07

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    iget-boolean v0, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->k:Z

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->l:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->m:Landroidx/compose/animation/EnterTransition;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->n:Landroidx/compose/animation/ExitTransition;

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->o:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
