.class final Landroidx/compose/runtime/saveable/SaveableHolder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/saveable/SaverScope;
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/saveable/SaverScope;",
        "Landroidx/compose/runtime/RememberObserver;"
    }
.end annotation


# instance fields
.field public j:Landroidx/compose/runtime/saveable/Saver;

.field public k:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Object;

.field public n:[Ljava/lang/Object;

.field public o:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

.field public final p:Landroidx/compose/runtime/saveable/c;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->j:Landroidx/compose/runtime/saveable/Saver;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->k:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->l:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->m:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->n:[Ljava/lang/Object;

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/runtime/saveable/c;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroidx/compose/runtime/saveable/c;-><init>(Landroidx/compose/runtime/saveable/SaveableHolder;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->p:Landroidx/compose/runtime/saveable/c;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->o:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->o:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->k:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->o:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->p:Landroidx/compose/runtime/saveable/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/saveable/c;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->b(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    instance-of v0, v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 30
    .line 31
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eq v0, v1, :cond_0

    .line 50
    .line 51
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eq v0, v1, :cond_0

    .line 60
    .line 61
    const-string v0, "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "MutableState containing "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable()."

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-static {v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->l:Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v0, v2, v1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Landroidx/compose/runtime/saveable/SaveableHolder;->o:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 103
    .line 104
    :cond_3
    return-void

    .line 105
    :cond_4
    const-string p0, "entry("

    .line 106
    .line 107
    const-string v0, ") is not null"

    .line 108
    .line 109
    invoke-static {p0, v1, v0}, Lfe;->u(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
