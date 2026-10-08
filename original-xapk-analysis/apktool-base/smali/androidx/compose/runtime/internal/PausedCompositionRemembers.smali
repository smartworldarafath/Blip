.class public final Landroidx/compose/runtime/internal/PausedCompositionRemembers;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field public final j:Ljava/util/Set;

.field public final k:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->j:Ljava/util/Set;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    new-array v0, v0, [Landroidx/compose/runtime/RememberObserverHolder;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->k:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->k:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    aget-object v3, v1, v2

    .line 11
    .line 12
    check-cast v3, Landroidx/compose/runtime/RememberObserverHolder;

    .line 13
    .line 14
    check-cast v3, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 15
    .line 16
    iget-object v3, v3, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/compose/runtime/internal/PausedCompositionRemembers;->j:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-interface {v3}, Landroidx/compose/runtime/RememberObserver;->c()V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
