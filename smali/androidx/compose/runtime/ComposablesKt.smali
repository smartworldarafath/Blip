.class public abstract Landroidx/compose/runtime/ComposablesKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static final b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
    .locals 8

    .line 1
    move-object v1, p0

    .line 2
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const/16 p0, 0xce

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->e:Landroidx/compose/runtime/OpaqueKey;

    .line 7
    .line 8
    invoke-virtual {v1, p0, v0}, Landroidx/compose/runtime/GapComposer;->T(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p0, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, v1, Landroidx/compose/runtime/GapComposer;->I:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->z(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->C()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    instance-of v0, p0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p0, Landroidx/compose/runtime/RememberObserverHolder;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    if-nez p0, :cond_2

    .line 33
    .line 34
    new-instance p0, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;

    .line 35
    .line 36
    new-instance v7, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 37
    .line 38
    new-instance v0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 39
    .line 40
    iget-wide v2, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 41
    .line 42
    iget-boolean v4, v1, Landroidx/compose/runtime/GapComposer;->q:Z

    .line 43
    .line 44
    iget-boolean v5, v1, Landroidx/compose/runtime/GapComposer;->C:Z

    .line 45
    .line 46
    iget-object v6, v1, Landroidx/compose/runtime/GapComposer;->h:Landroidx/compose/runtime/CompositionImpl;

    .line 47
    .line 48
    iget-object v6, v6, Landroidx/compose/runtime/CompositionImpl;->C:Landroidx/compose/runtime/CompositionObserverHolder;

    .line 49
    .line 50
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;-><init>(Landroidx/compose/runtime/GapComposer;JZZLandroidx/compose/runtime/CompositionObserverHolder;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v7, v0}, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;-><init>(Landroidx/compose/runtime/GapComposer$CompositionContextImpl;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0, v7, v0}, Landroidx/compose/runtime/GapRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/GapComposer;->h0(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    check-cast p0, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 64
    .line 65
    iget-object p0, p0, Landroidx/compose/runtime/GapRememberObserverHolder;->a:Landroidx/compose/runtime/RememberObserver;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 71
    .line 72
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->j:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->f:Landroidx/compose/runtime/MutableState;

    .line 79
    .line 80
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 87
    .line 88
    .line 89
    return-object p0
.end method
