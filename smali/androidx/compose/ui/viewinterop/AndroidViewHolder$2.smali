.class public final Landroidx/compose/ui/viewinterop/AndroidViewHolder$2;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic l:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$2;->l:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final c(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    sget-object p2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->J:Lh;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$2;->l:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->m(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final d(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 12

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$2;->l:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->I:Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->l0:Landroidx/compose/ui/node/TailModifierNode;

    .line 10
    .line 11
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->S(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const/16 p1, 0x20

    .line 27
    .line 28
    shr-long v2, v0, p1

    .line 29
    .line 30
    long-to-int v2, v2

    .line 31
    const/4 v3, 0x0

    .line 32
    if-gez v2, :cond_1

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_1
    const-wide v4, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v0, v4

    .line 41
    long-to-int v0, v0

    .line 42
    if-gez v0, :cond_2

    .line 43
    .line 44
    move v0, v3

    .line 45
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->f()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    shr-long v8, v6, p1

    .line 54
    .line 55
    long-to-int v1, v8

    .line 56
    and-long/2addr v6, v4

    .line 57
    long-to-int v6, v6

    .line 58
    iget-wide v7, p0, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 59
    .line 60
    shr-long v9, v7, p1

    .line 61
    .line 62
    long-to-int v9, v9

    .line 63
    and-long/2addr v7, v4

    .line 64
    long-to-int v7, v7

    .line 65
    int-to-float v8, v9

    .line 66
    int-to-float v7, v7

    .line 67
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    int-to-long v8, v8

    .line 72
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    int-to-long v10, v7

    .line 77
    shl-long v7, v8, p1

    .line 78
    .line 79
    and-long v9, v10, v4

    .line 80
    .line 81
    or-long/2addr v7, v9

    .line 82
    invoke-virtual {p0, v7, v8}, Landroidx/compose/ui/node/NodeCoordinator;->S(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v7

    .line 86
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v7

    .line 90
    shr-long p0, v7, p1

    .line 91
    .line 92
    long-to-int p0, p0

    .line 93
    sub-int/2addr v1, p0

    .line 94
    if-gez v1, :cond_3

    .line 95
    .line 96
    move v1, v3

    .line 97
    :cond_3
    and-long p0, v7, v4

    .line 98
    .line 99
    long-to-int p0, p0

    .line 100
    sub-int/2addr v6, p0

    .line 101
    if-gez v6, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move v3, v6

    .line 105
    :goto_0
    if-nez v2, :cond_5

    .line 106
    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    if-nez v1, :cond_5

    .line 110
    .line 111
    if-nez v3, :cond_5

    .line 112
    .line 113
    :goto_1
    return-object p2

    .line 114
    :cond_5
    new-instance p0, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    .line 115
    .line 116
    iget-object p1, p2, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->a:Landroidx/core/graphics/Insets;

    .line 117
    .line 118
    invoke-static {p1, v2, v0, v1, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->l(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p2, p2, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->b:Landroidx/core/graphics/Insets;

    .line 123
    .line 124
    invoke-static {p2, v2, v0, v1, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->l(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    .line 129
    .line 130
    .line 131
    return-object p0
.end method
