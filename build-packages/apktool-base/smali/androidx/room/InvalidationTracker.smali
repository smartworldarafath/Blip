.class public Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/InvalidationTracker$Observer;
    }
.end annotation


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase_Impl;

.field public final b:Landroidx/room/TriggerBasedInvalidationTracker;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public final e:Lx9;

.field public final f:Lx9;

.field public final g:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 5
    .line 6
    new-instance v7, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 7
    .line 8
    iget-boolean v8, p1, Landroidx/room/RoomDatabase;->j:Z

    .line 9
    .line 10
    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 11
    .line 12
    const-string v5, "notifyInvalidatedObservers(Ljava/util/Set;)V"

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    const-class v3, Landroidx/room/InvalidationTracker;

    .line 17
    .line 18
    const-string v4, "notifyInvalidatedObservers"

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    move-object v1, p1

    .line 25
    move-object v2, p2

    .line 26
    move-object v3, p3

    .line 27
    move-object v4, p4

    .line 28
    move-object v6, v0

    .line 29
    move-object v0, v7

    .line 30
    move v5, v8

    .line 31
    invoke-direct/range {v0 .. v6}, Landroidx/room/TriggerBasedInvalidationTracker;-><init>(Landroidx/work/impl/WorkDatabase_Impl;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/room/InvalidationTracker;->b:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 35
    .line 36
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Landroidx/room/InvalidationTracker;->c:Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Landroidx/room/InvalidationTracker;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    .line 50
    new-instance v1, Lx9;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-direct {v1, v2, p0}, Lx9;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Landroidx/room/InvalidationTracker;->e:Lx9;

    .line 57
    .line 58
    new-instance v1, Lx9;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-direct {v1, v2, p0}, Lx9;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Landroidx/room/InvalidationTracker;->f:Lx9;

    .line 65
    .line 66
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v1, Ljava/lang/Object;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Landroidx/room/InvalidationTracker;->g:Ljava/lang/Object;

    .line 84
    .line 85
    new-instance v1, Lr1;

    .line 86
    .line 87
    const/16 v2, 0x18

    .line 88
    .line 89
    invoke-direct {v1, v2, p0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, v0, Landroidx/room/TriggerBasedInvalidationTracker;->k:Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->b:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/collections/builders/SetBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_1

    .line 15
    .line 16
    aget-object v4, p1, v3

    .line 17
    .line 18
    iget-object v5, p0, Landroidx/room/TriggerBasedInvalidationTracker;->c:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/util/Set;

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    check-cast v5, Ljava/util/Collection;

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Lkotlin/collections/builders/SetBuilder;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v0}, Lkotlin/collections/SetsKt;->a(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-array v0, v2, [Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, [Ljava/lang/String;

    .line 60
    .line 61
    array-length v0, p1

    .line 62
    new-array v1, v0, [I

    .line 63
    .line 64
    :goto_2
    const/4 v3, 0x0

    .line 65
    if-ge v2, v0, :cond_3

    .line 66
    .line 67
    aget-object v4, p1, v2

    .line 68
    .line 69
    iget-object v5, p0, Landroidx/room/TriggerBasedInvalidationTracker;->f:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    aput v3, v1, v2

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const-string p1, "There is no table with name "

    .line 98
    .line 99
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lu2;->g(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object v0, v3

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    new-instance v0, Lkotlin/Pair;

    .line 109
    .line 110
    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    iget-object p1, v0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, [Ljava/lang/String;

    .line 116
    .line 117
    iget-object v0, v0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, [I

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    .line 128
    .line 129
    invoke-direct {v1, p0, v0, p1, v3}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;[I[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->a:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->b:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    if-ne p0, p1, :cond_1

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method
