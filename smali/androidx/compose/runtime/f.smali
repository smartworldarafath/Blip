.class public final synthetic Landroidx/compose/runtime/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Ljava/util/Set;

.field public final synthetic k:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/f;->j:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/f;->k:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/f;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/f;->j:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/f;->k:Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->b:Landroidx/collection/MutableScatterMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_6

    .line 18
    .line 19
    instance-of v0, p1, Landroidx/collection/MutableScatterSet;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/runtime/f;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 26
    .line 27
    iget-object v0, p1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/collection/ScatterSet;->a:[J

    .line 30
    .line 31
    array-length v1, p1

    .line 32
    add-int/lit8 v1, v1, -0x2

    .line 33
    .line 34
    if-ltz v1, :cond_6

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    move v3, v2

    .line 38
    :goto_0
    aget-wide v4, p1, v3

    .line 39
    .line 40
    not-long v6, v4

    .line 41
    const/4 v8, 0x7

    .line 42
    shl-long/2addr v6, v8

    .line 43
    and-long/2addr v6, v4

    .line 44
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    and-long/2addr v6, v8

    .line 50
    cmp-long v6, v6, v8

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    sub-int v6, v3, v1

    .line 55
    .line 56
    not-int v6, v6

    .line 57
    ushr-int/lit8 v6, v6, 0x1f

    .line 58
    .line 59
    const/16 v7, 0x8

    .line 60
    .line 61
    rsub-int/lit8 v6, v6, 0x8

    .line 62
    .line 63
    move v8, v2

    .line 64
    :goto_1
    if-ge v8, v6, :cond_2

    .line 65
    .line 66
    const-wide/16 v9, 0xff

    .line 67
    .line 68
    and-long/2addr v9, v4

    .line 69
    const-wide/16 v11, 0x80

    .line 70
    .line 71
    cmp-long v9, v9, v11

    .line 72
    .line 73
    if-gez v9, :cond_1

    .line 74
    .line 75
    shl-int/lit8 v9, v3, 0x3

    .line 76
    .line 77
    add-int/2addr v9, v8

    .line 78
    aget-object v9, v0, v9

    .line 79
    .line 80
    check-cast v9, Lkotlinx/coroutines/channels/SendChannel;

    .line 81
    .line 82
    iget-object v10, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 83
    .line 84
    if-nez v10, :cond_0

    .line 85
    .line 86
    new-instance v10, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v10, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 92
    .line 93
    :cond_0
    iget-object v10, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_1
    shr-long/2addr v4, v7

    .line 101
    add-int/lit8 v8, v8, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    if-ne v6, v7, :cond_6

    .line 105
    .line 106
    :cond_3
    if-eq v3, v1, :cond_6

    .line 107
    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    check-cast p1, Lkotlinx/coroutines/channels/SendChannel;

    .line 112
    .line 113
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 114
    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 123
    .line 124
    :cond_5
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p0
.end method
