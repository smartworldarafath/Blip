.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1;->m:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

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
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 2
    .line 3
    new-instance p1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1;->k:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1;->m:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p0}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
