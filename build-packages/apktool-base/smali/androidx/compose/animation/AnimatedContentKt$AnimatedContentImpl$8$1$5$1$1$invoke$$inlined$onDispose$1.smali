.class public final Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;->c:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1;->c:Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->d:Landroidx/collection/MutableScatterMap;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method
