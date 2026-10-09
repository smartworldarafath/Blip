.class public abstract Landroidx/compose/runtime/RecomposeScopeImpl$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/RecomposeScopeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 29
    .line 30
    invoke-virtual {p0, v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->N([II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->b:[I

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->r(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->g([II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ge v3, v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->h(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->c:[Ljava/lang/Object;

    .line 53
    .line 54
    aget-object v2, v3, v2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 58
    .line 59
    :goto_1
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    const/4 v2, 0x0

    .line 67
    :goto_2
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iput-object p2, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->a:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 70
    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method
