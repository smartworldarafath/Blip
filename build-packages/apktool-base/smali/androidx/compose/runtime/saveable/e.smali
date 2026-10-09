.class public final synthetic Landroidx/compose/runtime/saveable/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 4
    .line 5
    iget-object p0, p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->j:Ljava/util/Map;

    .line 6
    .line 7
    iget-object p1, p2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->k:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    iget-object p2, p1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/collection/ScatterMap;->a:[J

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    add-int/lit8 v1, v1, -0x2

    .line 17
    .line 18
    if-ltz v1, :cond_4

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    aget-wide v4, p1, v3

    .line 23
    .line 24
    not-long v6, v4

    .line 25
    const/4 v8, 0x7

    .line 26
    shl-long/2addr v6, v8

    .line 27
    and-long/2addr v6, v4

    .line 28
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v6, v8

    .line 34
    cmp-long v6, v6, v8

    .line 35
    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    sub-int v6, v3, v1

    .line 39
    .line 40
    not-int v6, v6

    .line 41
    ushr-int/lit8 v6, v6, 0x1f

    .line 42
    .line 43
    const/16 v7, 0x8

    .line 44
    .line 45
    rsub-int/lit8 v6, v6, 0x8

    .line 46
    .line 47
    move v8, v2

    .line 48
    :goto_1
    if-ge v8, v6, :cond_2

    .line 49
    .line 50
    const-wide/16 v9, 0xff

    .line 51
    .line 52
    and-long/2addr v9, v4

    .line 53
    const-wide/16 v11, 0x80

    .line 54
    .line 55
    cmp-long v9, v9, v11

    .line 56
    .line 57
    if-gez v9, :cond_1

    .line 58
    .line 59
    shl-int/lit8 v9, v3, 0x3

    .line 60
    .line 61
    add-int/2addr v9, v8

    .line 62
    aget-object v10, p2, v9

    .line 63
    .line 64
    aget-object v9, v0, v9

    .line 65
    .line 66
    check-cast v9, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 67
    .line 68
    invoke-interface {v9}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->c()Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-eqz v11, :cond_0

    .line 77
    .line 78
    invoke-interface {p0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_0
    invoke-interface {p0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_2
    shr-long/2addr v4, v7

    .line 86
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    if-ne v6, v7, :cond_4

    .line 90
    .line 91
    :cond_3
    if-eq v3, v1, :cond_4

    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    :cond_5
    return-object p0
.end method
