.class public abstract Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v5, Landroid/util/Size;

    .line 2
    .line 3
    const-class v6, Landroid/util/SizeF;

    .line 4
    .line 5
    const-class v0, Ljava/io/Serializable;

    .line 6
    .line 7
    const-class v1, Landroid/os/Parcelable;

    .line 8
    .line 9
    const-class v2, Ljava/lang/String;

    .line 10
    .line 11
    const-class v3, Landroid/util/SparseArray;

    .line 12
    .line 13
    const-class v4, Landroid/os/Binder;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->a:[Ljava/lang/Class;

    .line 20
    .line 21
    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p0, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eq v0, v2, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-ne v0, v2, :cond_5

    .line 37
    .line 38
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->a(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_2
    instance-of v0, p0, Lkotlin/Function;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    instance-of v0, p0, Ljava/io/Serializable;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v0, v1

    .line 60
    :goto_0
    const/4 v2, 0x7

    .line 61
    if-ge v0, v2, :cond_5

    .line 62
    .line 63
    sget-object v2, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->a:[Ljava/lang/Class;

    .line 64
    .line 65
    aget-object v2, v2, v0

    .line 66
    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    :goto_1
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    :goto_2
    return v1
.end method
