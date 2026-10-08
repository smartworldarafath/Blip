.class public abstract Landroidx/compose/runtime/ProvidableCompositionLocal;
.super Landroidx/compose/runtime/CompositionLocal;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/CompositionLocal<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;
.end method

.method public final c(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/ProvidedValue;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/runtime/ProvidedValue;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/ProvidedValue;-><init>(Landroidx/compose/runtime/ProvidableCompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function1;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final d(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;
    .locals 2

    .line 1
    instance-of p0, p2, Landroidx/compose/runtime/DynamicValueHolder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->e:Z

    .line 7
    .line 8
    if-eqz p0, :cond_3

    .line 9
    .line 10
    move-object v0, p2

    .line 11
    check-cast v0, Landroidx/compose/runtime/DynamicValueHolder;

    .line 12
    .line 13
    iget-object p0, v0, Landroidx/compose/runtime/DynamicValueHolder;->a:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    instance-of p0, p2, Landroidx/compose/runtime/StaticValueHolder;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->b:Z

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->f:Ljava/lang/Object;

    .line 34
    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    :cond_1
    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->e:Z

    .line 38
    .line 39
    if-nez p0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->a()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p2, Landroidx/compose/runtime/StaticValueHolder;

    .line 46
    .line 47
    iget-object v1, p2, Landroidx/compose/runtime/StaticValueHolder;->a:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    :goto_0
    move-object v0, p2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    instance-of p0, p2, Landroidx/compose/runtime/ComputedValueHolder;

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->d:Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    check-cast p2, Landroidx/compose/runtime/ComputedValueHolder;

    .line 64
    .line 65
    iget-object v1, p2, Landroidx/compose/runtime/ComputedValueHolder;->a:Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    if-ne p0, v1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_1
    if-nez v0, :cond_7

    .line 71
    .line 72
    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->e:Z

    .line 73
    .line 74
    if-eqz p0, :cond_5

    .line 75
    .line 76
    new-instance p0, Landroidx/compose/runtime/DynamicValueHolder;

    .line 77
    .line 78
    iget-object p2, p1, Landroidx/compose/runtime/ProvidedValue;->f:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object p1, p1, Landroidx/compose/runtime/ProvidedValue;->c:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    sget-object p1, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    .line 85
    .line 86
    :cond_4
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 87
    .line 88
    invoke-direct {v0, p2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Landroidx/compose/runtime/DynamicValueHolder;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_5
    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->d:Lkotlin/jvm/functions/Function1;

    .line 96
    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    new-instance p1, Landroidx/compose/runtime/ComputedValueHolder;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Landroidx/compose/runtime/ComputedValueHolder;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_6
    new-instance p0, Landroidx/compose/runtime/StaticValueHolder;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->a()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Landroidx/compose/runtime/StaticValueHolder;-><init>(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_7
    return-object v0
.end method
